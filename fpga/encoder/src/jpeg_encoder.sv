// File:    jpeg_encoder.sv
// Author:  Lei Kuang
// Date:    15th July 2020
// @ Imperial College London

module jpeg_encoder
(
    input  logic        clk,
    input  logic        nrst,
    
    input  logic [7:0]  din,
    input  logic        din_valid,
    
    output logic [31:0] dout,
    output logic        dout_valid
);

// ----------------------------------------------------------------
// Run-length Encoding
// ----------------------------------------------------------------
// The predictor for dc differential coding
logic [7:0] pred;   // DC predictor
logic [5:0] pcnt;   // Pixel counter 0..63
logic [7:0] mcnt;   // MCU counter   0..255 
logic       isac;   // Current data is ac component

assign isac = pcnt!='0;

// MCU index
always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst) begin
        pcnt <= '0;
        mcnt <= '0;
    end
    else begin
        if(din_valid) begin
            pcnt <= pcnt + 6'd1;        // Count 64 MCU pixels
            if(pcnt=='1)
                mcnt <= mcnt + 8'd1;    // Count 256 MCUs
        end
    end
end

// Update predictor
// - clear every 256 MCUs for image size of 128x128
always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        pred <= '0;
    else
        if(din_valid & ~isac)
            pred <= mcnt=='1 ? '0 : din;
end

// Run-length encoding
logic [3:0]  rle_rrrr;
logic [7:0]  rle_magn;
logic        rle_isdc;
logic        rle_eoi;
logic        rle_valid;

rle rle_inst
(
    .clk        (clk),
    .nrst       (nrst),
    
    .data       (isac ? din : din - pred),
    .data_valid (din_valid),
    
    .rrrr       (rle_rrrr),
    .magn       (rle_magn),
    .isdc       (rle_isdc),
    .eoi        (rle_eoi),
    .rrmg_valid (rle_valid)
);


// ----------------------------------------------------------------
// Encode Magnitude
// ----------------------------------------------------------------
logic [3:0] em_ssss;
logic [7:0] em_code;

// Encode magnitude
en_magn en_magn_inst
(
    .magn (rle_magn),
    .ssss (em_ssss),
    .code (em_code)
);

// ----------------------------------------------------------------
// Huffman Encoding (look-up table)
// ----------------------------------------------------------------
logic [3:0] hf_rrrr;
logic [3:0] hf_ssss;
logic [7:0] hf_code;
logic       hf_isdc;
logic       hf_eoi;
logic       hf_valid;

// Buffer input
always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst) begin
        hf_rrrr  <= '0;
        hf_ssss  <= '0;
        hf_code  <= '0;
        hf_isdc  <= '0;
        hf_valid <= '0;
    end
    else begin
        hf_rrrr  <= rle_rrrr;
        hf_ssss  <= em_ssss;
        hf_code  <= em_code;
        hf_isdc  <= rle_isdc;
        hf_eoi   <= rle_eoi;
        hf_valid <= rle_valid;
    end
end

// Look-up table
logic [3:0]  dcss_len;
logic [15:0] dcss_bin;
logic [4:0]  acrs_len;
logic [15:0] acrs_bin;

dc_lut dc_lut_inst
(
    .ssss (hf_ssss),
    .len  (dcss_len),
    .bin  (dcss_bin)
);

ac_lut ac_lut_inst
(
    .rrrr (hf_rrrr),
    .ssss (hf_ssss),
    .len  (acrs_len),
    .bin  (acrs_bin)
);

// Multiplexer and buffer output
// - Output multiplexer
logic [4:0]  size_len;
logic [15:0] size_bin;
logic [3:0]  code_len;
logic [7:0]  code_bin;
logic        code_eoi;
logic        code_valid;

logic [7:0]  code_bin_s; // for debug only

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst) begin
        size_len   <= '0;
        size_bin   <= '0;
        code_len   <= '0;
        code_bin   <= '0;
        code_bin_s <= '0;
        code_eoi   <= '0;
        code_valid <= '0;
    end
    else begin
        code_valid <= hf_valid;
        if(hf_valid) begin
            size_len   <= hf_isdc ? dcss_len : acrs_len;
            size_bin   <= hf_isdc ? dcss_bin : acrs_bin;
            code_len   <= hf_ssss;
            code_bin   <= hf_code;
            code_eoi   <= hf_eoi;
            code_bin_s <= hf_code >> (8'd8-hf_ssss);
        end
    end
end

// ----------------------------------------------------------------
// Size and Code Concatenation
// ----------------------------------------------------------------
// Concatenate size bin and code bin
// size_bin: right alignment
// code_bin: left alignment

logic [23:0] conc_bin;
logic [5:0]  conc_len;      // 0..32
logic        conc_valid;
logic        conc_eoi;

// Concatenation
always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        conc_bin   <= '0;
        conc_len   <= '0;
        conc_eoi   <= '0;
        conc_valid <= '0;
    end
    else begin
        conc_valid <= code_valid;

        if(code_valid) begin
            conc_bin <= {size_bin, code_bin} >> (8'd8 - code_len);
            conc_len <= {1'd0, size_len} + code_len;
            conc_eoi <= code_eoi;
        end
        // Add 1-bit redundancy to size_len for future development
        // e.g., append 0x00 to 0xFF before entering next stage.
    end
    
// ----------------------------------------------------------------
// Byte Concatenation
// ----------------------------------------------------------------
conc_bytes conc_inst
(
    .clk        (clk),
    .nrst       (nrst),       
    
    .in_len     (conc_len),
    .in_bin     (conc_bin),
    .in_valid   (conc_valid),
    .in_eoi     (conc_eoi & conc_valid),
    
    .out_bin    (dout),
    .out_valid  (dout_valid)
);

endmodule
