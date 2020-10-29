// File:    en_magn_tb.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

module en_magn_tb;

logic [7:0] magn;
logic [3:0] ssss;
logic [7:0] code;

en_magn dut(.*);

initial begin
    magn = 0;
    forever begin
        #10ns
        magn = magn + 1;
    end
end


endmodule
