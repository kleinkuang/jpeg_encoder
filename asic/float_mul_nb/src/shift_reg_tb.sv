// File:    shift_reg.sv
// Author:  Lei Kuang
// Date:    13th November 2020
// @ Imperial College London

// Shift register for pipeline

module shift_reg_tb;

parameter WIDTH = 8;
parameter STAGE = 2;

logic clk;
logic [WIDTH-1:0] din;
logic [WIDTH-1:0] dout;

shift_reg #
(
    .WIDTH(WIDTH),
    .STAGE(STAGE)
) dut
(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    din = '0;
    forever begin
        @(posedge clk)
        din <= din + 1;
    end
end

endmodule
