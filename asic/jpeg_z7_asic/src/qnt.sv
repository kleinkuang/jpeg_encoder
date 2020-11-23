// File:    ant.sv
// Author:  Lei Kuang
// Date:    16th June 2020
// @ Imperial College London

// Quantization for JPEG

/*
Q50 = [[ 16,  11,  10,  16,  24,  40,  51, 61],  
        [12,  12,  14,  19,  26,  58,  60, 55], 
        [14,  13,  16,  24,  40,  57,  69, 56], 
        [14,  17,  22,  29,  51,  87,  80, 62],  
        [18,  22,  37,  56,  68, 109, 103, 77], 
        [24,  35,  55,  64,  81, 104, 113, 92], 
        [49,  64,  78,  87, 103, 121, 120, 101], 
        [72,  92,  95,  98, 112, 100, 103,  99]];
*/

module qnt
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [31:0] din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid
);

logic [7:0]  Q50 [0:63];
logic [31:0] q;
logic [5:0]  q_cnt;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        q_cnt <= '0;
    else
        if(din_valid)
            q_cnt <= q_cnt + 6'd1;
            

logic [31:0] din_int;

always_ff @ (posedge clk)
    din_int <= din;

// ----------------------------------------------------------------
// Fixed-point to Float-point
// ----------------------------------------------------------------
/*int8_to_float i2f_inst
(
    //.aclk                   (clk),
    //.aresetn                (nrst),
    .s_axis_a_tdata         (Q50[q_cnt]),
    .s_axis_a_tvalid        ('1),
    .m_axis_result_tdata    (q),
    .m_axis_result_tvalid   ()
);*/

logic q_valid;

int8_to_float i2f_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (Q50[q_cnt]),
    .din_valid  (din_valid),
    .dout       (q),
    .dout_valid (q_valid)
);

// ----------------------------------------------------------------
// Quantization
// ----------------------------------------------------------------
logic [31:0] quo;
logic        quo_valid;

/*float_div div_inst
(
    .aclk                   (clk),
    .aresetn                (nrst),
    .s_axis_a_tdata         (din),
    .s_axis_a_tvalid        (din_valid),
    .s_axis_b_tdata         (q), 
    .s_axis_b_tvalid        (din_valid),
    .m_axis_result_tdata    (quo),
    .m_axis_result_tvalid   (quo_valid)
);*/

float_div_nb div_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din1       (din_int),
    .din2       (q),
    .din_valid  (q_valid),
    .dout       (quo),
    .dout_valid (quo_valid)
);

// ----------------------------------------------------------------
// FFloat-point to Fixed-point
// ----------------------------------------------------------------
/*float_to_int8 f2i_inst
(
    .aclk                   (clk),
    .aresetn                (nrst),
    .s_axis_a_tdata         (quo),
    .s_axis_a_tvalid        (quo_valid),
    .m_axis_result_tdata    (dout),
    .m_axis_result_tvalid   (dout_valid)
);*/

float_to_int8 f2i_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (quo),
    .din_valid  (quo_valid),
    .dout       (dout),
    .dout_valid (dout_valid)
);

// ROM Assignment
assign Q50 [ 0] = 8'd16;
assign Q50 [ 1] = 8'd11;
assign Q50 [ 2] = 8'd10;
assign Q50 [ 3] = 8'd16;
assign Q50 [ 4] = 8'd24;
assign Q50 [ 5] = 8'd40;
assign Q50 [ 6] = 8'd51;
assign Q50 [ 7] = 8'd61;
assign Q50 [ 8] = 8'd12;
assign Q50 [ 9] = 8'd12;
assign Q50 [10] = 8'd14;
assign Q50 [11] = 8'd19;
assign Q50 [12] = 8'd26;
assign Q50 [13] = 8'd58;
assign Q50 [14] = 8'd60;
assign Q50 [15] = 8'd55;
assign Q50 [16] = 8'd14;
assign Q50 [17] = 8'd13;
assign Q50 [18] = 8'd16;
assign Q50 [19] = 8'd24;
assign Q50 [20] = 8'd40;
assign Q50 [21] = 8'd57;
assign Q50 [22] = 8'd69;
assign Q50 [23] = 8'd56;
assign Q50 [24] = 8'd14;
assign Q50 [25] = 8'd17;
assign Q50 [26] = 8'd22;
assign Q50 [27] = 8'd29;
assign Q50 [28] = 8'd51;
assign Q50 [29] = 8'd87;
assign Q50 [30] = 8'd80;
assign Q50 [31] = 8'd62;
assign Q50 [32] = 8'd18;
assign Q50 [33] = 8'd22;
assign Q50 [34] = 8'd37;
assign Q50 [35] = 8'd56;
assign Q50 [36] = 8'd68;
assign Q50 [37] = 8'd109;
assign Q50 [38] = 8'd103;
assign Q50 [39] = 8'd77;
assign Q50 [40] = 8'd24;
assign Q50 [41] = 8'd35;
assign Q50 [42] = 8'd55;
assign Q50 [43] = 8'd64;
assign Q50 [44] = 8'd81;
assign Q50 [45] = 8'd104;
assign Q50 [46] = 8'd113;
assign Q50 [47] = 8'd92;
assign Q50 [48] = 8'd49;
assign Q50 [49] = 8'd64;
assign Q50 [50] = 8'd78;
assign Q50 [51] = 8'd87;
assign Q50 [52] = 8'd103;
assign Q50 [53] = 8'd121;
assign Q50 [54] = 8'd120;
assign Q50 [55] = 8'd101;
assign Q50 [56] = 8'd72;
assign Q50 [57] = 8'd92;
assign Q50 [58] = 8'd95;
assign Q50 [59] = 8'd98;
assign Q50 [60] = 8'd112;
assign Q50 [61] = 8'd100;
assign Q50 [62] = 8'd103;
assign Q50 [63] = 8'd99;

endmodule
