// File:    float_add_nb_tb.sv
// Author:  Lei Kuang
// Date:    16th November 2020
// @ Imperial College London

module float_add_nb_tb;

logic        clk;
logic        nrst;
logic [31:0] din1;
logic [31:0] din2;
logic        din_valid;
logic [31:0] dout;
logic        dout_valid;

float_add_nb dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst = '0;
    
    @ (posedge clk)
    nrst <= '1;
end

/*initial begin
    din1 = 32'b10111110101011111000000000000000; // 0.3427734375
    din2 = 32'b10111111110110101000000000000000; // 1.70703125
    
    din_valid = '0;
    
    @(posedge nrst)
    ;
    
    @(posedge clk)
    din_valid <= '1;
end*/

shortreal a, b, scale;
shortreal my_res, ip_res;
string    check;

logic error = '0;

initial begin
    scale     = 0.0001;
    din_valid = '0;
    
    @ (posedge nrst)
    ;
    
    forever begin
        // Random float-point number
        a = $urandom_range(163840000, 0) * scale - 163840000 * scale / 2;
        b = $urandom_range(163840000, 0) * scale - 163840000 * scale / 2;
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
            check  = dout==dout_gold ? "OK" : "ERROR";
            
            $write("%15.4f %15.4f %15.4f %15.4f %s\n", a, b, my_res, ip_res, check);
            
            if(dout!=dout_gold & dout[31:1]!=dout_gold[31:1] & (dout!=dout_gold+1) & (dout+1!=dout_gold))
                error <= '1;
            else
                error <= '0;
        end

        @(posedge clk)
        ;
    end
end

// Use Xilinx Float-point IP for Varification
logic [31:0] dout_gold;
logic        dout_gold_valid;

float_add_gold dut_gold
(
    .s_axis_a_tvalid      (din_valid),
    .s_axis_a_tdata       (din1),
    .s_axis_b_tvalid      (din_valid),
    .s_axis_b_tdata       (din2),
    .m_axis_result_tvalid (dout_gold_valid),
    .m_axis_result_tdata  (dout_gold)
);
  
endmodule
