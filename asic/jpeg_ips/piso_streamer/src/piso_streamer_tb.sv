// File:    piso_streamer_tb.sv
// Author:  Lei Kuang
// Date:    14th December 2020
// @ Imperial College London

// PISO FIFO Streamer

module piso_streamer_tb;

parameter DEPTH_PWR = 4;

logic        clk;
logic        nrst;
logic [31:0] din;
logic        din_valid;
logic [7:0]  dout;
logic        dout_valid;
logic        full;

piso_streamer #
(
    .DEPTH_PWR(DEPTH_PWR)
) dut
(.*);

initial begin
    clk = '0;
    forever #5ns clk=~clk;
end

initial begin
    nrst = '0;
    din  = '0;
    din_valid = '0;
    
    @(posedge clk)
    nrst <= '1;
    
    forever begin
        @(posedge clk) begin
            din <= 32'h03020100;
            din_valid <= '1;
        end
        
        for(int i=0; i<16; i++) begin
            @(posedge clk)
            ;
        end
        
        @(posedge clk)
        din_valid <= '0;

        for(int i=0; i<64; i++) begin
            @(posedge clk)
            ;
        end
    end
    
end

endmodule
