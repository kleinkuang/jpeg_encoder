// File:    int8_to_float.sv
// Author:  Lei Kuang
// Date:    16th November 2020
// @ Imperial College London

module int8_to_float
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [31:0] dout,
    output logic        dout_valid
);

logic [7:0] abs;
logic [3:0] lnz; // Leading number of zeros
logic       sig;
logic [7:0] exp;
logic [7:0] man;

assign sig = din[7];
assign abs = sig ? ~(din-8'd1) : din;

lead_nz #
(
    .WIDTH(8)
) lead_nz_inst
(
    .din  (abs),
    .dout (lnz)
);

assign exp = 8'd134 - lnz;
assign man = abs << (lnz + 8'd1);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= din_valid;

always_ff @ (posedge clk)
    //if(din_valid)
        dout <= din=='0 ? '0 : {sig, exp, man, 15'd0};

endmodule
