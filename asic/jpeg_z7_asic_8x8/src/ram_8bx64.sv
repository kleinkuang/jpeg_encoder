// File:    ram_8bx64.sv
// Author:  Lei Kuang
// Date:    12th Oct 2020
// @ Imperial College London

// Single-port RAM 8bx64

module ram_8bx64
(
    input  logic        clk,
    input  logic        we,
    input  logic [5:0]  addr,
    input  logic [7:0]  din,
    output logic [7:0]  dout
);

logic [7:0] mem_int [0:63];

always_ff @ (posedge clk)
    if(we)
        mem_int[addr] <= din;
        
always_ff @ (posedge clk)
    dout <= mem_int[addr];

endmodule
