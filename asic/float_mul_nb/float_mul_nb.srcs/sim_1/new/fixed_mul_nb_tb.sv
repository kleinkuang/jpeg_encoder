// File:    fixed_mul_nb_tb.sv
// Author:  Lei Kuang
// Date:    11th November 2020
// @ Imperial College London

module fixed_mul_nb_tb;

parameter WIDTH = 26;

logic                clk;
logic                nrst;
logic [WIDTH-1:0]    din1;
logic [WIDTH-1:0]    din2;
logic                din_valid;
logic [WIDTH*2-1:0]  dout;
logic                dout_valid;

fixed_mul_nb #
(
    .WIDTH(WIDTH)
)
dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

// Testbench

logic [WIDTH*2-1:0] result [31:0];
logic error = '0;
integer fw;

initial begin
    nrst = '0;
    din1 = 0;
    din2 = 0;
    din_valid = '0;

    fw = $fopen("fixed_mul_nb_tb.log", "w");
    $fwrite(fw, "%15s%15s: %20s%20s %8s\n", "Multiplicand", "Mutiplier", "Golden", "FPGA Out", "Compare");
    $fclose(fw);
    fw = $fopen("fixed_mul_nb_tb.log", "a");
    
    @(posedge clk)
        nrst <= '1;
    
    forever begin
        @(posedge clk) begin
            if(~din_valid) begin
                din1 = $urandom();
                din2 = $urandom();
            end
            din_valid <= '1;
        end
        
        @(posedge clk)
            din_valid <= '0;
            
        @ (posedge dout_valid) begin
            longint a = $signed(din1);
            longint b = $signed(din2);
            longint p = a*b;
            longint r = $signed(dout);
            string  s = p==r ? "OK" : "ERROR";
            $fwrite(fw, "%15d%15d: %20d%20d %8s\n", a, b, p, r, s);
            if(~error & p!=r) begin
                error <= '1;
                $write("ERROR !!!");
            end
        end
    end
end

endmodule
