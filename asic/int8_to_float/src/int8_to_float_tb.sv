// File:    int8_to_float_tb.sv
// Author:  Lei Kuang
// Date:    16th November 2020
// @ Imperial College London

module int8_to_float_tb;

logic        clk;
logic        nrst;
logic [7:0]  din;
logic        din_valid;
logic [31:0] dout;
logic        dout_valid;

int8_to_float dit(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst = '0;
    din  = '0;
    din_valid = '0;
    
    @(posedge clk)
    nrst <= '1;
    
    @(posedge clk)
    din_valid <= '1;
    
    forever begin
        @(posedge clk)
        din <= din + 1;
    end
end

endmodule
