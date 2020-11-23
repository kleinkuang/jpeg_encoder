// File:    fixed_div_nb_tb.sv
// Author:  Lei Kuang
// Date:    17th November 2020
// @ Imperial College London

module fixed_div_nb_tb;

parameter WIDTH = 8;
parameter STEPS = 8;

logic             clk;
logic             nrst;
logic [WIDTH-1:0] dividend;
logic [WIDTH-1:0] divisor;
logic             din_valid;
logic [STEPS-1:0] quotient;
logic             dout_valid;

fixed_div_nb #
(
    .WIDTH(WIDTH),
    .STEPS(STEPS)
)
dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst      = '0;
    dividend  = 8'd255;
    divisor   = 8'd148;
    din_valid = '0;
    
    @(posedge clk)
    nrst <= '1;
    
    @(posedge clk)
    din_valid <= '1;
    
    @(posedge clk)
    din_valid <= '0; 
end

endmodule
