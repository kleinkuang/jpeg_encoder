// File:    jpeg_tb.sv
// Author:  Lei Kuang
// Date:    17th June 2020
// @ Imperial College London

module jpeg_tb;

logic       clk;
logic       nrst;
logic [7:0] din;
logic       din_valid;
logic [7:0] dout;
logic       dout_valid;
logic       full;

jpeg dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

logic [7:0]  img [16383:0];
logic [13:0] img_cnt;

integer      f_cnt;
string       f_num;
string       f_name;

initial begin
    nrst      = '0;
    din_valid = '0;
    img_cnt   = '0;
    
    // Init
    f_cnt = 400;
    f_num.itoa(f_cnt);
    f_name = {"F:\\jpeg_encoder\\python\\blackpearl\\mem\\batman_", f_num, ".mem"};
    //$display("================================================================");
    //$display({"Load File: ", f_name});
    //$display("================================================================");
    $readmemh(f_name, img);
    f_cnt  = f_cnt==5000 ? f_cnt : f_cnt + 10;

    @(posedge clk)
        nrst <= '1;
        
    @(posedge clk)
        din_valid <= '1;

    forever begin
        @(posedge clk) begin
            
            if(img_cnt=='1) begin
                f_num.itoa(f_cnt);
                f_name = {"F:\\jpeg_encoder\\python\\blackpearl\\mem\\batman_", f_num, ".mem"};
                //$display("================================================================");
                //$display({"Load File: ", f_name});
                //$display("================================================================");
                $readmemh(f_name, img);
                f_cnt  = f_cnt>=5000 ? f_cnt : f_cnt + 10;
            end
            
            if(din_valid)
                img_cnt <= img_cnt + 1;
        end
    end
end

assign din = img[img_cnt];

logic [1:0] out_cnt;

initial begin
    out_cnt = '0;

    forever @ (negedge clk) begin
        if(dout_valid) begin
            $write("%X", dout);
            
            out_cnt <= out_cnt + 1;
            if(out_cnt==3)
                $write("\n", dout);
        end
    end
end

endmodule
