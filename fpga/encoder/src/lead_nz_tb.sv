// File:    lead_nz_tb.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

module lead_nz_tb;

parameter DATA_WIDTH = 8;
parameter CNT_WIDTH = $clog2(DATA_WIDTH);

logic [DATA_WIDTH-1:0] in;
logic [CNT_WIDTH:0]    nz;

lead_nz #(DATA_WIDTH) dvt (.*);

initial begin
    in = 0;
    forever begin
        #10ns
        in = in + 1;
    end
end

endmodule