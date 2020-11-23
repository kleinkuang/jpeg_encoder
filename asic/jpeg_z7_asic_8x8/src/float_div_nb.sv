// File:    float_div_nb.sv
// Author:  Lei Kuang
// Date:    17th November 2020
// @ Imperial College London

// Non-blocking Float-Point Divider (Single-Precision)
// - latency: 28 clock cycles

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
// - round to zero

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// Current design does not support the following:
// - Denormalized number
// - Exception
//   a) Overflow
//   b) Underflow
//   c) Infinity
//   d) NaN
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

module float_div_nb
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

logic [23:0] div_end;
logic [23:0] div_sor;
logic        div_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        div_valid <= '0;
    else
        div_valid <= din_valid;

always_ff @ (posedge clk) begin
        div_end <= {exp1!='0, man1};
        div_sor <= {exp2!='0, man2};
end
    
// -------------------------------------------------------------
// Sign & Exponent
// -------------------------------------------------------------
logic       sig_int;

logic [8:0] exp_new;
logic [7:0] exp_int;

assign exp_new = {1'b0, exp1} - {1'b0, exp2} + 9'd127;

shift_reg #
(
    .WIDTH(8),
    .STAGE(26)
) exp_sf
(
    .clk  (clk),
    .din  (exp_new[7:0]),
    .dout (exp_int)
);

shift_reg #
(
    .WIDTH(1),
    .STAGE(26)
) sig_sf
(
    .clk  (clk),
    .din  (sig1 ^ sig2),
    .dout (sig_int)
);

// -------------------------------------------------------------
// Long Division based Unsigned Divider
// -------------------------------------------------------------
logic [24:0] fix_quo;
logic        fix_valid;

fixed_div_nb #
(
    .WIDTH(25),
    .STEPS(25)
) div
(
    .clk        (clk),
    .nrst       (nrst),
    .dividend   ({1'b0, div_end}),  // 1S + 24Mantissa
    .divisor    ({1'b0, div_sor}),
    .din_valid  (div_valid),
    .quotient   (fix_quo),
    .dout_valid (fix_valid)
);

// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic [24:0] norm_fix;
logic        norm_zero;

logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;

assign norm_zero = fix_quo=='0;
assign norm_fix  = fix_quo << (fix_quo[24] ? 2'd1 : 2'd2);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= fix_valid;

always_ff @ (posedge clk) begin
    norm_sig  <= norm_zero ? '0 : sig_int;
    norm_exp  <= norm_zero ? '0 : (exp_int[7:0] - 8'd1 + fix_quo[24]);
    norm_man  <= norm_zero ? '0 : norm_fix[24:2];
end

assign dout = {norm_sig, norm_exp, norm_man};

/*
// -------------------------------------------------------------
// Round to the nearest even version
// -------------------------------------------------------------
parameter PRE = 29; // Division Precision
// Control the division precision, mainly for purpose of rounding
// Min: 26 | Max: 48
// - Xilinx IP is based on rounding to the nearest even
// - !!! When PRE = 48, rounding to the nearest even can be achieved
//   !!! however, it utlizes significant resources
//   !!! which is almost doubled as when PRE = 27 for just 1 bit...
// -------------------------------------------------------------
// Sign & Exponent
// -------------------------------------------------------------
logic       sig_int;
logic [8:0] exp_int;

shift_reg #
(
    .WIDTH(9),
    .STAGE(PRE+2)
) exp_sf
(
    .clk  (clk),
    .din  ({1'b0, exp1} - {1'b0, exp2} + 9'd127),
    .dout (exp_int)
);

shift_reg #
(
    .WIDTH(1),
    .STAGE(PRE+3)
) sig_sf
(
    .clk  (clk),
    .din  (sig1 ^ sig2),
    .dout (sig_int)
);

// -------------------------------------------------------------
// Long Division based Unsigned Divider
// -------------------------------------------------------------
logic [PRE-1:0] fix_quo;
logic        fix_valid;

fixed_div_nb #
(
    .WIDTH(25),
    .STEPS(PRE)
) div
(
    .clk        (clk),
    .nrst       (nrst),
    .dividend   ({1'b0, div_end}),  // 1S + 24Mantissa
    .divisor    ({1'b0, div_sor}),
    .din_valid  (div_valid),
    .quotient   (fix_quo),
    .dout_valid (fix_valid)
);

// -------------------------------------------------------------
// Round
// -------------------------------------------------------------
logic [PRE-1:0] rod_fix;
logic [2:0]  rod_grs;
logic        rod_up_int;

logic [22:0] rod_man;
logic [7:0]  rod_exp;
logic        rod_zero;
logic        rod_up;
logic        rod_valid;

assign rod_fix    = fix_quo << (fix_quo[PRE-1] ? 2'd1 : 2'd2);
assign rod_grs    = {rod_fix[PRE-24:PRE-25], rod_fix[PRE-26:0]!='0};
assign rod_up_int = rod_grs[2] & (rod_grs[1:0]==2'd00 ? rod_fix[4] : 1'b1);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        rod_valid <= '0;
    else
        rod_valid <= fix_valid;

always_ff @ (posedge clk)
    if(fix_valid) begin
        rod_man  <= rod_fix[PRE-1:PRE-23];
        rod_exp  <= fix_quo[PRE-1] ? exp_int[7:0] : (exp_int[7:0] - 8'd1);
        rod_zero <= fix_quo=='0;
        rod_up   <= rod_up_int;
    end

// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;
logic [23:0] norm_man_int;

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
*/

endmodule
