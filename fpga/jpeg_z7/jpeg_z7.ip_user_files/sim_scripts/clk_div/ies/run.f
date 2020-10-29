-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../jpeg_z7.srcs/sources_1/ip/clk_div/clk_div_clk_wiz.v" \
  "../../../../jpeg_z7.srcs/sources_1/ip/clk_div/clk_div.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

