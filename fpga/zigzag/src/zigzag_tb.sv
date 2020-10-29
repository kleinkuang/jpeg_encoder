// File:    zigzag_tb.sv
// Author:  Lei Kuang
// Date:    25th June 2020
// @ Imperial College London

module zigzag_tb;

logic        clk;
logic        nrst;
logic [7:0]  din;
logic        din_valid;
logic [7:0]  dout;
logic        dout_valid;

zigzag dut(.*);

initial begin
    clk = '0;
    forever #2ns clk = ~clk;
end

initial begin
    nrst      = '0;
    din       = '0;
    din_valid = '0;
    
    @(posedge clk)
        nrst <= '1;
        
    forever @(posedge clk) begin
        din_valid <= ~din_valid;
        if(din_valid)
            din <= din + 1;
    end
end

endmodule
