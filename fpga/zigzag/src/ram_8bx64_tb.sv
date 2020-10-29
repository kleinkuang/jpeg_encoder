// File:    sp_ram_8bx64_tb.sv
// Author:  Lei Kuang
// Date:    12th Oct 2020
// @ Imperial College London

// Single-port RAM 8bx64

module sp_ram_8bx64_tb;

logic        clk;
logic        we;
logic [5:0]  addr;
logic [7:0]  din;
logic [7:0]  dout;

sp_ram_8bx64 dut(.*);

initial begin
    clk = '0;
    forever #2ns clk=~clk;
end

initial begin
    we   = '0;
    addr = '0;
    
    @ (posedge clk)
        we <= '1;

    for(int i=0; i<63; i++) begin
        @ (posedge clk) begin
            we   <= '1;
            addr <= addr + 1;
        end
    end
    
    for(int i=0; i<64; i++) begin
        @ (posedge clk) begin
            we   <= '0;
            addr <= addr + 1;
        end
    end
end

assign din = {'0, addr};

endmodule
