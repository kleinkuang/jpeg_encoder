-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/src/ram_8bx64.sv" \
  "../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/src/zigzag.sv" \
  "../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/sim/zigzag_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

