// File:    float_mul_nb.sv
// Author:  Lei Kuang
// Date:    13th November 2020
// @ Imperial College London

// Non-blocking Float-Point Multipler (Single-Precision)
// - Latency: 16 clock cycles

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
logic [8:0] exp_int;
logic [8:0] exp_debug;

shift_reg #
(
    .WIDTH(9),
    .STAGE(13)
) exp_sf
(
    .clk  (clk),
    .din  ({1'b0, exp1} + {1'b0, exp2} - 8'd127),
    .dout (exp_int)
);

shift_reg #
(
    .WIDTH(1),
    .STAGE(14)
) sig_sf
(
    .clk  (clk),
    .din  (sig1 ^ sig2),
    .dout (sig_int)
);

assign exp_debug = exp_int - 8'd127;

// -------------------------------------------------------------
// Fixed-point Multiplication
// -------------------------------------------------------------
logic [47:0] fix_pro;
logic        fix_pro_valid;
logic        fix_zero;

fixed_mul_nb #
(
    .WIDTH(26)
) mul
(
    .clk        (clk),
    .nrst       (nrst),
    .din1       ({2'b0, exp1=='0 ? 1'b0 : 1'b1, man1}),
    .din2       ({2'b0, exp2=='0 ? 1'b0 : 1'b1, man2}),
    .din_valid  (din_valid),
    .dout       (fix_pro),
    .dout_valid (fix_pro_valid)
);

assign fix_zero = fix_pro=='0;

// -------------------------------------------------------------
// Round
// -------------------------------------------------------------
logic [22:0] round;
logic [7:0]  round_exp;
logic        round_zero;
logic        round_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        round_valid <= '0;
    else
        round_valid <= fix_pro_valid;

always_ff @ (posedge clk)
    if(fix_pro_valid) begin
        if(fix_pro[47]) begin
            round <= fix_pro[23] & fix_pro[22:0]!='0 ? fix_pro[46:24] + 24'd1 : fix_pro[46:24];
            round_exp <= exp_int + 8'd1;
        end
        else begin
            round <= fix_pro[22] & fix_pro[21:0]!='0 ? fix_pro[45:23] + 24'd1 : fix_pro[45:23];
            round_exp <= exp_int;
        end
        round_zero <= fix_zero;
    end

// -------------------------------------------------------------
// Normalization
// - further development on denormalized number and expcetion
//   should start here
// -------------------------------------------------------------
logic        sig_final;
logic [7:0]  exp_final;
logic [22:0] man_final;
logic        is_zero;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= round_valid;

always_ff @ (posedge clk)
    if(round_valid) begin
        sig_final <= sig_int;
        exp_final <= round_exp;
        man_final <= round;
        is_zero   <= round_zero;
    end
    
assign dout = is_zero ? '0 : {sig_final, exp_final, man_final};

endmodule
