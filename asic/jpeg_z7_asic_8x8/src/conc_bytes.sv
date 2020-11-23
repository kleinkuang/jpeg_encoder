// File:    conc_bytes.sv
// Author:  Lei Kuang
// Date:    16th July 2020
// @ Imperial College London

// Concatenate variable-length binary code into bytes
// - input:  0~24 bits (variable length)
// - output: 32   bits (fixed length)

module conc_bytes
(
    input  logic        clk,
    input  logic        nrst,       
    
    input  logic [5:0]  in_len,     // Input length
    input  logic [23:0] in_bin,     // Input binary code, right alligned
    input  logic        in_valid,   // Input valid
    input  logic        in_eoi,     // End of image
    
    output logic [31:0] out_bin,    // Output binary code
    output logic        out_valid   // Output valid
);

logic [5:0]  buff_len;      // Length of remaining binary code after concatenation
logic [31:0] buff_bin;      // Left alligned
logic [23:0] buff_eoi;

logic [4:0]  alin_len;      // Length of shift-in bits for left alignment
logic [5:0]  sfin_len;      // Length of shift-in bits for concatenation
logic [31:0] sfin_bin;      // Shift-in bits
logic [23:0] sfrm_bin;      // Remaining bits that are not shifted in for concatenation

logic [55:0] conc_msk;      // Concatenation Mask
logic [5:0]  conc_len;
logic [31:0] conc_bin;

logic        out_eoi;
logic [1:0]  out_eoi_cnt;

// ----------------------------------------------------------------
// Append 1s
// ----------------------------------------------------------------
// Append ones to EOB (4, 1010) if not byte-aligned when end of image

logic [2:0]  app1s_len;     // No. of ones to append
logic [23:0] app1s_bin;

logic [5:0]  in_app_reg_len;
logic [23:0] in_app_reg_bin;
logic        in_app_reg_valid;
logic        in_app_reg_eoi;

// in_len[2:0] - sfin_len + app1s_len = 8
assign app1s_len = sfin_len[2:0] + 4'd8 - in_len[2:0];
assign app1s_bin = 24'b1111_1111_1111_1111_1111_1111;

// Output register
/*always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        in_app_reg_len   <= '0;
        in_app_reg_bin   <= '0;
        in_app_reg_valid <= '0;
        in_app_reg_eoi   <= '0;
    end
    else begin
        in_app_reg_valid <= in_valid;
        if(in_valid) begin
            in_app_reg_len <= ~in_eoi ? in_len : (in_len + {3'b000, app1s_len});
            in_app_reg_bin <= ~in_eoi ? in_bin : (((in_bin << app1s_len) | ~(app1s_bin << app1s_len)));
            in_app_reg_eoi <= in_eoi;
        end
    end*/

assign in_app_reg_valid = in_valid;
assign in_app_reg_len   = ~in_eoi ? in_len : (in_len + {3'b000, app1s_len});
assign in_app_reg_bin   = ~in_eoi ? in_bin : (((in_bin << app1s_len) | ~(app1s_bin << app1s_len)));
assign in_app_reg_eoi   = in_eoi & in_valid;
    
// ----------------------------------------------------------------
// Input Shifter
// ----------------------------------------------------------------
// Shift input
assign alin_len = 5'd24 - in_app_reg_len;
assign sfin_len = 6'd32 - buff_len;
assign conc_msk = {32'd0, in_app_reg_bin} << (sfin_len + alin_len);

assign sfin_bin = conc_msk[55:24];
assign sfrm_bin = conc_msk[23:0];   // Remain bits

// Concatenation
assign conc_len   = in_app_reg_len >= sfin_len ? 6'd32 : (buff_len + in_app_reg_len);
assign conc_bin   = buff_bin | sfin_bin;
assign conc_valid = conc_len[5] & in_app_reg_valid;

// Update buffer
always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        buff_len <= '0;
        buff_bin <= '0;
        buff_eoi <= '0;
    end
    else begin
        if(in_app_reg_eoi) begin
            buff_len <= '0;
            buff_bin <= '0;
            buff_eoi <= sfrm_bin[23:0];
        end
        else begin
            if(in_app_reg_valid) begin
                buff_len <= conc_valid ? (in_app_reg_len - sfin_len) : conc_len;
                buff_bin <= conc_valid ? {sfrm_bin, 8'd0}            : conc_bin;
            end
        end
    end
    
// End of image
// - last for two cycles in order to output flag 0x00000000
//   meantime, the buffer is impossible to become full as 8 + 16 < 32
always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        out_eoi_cnt <= '0;
    end
    else begin
        if(in_app_reg_eoi | out_eoi_cnt!='0)
            out_eoi_cnt <= out_eoi_cnt==2'd2 ? '0 : out_eoi_cnt + 2'd1;       
    end
    
assign out_eoi = out_eoi_cnt!='0;

// ----------------------------------------------------------------
// Output
// ----------------------------------------------------------------
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        out_valid <= '0;
    else
        out_valid <= conc_valid | in_app_reg_eoi | out_eoi;

always_ff @ (posedge clk)
    if(~out_eoi)
        out_bin <= conc_bin;
    else
        if(out_eoi_cnt==2'd1)
            out_bin <= {buff_eoi, 8'd0};
        else
            out_bin <= '0;

// ----------------------------------------------------------------
// Scenarios
// ----------------------------------------------------------------
// When end of image
// 1) buff_len + in_app_reg_len = 32
//    output 32-bit data
//    output all 0s

// 2) buff_len + in_app_reg_len < 32
//    output (buff_bin + in_app_reg_bin)
//    output all 0s

// 3) buff_len + in_app_reg_len >32
//    output 32-bit data
//    output 8-bit data + 24-bit 0s

endmodule
