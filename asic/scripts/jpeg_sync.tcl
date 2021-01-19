# Notes from genus_start.pdf
# /usr/local/cadence/GENUS_18.10.000/doc/genus_user/

# Stop when genus issues an error message
set_db fail_on_error_mesg true
# Information level, 1: min, 9: max (for debug)
set_db information_level 6

# Project information
set my_files_path       ./src
set my_files            {booth_algo.sv dct_lut.sv dot_pro.sv fdct.sv fixed_div_nb.sv fixed_mul_nb.sv float_add_nb.sv float_div_nb.sv float_mul_nb.sv float_to_int8.sv int8_to_float.sv lead_nz.sv level_shift.sv mcu_8x8.sv qnt.sv ram_8bx8.sv shift_reg.sv zigzag.sv ram_8bx64.sv ac_lut.sv conc_bytes.sv en_magn.sv dc_lut.sv encoder.sv rle.sv jpeg.sv piso_streamer.sv};
set my_top_level        jpeg
set my_clk_period       8000

# [1] Specify target technology library
set_db library 		  /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/tcb018gbwp7ttc.lib
set_db lef_library    /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_6lm.lef
set_db cap_table_file /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Back_End/lef/tcb018gbwp7t_270a/techfiles/captable/t018lo_1p6m_typical.captable

# Synthesis Mode
# - wireload (default) indicates to use wire-load models to drive synthesis
# - ple indicates to use Physical Layout Estimators (PLEs) to drive synthesis
#   > PLE uses physical information, such as LEF libraries, to provide better closure with backend tools.
#   > Note: When you read in LEF files, the interconnect_mode attribute is automatically set to ple

# [2] Load HDL files
set_db init_hdl_search_path ${my_files_path}
read_hdl -sv ${my_files}

# [3] Elaboration
# - Elaboration is only required for the top-level design
#   > Builds data structures
#   > Infers registers in the design
#   > Performs high-level HDL optimization, such as dead code removal
#   > Checks semantics
elaborate ${my_top_level}
vcd ${my_top_level}

# [4] Apply Constraints
# - Clock [nS]
#   > Genus uses picoseconds and femtofarads !!!
#   > You can group clocks that are synchronous to each other, this group of clocks is called a clock domain.
# Units !!!
set_units -capacitance 1.0fF
set_units -time 1.0ps

create_clock -name clk_0 -period ${my_clk_period} [get_db ports clk]
set_clock_transition 1000 clk_0

# - I/O Delay [pS]
set_input_delay  1000 -clock clk_0 [all_inputs -no_clock]
set_output_delay 1000 -clock clk_0 [all_outputs]

# - Input Transition [pS]
set_input_transition 1000 [all_inputs -no_clock]

# - Out Load (fF)
set_load 1000 -min -pin_load [all_outputs]
set_load 3000 -max -pin_load [all_outputs]

# [5] Optimization
# - Partitioning designs into more manageable block sizes for faster run-times and an improved memory footprint
set_db auto_partition true

# - Boundary Optimization
#   > Constant propagation across hierarchies
#   > Removing undriven or unloaded logic connected
#   > Collapsing equal and opposite pins
#   > Hierarchical pin inversion
#   > Rewiring of equivalent signals across hierarchy
# ...

# [6] Synthesis
syn_generic
syn_map

# [7] Analyze the Synthesis Result
report_area     > ./syn/${my_top_level}_syn_area.rep
report_gates    > ./syn/${my_top_level}_syn_gates.rep
report_timing   > ./syn/${my_top_level}_syn_timing.rep

# [8] Export the Design
# - Netlist
write_hdl > ./syn/${my_top_level}_syn.v
# - Synopsys Design Constraints
write_sdc > ./syn/${my_top_level}_syn.sdc
# - Standard Delay Format
write_sdf > ./syn/${my_top_level}_syn.sdf

# To export all necessary files for the Innovus System
write_design -innovus design:${my_top_level} -base_name ./syn/innovus/innovus/

# Display
report_messages
report_timing -lint
