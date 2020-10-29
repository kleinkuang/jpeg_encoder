// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Oct 28 23:28:34 2020
// Host        : Klein_Workspace running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/jpeg_ip_streamer/jpeg_z7/jpeg_z7.srcs/sources_1/ip/fdct_0/fdct_0_stub.v
// Design      : fdct_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fdct,Vivado 2019.1" *)
module fdct_0(clk, nrst, din, din_valid, dout, dout_valid)
/* synthesis syn_black_box black_box_pad_pin="clk,nrst,din[7:0],din_valid,dout[7:0],dout_valid" */;
  input clk;
  input nrst;
  input [7:0]din;
  input din_valid;
  output [7:0]dout;
  output dout_valid;
endmodule
