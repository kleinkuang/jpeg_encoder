// File:    float_add_nb.sv
// Author:  Lei Kuang
// Date:    16th November 2020
// @ Imperial College London

// Non-blocking Float-Point Adder (Single-Precision)
// - Latency: ? clock cycles

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
// - Round to zero

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
// Compare Exponent and Exchange
// -------------------------------------------------------------
logic        coex_sig1;
logic        coex_sig2;
logic [7:0]  coex_exp1_int; 
logic [7:0]  coex_exp2_int;
logic [7:0]  coex_exp; 
logic [23:0] coex_man1_int;
logic [23:0] coex_man2_int;
logic [25:0] coex_man1;
logic [49:0] coex_man2;
logic        coex_valid;

logic        to_exchg; // Exchange inputs
logic [7:0]  to_shift;

assign to_exchg = din2[30:23] > din1[30:23];
assign to_shift = to_exchg ? din2[30:23] - din1[30:23] : din1[30:23] - din2[30:23];

assign coex_exp1_int = to_exchg ? din2[30:23] : din1[30:23];
assign coex_exp2_int = to_exchg ? din1[30:23] : din2[30:23];

assign coex_man1_int = {coex_exp1_int=='0 ? 1'b0 : 1'b1, to_exchg ? {din2[22:0]} : {din1[22:0]}};
assign coex_man2_int = {coex_exp2_int=='0 ? 1'b0 : 1'b1, to_exchg ? {din1[22:0]} : {din2[22:0]}};

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        coex_valid <= '0;
    else
        coex_valid <= din_valid;
        
always_ff @ (posedge clk)
    if(din_valid) begin
        coex_sig1 <= to_exchg ? din2[31] : din1[31];
        coex_sig2 <= to_exchg ? din1[31] : din2[31];
        coex_exp  <= coex_exp1_int;
        coex_man1 <= {2'b0, coex_man1_int};
        coex_man2 <= {2'b0, {coex_man2_int, 24'd0} >> to_shift};
    end

// -------------------------------------------------------------
// Pre Addition
// -------------------------------------------------------------
logic        pre_sig;
logic        pre_sigx_int;
logic        pre_sigx; // Sign Xor
logic [7:0]  pre_exp;
logic [28:0] pre_augend;
logic [28:0] pre_augend_int;
logic [28:0] pre_addend;
logic        pre_sticky;
logic        pre_valid;

assign pre_sticky     = coex_man2[21:0]!='0;
assign pre_sigx_int   = coex_sig1 ^ coex_sig2;
assign pre_augend_int = {coex_man1, 3'd0};

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        pre_valid <= '0;
    else
        pre_valid <= coex_valid;
        
always_ff @ (posedge clk)
    if(coex_valid) begin
        pre_sig    <= coex_sig1;
        pre_exp    <= coex_exp;
        pre_sigx   <= pre_sigx_int;
        pre_augend <= pre_sigx_int ? ~pre_augend_int+29'd1 : pre_augend_int;
        pre_addend <= {coex_man2[49:24], coex_man2[23:22], pre_sticky};
    end

// -------------------------------------------------------------
// Addition
// -------------------------------------------------------------
logic        add_sig;
logic        add_sigx;
logic [7:0]  add_exp;
logic [28:0] add_sum;
logic        add_valid;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        add_valid <= '0;
    else
        add_valid <= pre_valid;

always_ff @ (posedge clk)
    if(pre_valid) begin
        add_sig  <= pre_sig;
        add_sigx <= pre_sigx;
        add_exp  <= pre_exp;
        add_sum  <= pre_augend + pre_addend;
    end

// -------------------------------------------------------------
// Post Addition
// -------------------------------------------------------------
logic        post_inv;
logic        post_sig;
logic [7:0]  post_exp;
logic [28:0] post_sum;
logic        post_valid;

assign post_inv = add_sum[28];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        post_valid <= '0;
    else
        post_valid <= add_valid;

always_ff @ (posedge clk)
    if(add_valid) begin
        post_sig <= add_sigx ? post_inv ? add_sig : ~add_sig : add_sig;
        post_exp <= add_exp;
        post_sum <= post_inv ? (~add_sum + 29'd1) : add_sum;
    end
    
// -------------------------------------------------------------
// Normalization
// -------------------------------------------------------------
logic [4:0]  norm_lnz;
logic        norm_sig;
logic [7:0]  norm_exp;
logic [22:0] norm_man;
logic [27:0] norm_man_int;
logic [2:0]  norm_grs_int;
logic        norm_zero_int;
logic        norm_valid;

lead_nz #
(
    .WIDTH(25)
) lead_nz_inst
(
    .din  (post_sum[27:3]),
    .dout (norm_lnz)
);

assign norm_man_int  = post_sum[27:0] << (norm_lnz + 7'd1);
assign norm_zero_int = norm_lnz==5'd25;
assign norm_grs_int  = post_sum[2:0];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        norm_valid <= '0;
    else
        norm_valid <= post_valid;

always_ff @ (posedge clk)
    if(post_valid) begin
        norm_sig <= norm_zero_int ? '0 : post_sig;
        norm_exp <= norm_zero_int ? '0 : (post_exp - norm_lnz + 7'd1);
        norm_man <= norm_zero_int ? '0 : norm_man_int[27:5];// + norm_grs_int[2];
    end

assign dout = {norm_sig, norm_exp, norm_man[22:0]};
assign dout_valid = norm_valid;

endmodule
