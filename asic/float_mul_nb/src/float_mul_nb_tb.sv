// File:    float_mul_nb_tb.sv
// Author:  Lei Kuang
// Date:    13th November 2020
// @ Imperial College London

module float_mul_nb_tb;

logic        clk;
logic        nrst;
logic [31:0] din1;
logic [31:0] din2;
logic        din_valid;
logic [31:0] dout;
logic        dout_valid;

float_mul_nb dut (.*);

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
logic [31:0] dout_ip_int;
logic        dout_ip_valid_int;
logic [31:0] dout_ip;
logic        dout_ip_valid;

float_mul_gold dut_gold
(
    .s_axis_a_tvalid      (din_valid),
    .s_axis_a_tdata       (din1),
    .s_axis_b_tvalid      (din_valid),
    .s_axis_b_tdata       (din2),
    .m_axis_result_tvalid (dout_ip_valid_int),
    .m_axis_result_tdata  (dout_ip_int)
);

shift_reg #
(
    .WIDTH(33),
    .STAGE(16)
) dout_ip_sf
(
    .clk  (clk),
    .din  ({dout_ip_valid_int, dout_ip_int}),
    .dout ({dout_ip_valid, dout_ip})
);

// ----------------------------------------------------------------
// Input Generator
// ----------------------------------------------------------------
shortreal din1_real;
shortreal din2_real;

shortreal scale = 0.001;

initial begin
    din1_real = $urandom_range(255, 0) - 128.0;
    din2_real = $urandom_range(1000, 0) * scale - 1000 * scale / 2;
    din1 = $shortrealtobits(din1_real);
    din2 = $shortrealtobits(din2_real);

    forever @ (posedge clk) begin
        if(din_valid) begin
            din1_real = $urandom_range(255, 0) - 128.0;
            din2_real = $urandom_range(1000, 0) * scale - 1000 * scale / 2;
            din1 = $shortrealtobits(din1_real);
            din2 = $shortrealtobits(din2_real);
        end
    end

    /*forever begin
        // Random float-point number
        a = $urandom_range(255, 0) - 128.0;
        b = $urandom_range(1000, 0) * scale - 1000 * scale / 2;
        
        // Float to bits
        din1 = $shortrealtobits(a);
        din2 = $shortrealtobits(b);
    
        @(posedge clk)
        din_valid <= '1;
        
        @(posedge clk)
        din_valid <= '0;
        
        @(posedge dout_valid) begin
            a =      $bitstoshortreal(din1);
            b =      $bitstoshortreal(din2);
            my_res = $bitstoshortreal(dout);
            ip_res = $bitstoshortreal(dout_gold);
            
            if(dout=='0) begin
                check = dout[30:0]==dout_gold[30:0] ? "OK" : "ERROR";
                error <= dout[30:0]!=dout_gold[30:0];
            end
            else begin
                check = dout==dout_gold ? "OK" : "ERROR";
                error <= dout!=dout_gold;
            end
            
            $write("%15.4f %15.4f %15.4f %15.4f %s\n", a, b, my_res, ip_res, check);
        end
        
        @(posedge clk)
        ;
    end*/

end

// ----------------------------------------------------------------
// Output Checker
// ----------------------------------------------------------------
logic error;

assign error = (dout=='0 ? dout[30:0]!=dout_ip[30:0] : dout!=dout_ip) & dout_valid;

// Print
string check;
integer cnt;

logic [31:0] din1_sf, din2_sf;

shift_reg #
(
    .WIDTH(64),
    .STAGE(16)
) din_sf
(
    .clk  (clk),
    .din  ({din1, din2}),
    .dout ({din1_sf, din2_sf})
);

initial begin

    $write("%15s %15s %15s %15s %15s %10s\n", "No. Test", "Multiplicand", "Multiplier", "IP Out", "My Out", "Check");
    cnt = 1;
    
    forever @ (posedge clk) begin
        if(dout_valid) begin
        
            if(dout=='0)
                check = dout[30:0]==dout_ip[30:0] ? "OK" : "ERROR";
            else
                check = dout==dout_ip ? "OK" : "ERROR";
            
            $write("%15d %15.4f %15.4f %15.4f %15.4f %10s\n", cnt,
                                                              $bitstoshortreal(din1_sf), $bitstoshortreal(din2_sf),
                                                              $bitstoshortreal(dout_ip), $bitstoshortreal(dout),
                                                              check);

            cnt = cnt + 1;
        end
    end
end

endmodule
