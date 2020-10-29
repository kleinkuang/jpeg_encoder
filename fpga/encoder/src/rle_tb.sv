// File:    rle_tb.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

module rle_tb;

logic        clk;
logic        nrst;
logic [7:0]  data;
logic        data_valid;
logic [3:0]  rrrr;
logic [7:0]  magn;
logic        isdc;
logic        rrmg_valid;

rle dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

logic [7:0]s1 [0:63];   // - No successive zeros of length 16
logic [7:0]s2 [0:63];   // - Successive zeros of length 16
logic [7:0]s3 [0:63];   // - All zeros
                
assign s1 = '{ -40,   0,  -2,  -2,   0,  -1,   0,   0,
                 0,   1,   3,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,  -1,  -1,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,  -1,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0 };
                 
assign s2 = '{ -31,   0,  -1,  -1,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   2,   1,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   1,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0 };
                 
assign s3 = '{   0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0,
                 0,   0,   0,   0,   0,   0,   0,   0 };
                 
initial begin
    nrst = '0;
    data = '0;
    data_valid = '0;

    @(posedge clk)
        nrst <= '1;
    
    forever begin
        // s1
        @(posedge clk) begin
            data_valid <= '1;
            data <= s1[0];
        end
        
        for (int i=1; i<=63; i++) begin
            @(posedge clk)
                data <= s1[i];
        end
        
        @(posedge clk)
            data_valid <= '0;
        
        // s2
        @(posedge clk) begin
            data_valid <= '1;
            data <= s2[0];
        end
        
        for (int i=1; i<=63; i++) begin
            @(posedge clk)
                data <= s2[i];
        end
        
        @(posedge clk)
            data_valid <= '0;
            
        // s3
        @(posedge clk) begin
            data_valid <= '1;
            data <= s3[0];
        end
        
        for (int i=1; i<=63; i++) begin
            @(posedge clk)
                data <= s3[i];
        end
        
        @(posedge clk)
            data_valid <= '0;
    end
end

// Print output
byte m;
always_ff @(posedge clk) begin
    if(rrmg_valid) begin
        if(isdc) begin
            m = magn;
            $write("]\n\n- DC: %d\n- AC: [", m);
        end
        else begin
            m = magn;
            $write("(%d, %d) ", rrrr, m);
        end
    end
end

endmodule
