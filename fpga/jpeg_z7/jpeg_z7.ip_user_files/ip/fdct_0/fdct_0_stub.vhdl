-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Oct 28 23:28:34 2020
-- Host        : Klein_Workspace running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/jpeg_ip_streamer/jpeg_z7/jpeg_z7.srcs/sources_1/ip/fdct_0/fdct_0_stub.vhdl
-- Design      : fdct_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fdct_0 is
  Port ( 
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    din_valid : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout_valid : out STD_LOGIC
  );

end fdct_0;

architecture stub of fdct_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,nrst,din[7:0],din_valid,dout[7:0],dout_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fdct,Vivado 2019.1";
begin
end;
