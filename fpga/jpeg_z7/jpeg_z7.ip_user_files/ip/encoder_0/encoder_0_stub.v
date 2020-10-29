// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 29 00:14:44 2020
// Host        : Klein_Workspace running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/jpeg_encoder/fpga/jpeg_z7/jpeg_z7.srcs/sources_1/ip/encoder_0/encoder_0_stub.v
// Design      : encoder_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "jpeg_encoder,Vivado 2019.1" *)
module encoder_0(clk, nrst, din, din_valid, dout, dout_valid)
/* synthesis syn_black_box black_box_pad_pin="clk,nrst,din[7:0],din_valid,dout[31:0],dout_valid" */;
  input clk;
  input nrst;
  input [7:0]din;
  input din_valid;
  output [31:0]dout;
  output dout_valid;
endmodule
