// File:    level_shift.sv
// Author:  Lei Kuang
// Date:    16th June 2020
// @ Imperial College London

module level_shift 
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din  [7:0],
    input  logic        din_valid,
    output logic [31:0] dout [7:0],
    output logic        dout_valid
);

logic [7:0] dout_valid_int;

genvar i;
generate
begin
    for(i=0; i<8; i++) begin
        int8_to_float inst
        (
            //.aclk                   (clk),
            //.aresetn                (nrst),
            .s_axis_a_tdata         (din[i] - 8'd128),
            .s_axis_a_tvalid        (din_valid),
            .m_axis_result_tdata    (dout[i]),
            .m_axis_result_tvalid   (dout_valid_int[i])
        );
    end
end
endgenerate

assign dout_valid = dout_valid_int[0];

endmodule
