// File:    fdct.sv
// Author:  Lei Kuang
// Date:    17th June 2020
// @ Imperial College London

// Forward 2-D Discrete Cosine Transform for JPEG

module fdct 
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid
);

// ----------------------------------------------------------------
// Minimum Coded Unit
// ----------------------------------------------------------------
logic [7:0] mcu_col [7:0];
logic       mcu_col_valid;

mcu_8x8 mcu_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (din),
    .din_valid  (din_valid),
    .dout       (mcu_col),
    .dout_valid (mcu_col_valid)
);

// ----------------------------------------------------------------
// Level shift + Fixed to Float Conversion
// ----------------------------------------------------------------
logic [31:0] ls_col [7:0];
logic        ls_col_valid;

level_shift level_shift_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (mcu_col),
    .din_valid  (mcu_col_valid),
    .dout       (ls_col),
    .dout_valid (ls_col_valid)
);

// ----------------------------------------------------------------
// DCT Kernel
// ----------------------------------------------------------------
logic [2:0]  dct_row_sel;
logic [2:0]  dct_col_sel;
logic [2:0]  dct_row_sel_cnt;
logic [31:0] dct_row_vec [7:0];
logic [31:0] dct_col_vec [7:0];

dct_lut dct_lut_inst
(
    .row_sel (dct_row_sel),
    .col_sel (dct_col_sel),
    .row_vec (dct_row_vec),
    .col_vec (dct_col_vec)
);

// DCT Row Vector Control
always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        dct_row_sel     <= '0;
        dct_row_sel_cnt <= '0;
    end
    else begin
        if(ls_col_valid) begin
            dct_row_sel_cnt <= dct_row_sel_cnt + 3'd1;
            
            if(dct_row_sel_cnt=='1)
                dct_row_sel <= dct_row_sel + 3'd1;
        end
    end

// ----------------------------------------------------------------
// Dot Product for DCT A * F
// ----------------------------------------------------------------
logic [31:0] af;
logic        af_valid;

dot_pro dot_pro_af
(
    .clk        (clk),
    .nrst       (nrst),
    .row_vec    (dct_row_vec),
    .col_vec    (ls_col),
    .din_valid  (ls_col_valid),
    .dout       (af),
    .dout_valid (af_valid)
);

// ----------------------------------------------------------------
// Buffer for DCT A * F
// ----------------------------------------------------------------
logic [3:0]  af_cnt; // 0..8

logic [31:0] af_vec_sg [7:0];
logic        af_vec_sg_valid;

logic [31:0] af_vec [7:0];
logic        af_vec_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        af_cnt <= '0;
    else
        if(af_valid)
            af_cnt <= af_cnt==4'd8 ? 4'd1 : af_cnt + 4'd1;
        else
            if(af_cnt==4'd8)
                af_cnt <= 4'd0;
    
always_ff @ (posedge clk)
    if(af_valid)
        af_vec_sg <= {af, af_vec_sg[7:1]};

assign af_vec_sg_valid = af_cnt==4'd8;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        af_vec_valid <= '0;
    else
        af_vec_valid <= af_vec_sg_valid;

always_ff @ (posedge clk)
    if(af_vec_sg_valid)
        af_vec <= af_vec_sg;
    
// ----------------------------------------------------------------
// Dot Product for DCT (A * F) * AT
// ----------------------------------------------------------------
// DCT Column Vector Control
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dct_col_sel <= '0;
    else
        if(af_vec_valid | dct_col_sel!='0) // Kick off dct_col_sel
            dct_col_sel <= dct_col_sel + 3'd1;

logic [31:0] afat;
logic        afat_valid;

dot_pro dot_pro_afat
(
    .clk        (clk),
    .nrst       (nrst),
    .row_vec    (af_vec),
    .col_vec    (dct_col_vec),
    .din_valid  (af_vec_valid | dct_col_sel!='0),
    .dout       (afat),
    .dout_valid (afat_valid)
);

// ----------------------------------------------------------------
// Quantization
// ----------------------------------------------------------------
qnt qnt_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (afat),
    .din_valid  (afat_valid),
    .dout       (dout),
    .dout_valid (dout_valid)
);
        
endmodule
