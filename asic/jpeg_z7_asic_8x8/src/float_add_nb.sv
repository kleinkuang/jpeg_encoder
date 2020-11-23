// File:    float_add_nb.sv
// Author:  Lei Kuang
// Date:    16th November 2020
// @ Imperial College London

// Non-blocking Float-Point Adder (Single-Precision)
// - Latency: 6 clock cycles

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
// - round to the nearest even

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// Current design does not support the following:
// - Denormalized number
// - Exception
//   a) Overflow
//   b) Underflow
//   c) Infinity
//   d) NaN
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

module float_add_nb
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

assign {sig1, sig2} = {din1[31],    din2[31]};
assign {exp1, exp2} = {din1[30:23], din2[30:23]};
assign {man1, man2} = {din1[22:0],  din2[22:0]};

// -------------------------------------------------------------
// Input Exchange
// -------------------------------------------------------------
logic [8:0]  in_diff;
logic        in_exchg;

logic        in_sig;
logic        in_sigx;
logic [7:0]  in_exp;
logic [23:0] in_man1;
logic [23:0] in_man2;
logic        in_valid;
logic [7:0]  in_shift;

assign in_diff  = {1'b0, exp1} - {1'b0, exp2};
assign in_exchg = in_diff[8];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        in_valid <= '0;
    else
        in_valid <= din_valid;

always_ff @ (posedge clk) begin
    in_sig   <= in_exchg ? sig2 : sig1;
    in_sigx  <= sig1 ^ sig2;
    in_exp   <= in_exchg ? exp2 : exp1;
    in_man1  <= in_exchg ? {exp2!='0, man2} : {exp1!='0, man1};
    in_man2  <= in_exchg ? {exp1!='0, man1} : {exp2!='0, man2};
    in_shift <= in_exchg ? (exp2 - exp1) : (exp1 - exp2);
end

// -------------------------------------------------------------
// Input Shift
// -------------------------------------------------------------
logic [47:0] sf_man2_int;
logic [2:0]  sf_grs_int;

logic        sf_sig;
logic        sf_sigx;
logic [7:0]  sf_exp;
logic [23:0] sf_man1; // 24M
logic [26:0] sf_man2; // 24M + 3GRS
logic        sf_valid;

assign sf_man2_int = {in_man2, 24'b0} >> (in_shift>8'd24 ? 8'd24 : in_shift);
assign sf_grs_int  = {sf_man2_int[23:22], sf_man2_int[21:0]!='0};

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        sf_valid <= '0;
    else
        sf_valid <= in_valid;

always_ff @ (posedge clk) begin
    sf_sig   <= in_sig;
    sf_sigx  <= in_sigx;
    sf_exp   <= in_exp;
    sf_man1  <= in_man1;
    sf_man2  <= {sf_man2_int[47:24], sf_grs_int};
end
    
// -------------------------------------------------------------
// Pre Addition
// -------------------------------------------------------------
logic        pre_sig;
logic [7:0]  pre_exp;
logic [28:0] pre_augend;    // 1S + 1C + 24M + 3'b0
logic [28:0] pre_addend;    // 1S + 1C + 24M + 3GRS
logic        pre_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        pre_valid <= '0;
    else
        pre_valid <= sf_valid;

always_ff @ (posedge clk) begin
    pre_sig    <= sf_sig;
    pre_exp    <= sf_exp;
    pre_augend <= {2'b0, sf_man1, 3'b0};
    pre_addend <= sf_sigx ? (~{2'b0, sf_man2} + 29'd1) : {2'b0, sf_man2};
end
    
// -------------------------------------------------------------
// Addition
// -------------------------------------------------------------
logic        add_sig;
logic [7:0]  add_exp;
logic [28:0] add_sum;
logic        add_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        add_valid <= '0;
    else
        add_valid <= pre_valid;

always_ff @ (posedge clk) begin
    add_sig  <= pre_sig;
    add_exp  <= pre_exp;
    add_sum  <= pre_augend + pre_addend;
end
    
// -------------------------------------------------------------
// Post Addition
// -------------------------------------------------------------
logic        post_inv_int;

logic        post_sig;
logic [7:0]  post_exp;
logic [28:0] post_sum;
logic        post_valid;

assign post_inv_int = add_sum[28];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        post_valid <= '0;
    else
        post_valid <= add_valid;

always_ff @ (posedge clk) begin
    post_sig <= add_sig ^ post_inv_int;
    post_exp <= add_exp;
    post_sum <= post_inv_int ? (~add_sum + 29'd1) : add_sum;
end
    
// -------------------------------------------------------------
// Round
// -------------------------------------------------------------
logic [5:0]  rod_lnz_int;
logic [27:0] rod_man_int;
logic [2:0]  rod_grs_int;
logic        rod_up_int;

logic        rod_sig;
logic        rod_zero;
logic [7:0]  rod_exp;
logic [22:0] rod_man;
logic        rod_up;
logic        rod_valid;

lead_nz #
(
    .WIDTH(28)
) lead_nz_inst
(
    .din  (post_sum[27:0]), // 1C + 24Mantissa + 3GRS
    .dout (rod_lnz_int)
);

assign rod_man_int = post_sum[27:0] << (rod_lnz_int[4:0] + 5'd1);
assign rod_grs_int = {rod_man_int[4:3], rod_man_int[2:0]!='0};
assign rod_up_int = rod_grs_int[2] & (rod_grs_int[1:0]==2'd00 ? rod_man_int[5] : 1'b1);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        rod_valid <= '0;
    else
        rod_valid <= post_valid;

always_ff @ (posedge clk) begin
    rod_sig  <= post_sig;
    rod_zero <= post_sum=='0;
    rod_exp  <= (post_exp - rod_lnz_int[4:0] + 8'd1);
    rod_man  <= rod_man_int[27:5];
    rod_up   <= rod_up_int;
end

// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;
logic [23:0] norm_man_int;

assign norm_man_int = {1'b0, rod_man} + rod_up;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= rod_valid;

always_ff @ (posedge clk) begin
    norm_sig  <= rod_zero ? '0 : rod_sig;
    norm_exp  <= rod_zero ? '0 : rod_exp + norm_man_int[23];
    norm_man  <= rod_zero ? '0 : norm_man_int[22:0];
end

assign dout = {norm_sig, norm_exp, norm_man};

endmodule