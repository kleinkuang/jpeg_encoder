// File:    ram_8bx128_tb.sv
// Author:  Lei Kuang
// Date:    27th October 2020
// @ Imperial College London

module ram_8bx128_tb;

logic       clk;
logic       we;
logic [6:0] addr;
logic [7:0] din;
logic [7:0] dout;

ram_8bx128 dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    we   = '0;
    addr = '0;
    din  = '0;
    
    @(posedge clk)
        we <= '1;
        
    for(int i=0; i<=127; i=i+1) begin
        @(posedge clk) begin
            addr <= addr + 1;
            din  <= din + 1;
            if(i==127)
                we <= '0;
        end   
    end
    
    for(int i=0; i<=127; i=i+1) begin
        @(posedge clk) begin
            addr <= addr + 1;
        end   
    end
end

endmodule
