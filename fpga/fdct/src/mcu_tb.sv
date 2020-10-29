// File:    mcu_tb.sv
// Author:  Lei Kuang
// Date:    17th June 2020
// @ Imperial College London

module mcu_tb;

logic        clk;
logic        nrst;
logic [7:0]  din;
logic        din_valid;
logic [7:0]  dout [7:0];
logic        dout_valid;

mcu dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

// Valid data every clock cycle
/*initial begin
    nrst      = '0;
    din       = '0;
    din_valid = '0;
    
    @(posedge clk)
        nrst <= '1;
    
    for(int i=0; i<128; i++) begin
        @(posedge clk) begin
            din       <= i;
            din_valid <= '1;
        end
            
        for(int j=1; j<=127; j++) begin
            @(posedge clk)
                din <= din + 1;

            if(i==127 & j==127)
                din_valid <= '0;
        end
    end
end*/

endmodule
