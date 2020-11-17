// File:    float_div_nb.sv
// Author:  Lei Kuang
// Date:    17th November 2020
// @ Imperial College London

// Non-blocking Float-Point Divider (Single-Precision)
// - latency: ? clock cycles

// IEEE 754 Format
// Signed + Exponent + Fraction
// 1b     + 8b       + 23b

// Normalized
// (-1)^sign * (1.frac) * 2^(exp-127)

// Denormalized
// (-1)^sign * (0.frac) * 2^(exp-126)

// Exception
// exp = 0xFF frac  = '0: Infinity
//            frac ~= '0: NaN

// Round
// round to zero

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

logic [24:0] div_end;
logic [24:0] div_sor;
logic        div_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        div_valid <= '0;
    else
        div_valid <= din_valid;

always_ff @ (posedge clk)
    if(din_valid) begin
        div_end <= {1'b0, exp1=='0 ? 1'b0 : 1'b1, man1};
        div_sor <= {1'b0, exp2=='0 ? 1'b0 : 1'b1, man2};
    end

// -------------------------------------------------------------
// Sign & Exponent
// -------------------------------------------------------------
logic       sig_int;
logic [9:0] exp_int;

shift_reg #
(
    .WIDTH(10),
    .STAGE(27)
) exp_sf
(
    .clk  (clk),
    .din  ({2'b0, exp1} - {2'b0, exp2} + 8'd127),
    .dout (exp_int)
);

shift_reg #
(
    .WIDTH(1),
    .STAGE(27)
) sig_sf
(
    .clk  (clk),
    .din  (sig1 ^ sig2),
    .dout (sig_int)
);

// -------------------------------------------------------------
// Long Division based Unsigned Divider
// -------------------------------------------------------------
logic [24:0] quo;
logic        quo_valid;

fixed_div_nb #
(
    .WIDTH(25),
    .STEPS(25)
) div
(
    .clk        (clk),
    .nrst       (nrst),
    .dividend   (div_end),
    .divisor    (div_sor),
    .din_valid  (div_valid),
    .quotient   (quo),
    .dout_valid (quo_valid)
);

// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic [4:0]  norm_lnz;
logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;
logic [27:0] norm_man_int;
//logic [2:0]  norm_grs_int;
logic        norm_zero_int;
logic        norm_valid;

lead_nz #
(
    .WIDTH(25)
) lead_nz_inst
(
    .din  (quo),
    .dout (norm_lnz)
);

assign norm_man_int  = quo << (norm_lnz + 7'd1);
assign norm_zero_int = quo=='0;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        norm_valid <= '0;
    else
        norm_valid <= quo_valid;

always_ff @ (posedge clk)
    if(quo_valid) begin
        norm_sig <= norm_zero_int ? '0 : sig_int;
        norm_exp <= norm_zero_int ? '0 : (exp_int - norm_lnz);
        norm_man <= norm_zero_int ? '0 : norm_man_int[24:2];// + norm_grs_int[2];
    end

assign dout = {norm_sig, norm_exp, norm_man[22:0]};
assign dout_valid = norm_valid;

endmodule
