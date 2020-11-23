// File:    float_to_int8_tb.sv
// Author:  Lei Kuang
// Date:    20th November 2020
// @ Imperial College London

module float_to_int8_tb;

logic        clk;
logic        nrst;
logic [31:0] din;
logic        din_valid;
logic [7:0]  dout;
logic        dout_valid;

float_to_int8 dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

// ----------------------------------------------------------------
// Control signals               
// ----------------------------------------------------------------
initial begin
    nrst = '0;
    din_valid = '0;
    
    @ (posedge clk)
    nrst <= '1;
    
    @ (posedge clk)
    din_valid <= '1;
end

// ----------------------------------------------------------------
// Use Xilinx Float-point IP for Varification
// ----------------------------------------------------------------
logic [7:0] dout_ip;
logic       dout_ip_valid;

float_to_int8_gold dut_gold
(
    .aclk                 (clk),
    .s_axis_a_tvalid      (din_valid),
    .s_axis_a_tdata       (din),
    .m_axis_result_tvalid (dout_ip_valid),
    .m_axis_result_tdata  (dout_ip)
);

// ----------------------------------------------------------------
// Input Generator
// ----------------------------------------------------------------
shortreal din_real;

shortreal scale = 0.01;

initial begin
    din_real = $urandom_range(25500, 0) * scale - 25600 * scale / 2;
    din      = $shortrealtobits(din_real);

    forever @ (posedge clk) begin
        if(din_valid) begin
            din_real = $urandom_range(25500, 0) * scale - 25600 * scale / 2;
            din      = $shortrealtobits(din_real);
        end
    end
end

// ----------------------------------------------------------------
// Output Checker
// ----------------------------------------------------------------
logic error;

assign error = (dout!=dout_ip) & dout_valid;

// Print
string check;
integer cnt;

initial begin

    $write("%15s %15s %15s %10s\n", "No. Test", "IP Out", "My Out", "Check");
    cnt = 1;
    
    forever @ (posedge clk) begin
        if(dout_valid) begin
        
            check = dout==dout_ip ? "OK" : "ERROR";
            
            $write("%15d %15.4f %15.4f %10s\n", cnt,
                                                dout_ip, dout,
                                                check);

            cnt = cnt + 1;
        end
    end
end

endmodule
