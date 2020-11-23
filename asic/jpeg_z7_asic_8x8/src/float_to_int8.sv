// File:    float_to_int8.sv
// Author:  Lei Kuang
// Date:    20th November 2020
// @ Imperial College London

module float_to_int8
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [31:0] din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid
);

logic        sig;
logic [7:0]  exp;
logic [22:0] man;

logic [8:0]  to_sf;
logic        to_sf_sig;
logic [7:0]  to_sf_abs;

logic [7+1+22:0] man_sf;
logic [7:0]  uint8;
logic [7:0]  int8;

assign sig = din[31];
assign exp = din[30:23];
assign man = din[22:0];

assign to_sf     = {1'b0, exp} - 8'd127;
assign to_sf_sig = to_sf[8];
assign to_sf_abs = to_sf_sig ? (~{to_sf}+8'd1) : to_sf[7:0];

assign man_sf = to_sf_sig ? ({7'b0, exp!='0, man} >> to_sf_abs) : ({7'b0, exp!='0, man} << to_sf_abs);
assign uint8  = man_sf[30:23];
assign int8   = sig ? (~uint8 + 8'd1) : uint8;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= din_valid;
        
always_ff @ (posedge clk)
    dout <= int8;

endmodule
