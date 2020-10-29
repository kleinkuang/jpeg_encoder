-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 29 00:14:44 2020
-- Host        : Klein_Workspace running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/jpeg_encoder/fpga/jpeg_z7/jpeg_z7.srcs/sources_1/ip/encoder_0/encoder_0_stub.vhdl
-- Design      : encoder_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_0 is
  Port ( 
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    din_valid : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_valid : out STD_LOGIC
  );

end encoder_0;

architecture stub of encoder_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,nrst,din[7:0],din_valid,dout[31:0],dout_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "jpeg_encoder,Vivado 2019.1";
begin
end;
