// File:    ram_8bx128.sv
// Author:  Lei Kuang
// Date:    27th October 2020
// @ Imperial College London

module ram_8bx128
(
    input  logic       clk,
    input  logic       we,
    input  logic [6:0] addr,
    input  logic [7:0] din,
    output logic [7:0] dout
);

logic [7:0] ram_int [0:127];

always_ff @ (posedge clk) begin
    if(we)
        ram_int[addr] <= din;
    dout <= ram_int[addr];
end

endmodule
