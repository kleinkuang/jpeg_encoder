// File:    booth_algo_tb.sv
// Author:  Lei Kuang
// Date:    11th November 2020
// @ Imperial College London

// Booth Algorithm Implemenation based on Radix 2

module booth_algo_tb;

parameter WIDTH = 8;
parameter BSTEP = 0;

logic               clk;
logic               nrst;
logic [WIDTH-1:0]   din_multiplicand;
logic [WIDTH-1:0]   din_multilplier;
logic [WIDTH+1:0]   din_addend;
logic [WIDTH+1:0]   din_augend;
logic               din_valid;
logic [WIDTH-1:0]   dout_multiplicand;
logic [WIDTH-1:0]   dout_multilplier;
logic [WIDTH+1:0]   dout_addend;
logic [WIDTH+1:0]   dout_augend;
logic               dout_valid;

//booth_algo #
//(
//    .WIDTH(WIDTH),
//    .BSTEP(BSTEP)
//)
//dut (.*);

booth_algo dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst <= '0;
    din_multiplicand = 8'b01011110;
    din_multilplier  = 8'b01101010;
    din_addend       = '0;
    din_augend       = '0;
    din_valid        = '0;
end

endmodule
