// File:    mcu_8x8_tb.sv
// Author:  Lei Kuang
// Date:    22th November 2020
// @ Imperial College London

module mcu_tb;

logic        clk;
logic        nrst;
logic [7:0]  din;
logic        din_valid;
logic [7:0]  dout [7:0];
logic        dout_valid;

mcu_8x8 dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst      = '0;
    din_valid = '0;
    
    @(posedge clk)
        nrst <= '1;
    
    @(posedge clk)
        din_valid <= '1;
end

initial begin
    din       = '0;
    
    forever @ (posedge clk) begin
        if(din_valid)
            din <= din + 1;
    end
end

endmodule
