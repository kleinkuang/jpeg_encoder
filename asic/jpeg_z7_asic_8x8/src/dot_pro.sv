// File:    dot_pro.sv
// Author:  Lei Kuang
// Date:    17th June 2020
// @ Imperial College London

/*
    [ r0 r1 ... r7 ] [ c0   = r0*c0 + r1*c1 + .. + r7*c7
                       c1
                       c2
                       ...
                       c7 ]
*/

/*
        r0 * c0     r1 * c1     r2 * c2     r3 * c3     r4 * c4     r5 * c5     r6 * c6     r7 * c7     
        |    |      |    |      |    |      |    |      |    |      |    |      |    |      |    | 
          *           *           *           *           *           *           *           *         Multiplier x8
          |           |           |           |           |           |           |           |         - [31:0] pro [7:0]
                +                      +                        +                       +               Adder Tree
                |                      |                        |                       |               - [31:0] sum_1 [3:0]
                         +                                                  +
                         |                                                  |                           - [31:0] sum_2 [1:0]
                                                   +
                                                   |                                                    - [31:0] dout
                                                   
*/

module dot_pro
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [31:0] row_vec [7:0],
    input  logic [31:0] col_vec [7:0],
    input  logic        din_valid,
    output logic [31:0] dout,
    output logic        dout_valid    
);

// ----------------------------------------------------------------
// Multiplier
// ----------------------------------------------------------------
logic [31:0] pro       [7:0];
logic        pro_valid [7:0];

genvar i0;
generate 
    /*for(i0=0; i0<8; i0++) begin
        float_mul inst
        (
            .aclk                   (clk),
            .aresetn                (nrst),
            .s_axis_a_tdata         (row_vec[i0]),
            .s_axis_a_tvalid        (din_valid),
            .s_axis_b_tdata         (col_vec[i0]), 
            .s_axis_b_tvalid        (din_valid),
            .m_axis_result_tdata    (pro[i0]),
            .m_axis_result_tvalid   (pro_valid[i0])
        );
    end*/
    
    for(i0=0; i0<8; i0++) begin
        float_mul_nb inst
        (
            .clk        (clk),
            .nrst       (nrst),
            .din1       (row_vec[i0]),
            .din2       (col_vec[i0]), 
            .din_valid  (din_valid),
            .dout       (pro[i0]),
            .dout_valid (pro_valid[i0])
        );
    end
endgenerate

// ----------------------------------------------------------------
// Adder Tree
// ----------------------------------------------------------------
logic [31:0]    sum_1       [3:0];
logic           sum_1_valid [3:0];

genvar i1;
generate 
    for(i1=0; i1<4; i1++) begin
        /*float_add inst
        (
            .aclk                   (clk),
            .aresetn                (nrst),
            .s_axis_a_tdata         (pro[i1*2]),
            .s_axis_a_tvalid        (pro_valid[i1*2]),
            .s_axis_b_tdata         (pro[i1*2+1]),
            .s_axis_b_tvalid        (pro_valid[i1*2+1]),
            .m_axis_result_tdata    (sum_1[i1]),
            .m_axis_result_tvalid   (sum_1_valid[i1])
        );*/
    
        float_add_nb inst
        (
            .clk         (clk),
            .nrst        (nrst),
            .din1        (pro[i1*2]),
            .din2        (pro[i1*2+1]),
            .din_valid   (pro_valid[i1*2]),
            .dout        (sum_1[i1]),
            .dout_valid  (sum_1_valid[i1])
        );
    end
endgenerate

logic [31:0]    sum_2       [1:0];
logic           sum_2_valid [1:0];

genvar i2;
generate
    for( i2=0; i2<2; i2++) begin
        /*float_add inst
        (
            .aclk                   (clk),
            .aresetn                (nrst),
            .s_axis_a_tdata         (sum_1[i2*2]),
            .s_axis_a_tvalid        (sum_1_valid[i2*2]),
            .s_axis_b_tdata         (sum_1[i2*2+1]),
            .s_axis_b_tvalid        (sum_1_valid[i2*2+1]),
            .m_axis_result_tdata    (sum_2[i2]),
            .m_axis_result_tvalid   (sum_2_valid[i2])
        );*/
        
        float_add_nb inst
        (
            .clk        (clk),
            .nrst       (nrst),
            .din1       (sum_1[i2*2]),
            .din2       (sum_1[i2*2+1]),
            .din_valid  (sum_1_valid[i2*2+1]),
            .dout       (sum_2[i2]),
            .dout_valid (sum_2_valid[i2])
        );
    end
endgenerate

/*float_add float_add_inst
(
    .aclk                   (clk),
    .aresetn                (nrst),
    .s_axis_a_tdata         (sum_2[0]),
    .s_axis_a_tvalid        (sum_2_valid[0]),
    .s_axis_b_tdata         (sum_2[1]),
    .s_axis_b_tvalid        (sum_2_valid[1]),
    .m_axis_result_tdata    (dout),
    .m_axis_result_tvalid   (dout_valid)
);*/

float_add_nb float_add_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din1       (sum_2[0]),
    .din2       (sum_2[1]),
    .din_valid  (sum_2_valid[0]),
    .dout       (dout),
    .dout_valid (dout_valid)
);

endmodule
