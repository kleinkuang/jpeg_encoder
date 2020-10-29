vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/src/ram_8bx64.sv" \
"../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/src/zigzag.sv" \
"../../../../jpeg_z7.srcs/sources_1/ip/zigzag_0/sim/zigzag_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

