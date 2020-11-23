// File:    float_mul_nb.sv
// Author:  Lei Kuang
// Date:    13th November 2020
// @ Imperial College London

// Non-blocking Float-Point Multipler (Single-Precision)
// - latency: 16 clock cycles

// IEEE 754 Format
// signed + exponent + mantissa
// 1b     + 8b       + 23b

// Normalized
// (-1)^sign * (1.frac) * 2^(exp-127)

// Denormalized
// (-1)^sign * (0.frac) * 2^(exp-126)

// Exception
// exp = 0xFF frac  = '0: Infinity
//            frac ~= '0: NaN

// Round
// - round to nearest even

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// Current design does not support the following:
// - Denormalized number
// - Exception
//   a) Overflow
//   b) Underflow
//   c) Infinity
//   d) NaN
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

module float_mul_nb
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [31:0] din1,
    input  logic [31:0] din2,
    input  logic        din_valid,
    output logic [31:0] dout,
    output logic        dout_valid
);

// -------------------------------------------------------------
// Input Assignment
// -------------------------------------------------------------
logic        sig1, sig2;
logic [7:0]  exp1, exp2;
logic [22:0] man1, man2;

assign {sig1, sig2} = {din1[31]   , din2[31]};
assign {exp1, exp2} = {din1[30:23], din2[30:23]};
assign {man1, man2} = {din1[22:0],  din2[22:0]};

// -------------------------------------------------------------
// Sign & Exponent
// -------------------------------------------------------------
logic       sig_int;

logic [8:0] exp_new;
logic [7:0] exp_int;

assign exp_new = {1'b0, exp1} + {1'b0, exp2} - 8'd127;

shift_reg #
(
    .WIDTH(8),
    .STAGE(14)
) exp_sf
(
    .clk  (clk),
    .din  (exp_new[7:0]),
    .dout (exp_int)
);

shift_reg #
(
    .WIDTH(1),
    .STAGE(15)
) sig_sf
(
    .clk  (clk),
    .din  (sig1 ^ sig2),
    .dout (sig_int)
);

// -------------------------------------------------------------
// Fixed-point Multiplication
// -------------------------------------------------------------
logic [51:0] fix_pro_int;
logic [47:0] fix_pro;
logic        fix_valid;

fixed_mul_nb #
(
    .WIDTH(26) // Latency: WIDTH/2 + 1
) mul
(
    .clk        (clk),
    .nrst       (nrst),
    .din1       ({2'b0, exp1=='0 ? 1'b0 : 1'b1, man1}),
    .din2       ({2'b0, exp2=='0 ? 1'b0 : 1'b1, man2}),
    .din_valid  (din_valid),
    .dout       (fix_pro_int),
    .dout_valid (fix_valid)
);

// Booth algorithm requests signed inputs
// - as we have appended 2 bits as sign (+) and make it even,
//   the most siginificant 4 bits will be all zeros
assign fix_pro = fix_pro_int[47:0];

// -------------------------------------------------------------
// Round
// -------------------------------------------------------------
logic [47:0] rod_fix;
logic [24:0] rod_thw;
logic [22:0] rod_man;
logic [7:0]  rod_exp;
logic        rod_zero;
logic [2:0]  rod_grs;
logic        rod_up_int;
logic        rod_up;
logic        rod_valid;

assign rod_fix    = fix_pro << (fix_pro[47] ? 2'd1 : 2'd2);
assign rod_thw    = rod_fix[24:0];
assign rod_grs    = {rod_fix[24:23], rod_fix[22:0]!='0};
assign rod_up_int = rod_grs[2] & (rod_grs[1:0]==2'd00 ? rod_fix[25] : 1'b1);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        rod_valid <= '0;
    else
        rod_valid <= fix_valid;

always_ff @ (posedge clk)
    if(fix_valid) begin
        rod_man  <= rod_fix[47:25];
        rod_exp  <= fix_pro[47] ? exp_int + 8'd1 : exp_int;
        rod_zero <= fix_pro=='0;
        rod_up   <= rod_up_int;
    end

// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;
logic [23:0] norm_man_int;
logic        norm_zero;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= rod_valid;
        
assign norm_man_int = {1'b0, rod_man} + rod_up;

always_ff @ (posedge clk)
    if(rod_valid) begin
        norm_sig  <= rod_zero ? '0 : sig_int;
        norm_exp  <= rod_zero ? '0 : rod_exp + norm_man_int[23];
        norm_man  <= rod_zero ? '0 : norm_man_int[22:0];
    end

assign dout = {norm_sig, norm_exp, norm_man};

endmodule
