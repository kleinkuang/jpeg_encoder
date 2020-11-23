// File:    shift_reg.sv
// Author:  Lei Kuang
// Date:    13th November 2020
// @ Imperial College London

// Shift register for pipeline

module shift_reg #
(
    parameter WIDTH = 8,
    parameter STAGE = 0
)
(
    input  logic clk,
    input  logic [WIDTH-1:0] din,
    output logic [WIDTH-1:0] dout
);

logic [WIDTH-1:0] shift_reg_int [STAGE:0];

// Input
assign shift_reg_int[0] = din;

// Generator
genvar i;
generate
// ----------------------------------------------------------------
    for(i=1; i<=STAGE; i++) begin
        always_ff @ (posedge clk)
            shift_reg_int[i] <= shift_reg_int[i-1];
    end
// ----------------------------------------------------------------
endgenerate

//Output
assign dout = shift_reg_int[STAGE];

endmodule
