// File:    ram_8bx8.sv
// Author:  Lei Kuang
// Date:    22th November 2020
// @ Imperial College London

module ram_8bx8
(
    input  logic       clk,
    input  logic       we,
    input  logic [2:0] addr,
    input  logic [7:0] din,
    output logic [7:0] dout
);

logic [7:0] ram_int [0:7];

always_ff @ (posedge clk) begin
    if(we)
        ram_int[addr] <= din;
    dout <= ram_int[addr];
end

endmodule
