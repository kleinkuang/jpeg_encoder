# Script for Digital IC Implementation using Innovus
# by Lei Kuang
# 20201223

# Project information
set top_name jpeg

# ################################################################################################################################
# [1] Design Import 
# ################################################################################################################################
print "================================================================================================================================" 
print "Design Import"
print "================================================================================================================================" 

setLibraryUnit -cap 1pf
setLibraryUnit -time 1ns

# - Load gate netlist and specify the top module name
set init_verilog ./src/jpeg_syn.v
set init_top_cell jpeg

# - Load .lef file (Library exchange file that process technology information
set init_lef_file ./src/tcb018gbwp7t_6lm.lef

# - Load PWR/GND nets
set init_gnd_net VSS
set init_pwr_net VDD

# - Load MMMC (Multi-Mode Multi Corner), similar to sdc file
set init_mmmc_file ./src/mmmc.view

# - Init design
init_design

# - Tools setup before PreCTS
setDesignMode -process 180
setMultiCpuUsage -localCpu 8

print "================================================================================================================================" 
print "Check Design"
print "================================================================================================================================" 

checkDesign -all

# ################################################################################################################################
# [2] PreCTS: Floorplan & Pin I/Os
# ################################################################################################################################
print "================================================================================================================================" 
print "PreCTS: Floorplan & Pin I/Os"
print "================================================================================================================================" 

# - Specify the floorplan
# > r: ratio
# > d: dimension
#floorplan -r 0.5 0.80 30 30 30 30
floorPlan -d 1950 1250 25 25 25 25
defIn ./src/floorplan.def

# - Specify power rings
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose

addRing -nets {VSS VDD} -width 6 -spacing 2 -offset 2 -center 1 -layer {top M1 bottom M1 left M2 right M2} -type core_rings
sroute -connect {blockPin padPin padRing corePin floatingStripe} -allowJogging true -allowLayerChange true -blockPin useLef

# - Add Stripe (cmds backup, do not use if not sure)
#addStripe -nets {VDD} -direction horizontal -width 2 -spacing 2 -layer METAL1 -start_offset 200 -set_to_set_distance 200
#addStripe -nets {VSS} -direction vertical   -width 2 -spacing 2 -layer METAL2 -start_offset 200 -set_to_set_distance 200
#sroute -connect {blockPin padPin padRing corePin floatingStripe} -allowJogging true -allowLayerChange true -blockPin useLef

# - Specify the pin placement
loadIoFile ./src/pins.io

# - Place tap cells to avoid LATCH-UP
addWellTap -cell TAPCELLBWP7T -cellInterval 40 -inRowOffset 10 -prefix WELLTAP

# ################################################################################################################################
# [3] PreCTS: Placement
# ################################################################################################################################
print "================================================================================================================================" 
print "Set MMMC"
print "================================================================================================================================"

# Timing constraint from synthesis
create_constraint_mode -name timing_constraint -sdc_files ./src/jpeg_syn.sdc

# Library corner sets
#   PVT : process, voltage, temperature
#   tc  : typical case, typical pvt
#   bc  : best case
#   wc  : worst case, low v, high t, slow p
create_library_set -name lib_typc -timing /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/tcb018gbwp7ttc.lib
create_library_set -name lib_fast -timing /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/tcb018gbwp7tbc.lib
create_library_set -name lib_slow -timing /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/tcb018gbwp7twc.lib

# rc_corner
create_rc_corner -name rc_typc \
    -cap_table /ibe/local/cadence/kits/tsmc/180n_BCD/libs/gp_digital/Back_End/lef/tcb018gbwp7t_270a/techfiles/captable/t018lo_1p6m_typical.captable \
    -T                25.0 \
    -preRoute_res     1.0 \
    -preRoute_cap     1.0 \
    -preRoute_clkres  0.0 \
    -preRoute_clkcap  0.0 \
    -postRoute_res    {1.0 1.0 1.0} \
    -postRoute_cap    {1.0 1.0 1.0} \
    -postRoute_xcap   {1.0 1.0 1.0} \
    -postRoute_clkres {0.0 0.0 0.0} \
    -postRoute_clkcap {0.0 0.0 0.0} \
    -qx_tech_file {/ibe/local/cadence/kits/tsmc/180n_BCD/Assura/lvs_rcx/qrcTechFile}

# delay_corner
#   delay corner      = timing library plus rc_corner
#   worst-case corner = max delay / affects setup time
#   best-case corner  = min delay / affects hold time
create_delay_corner -name dc_typc -library_set {lib_typc} -rc_corner {rc_typc}
create_delay_corner -name dc_fast -library_set {lib_fast} -rc_corner {rc_typc}
create_delay_corner -name dc_slow -library_set {lib_slow} -rc_corner {rc_typc}

# analysis_view
create_analysis_view -name av_typc -delay_corner {dc_typc} -constraint_mode {timing_constraint}
create_analysis_view -name av_fast -delay_corner {dc_fast} -constraint_mode {timing_constraint}
create_analysis_view -name av_slow -delay_corner {dc_slow} -constraint_mode {timing_constraint}

# set_analysis_view
set_analysis_view -setup {av_typc} -hold  {av_typc}
set_analysis_view -setup {av_slow} -hold  {av_fast}

print "================================================================================================================================" 
print "PreCTS: Placement"
print "================================================================================================================================" 

# - Place standard cells
setPlaceMode -timingDriven true -ignoreScan true -congEffort high
place_opt_design
setDrawView place

# - Add TIEH and TIEL cells
addTieHiLo -cell "TIEHBWP7T TIELBWP7T"
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
applyGlobalNets

# - Report timing and optimize
# > create trial route, extract delays, analyze timing, generate reports
# > resize gates, restructure netlist, add/delete buffers, swap pins, move instances
print "================================================================================================================================" 
print "PreCTS: Timing Analysis and Optimization"
print "================================================================================================================================"

setOptMode -effort high
setOptMode -fixDRC true
setOptMode -fixFanOutLoad true
setOptMode -optimizeFF true
setOptMode -holdTargetSlack 0.0
setOptMode -setupTargetSlack 0.0

timeDesign -preCTS
optDesign -preCTS

print "================================================================================================================================" 
print "PreCTS: Report Timing"
print "================================================================================================================================"
report_timing

# ################################################################################################################################
# [4] CTS: Clock Tree Synthesis
# ################################################################################################################################
print "================================================================================================================================" 
print "CTS: Clock Tree Synthesis"
print "================================================================================================================================"

# - Create a clock tree specification according to .sdc
create_ccopt_clock_tree_spec -filename ccopt.spec
source ccopt.spec

# - Run CTS
ccopt_design

# - Report timing and optimize if necessary (slack <0)
print "================================================================================================================================" 
print "CTS: Timing Analysis and Optimization"
print "================================================================================================================================"
set_interactive_constraint_modes [ all_constraint_modes -active ]
set_propagated_clock clk

timeDesign -postCTS
optDesign -postCTS
timeDesign -postCTs -hold
optDesign -postCTS -hold

print "================================================================================================================================" 
print "PostCTS: Report Timing"
print "================================================================================================================================"
report_timing

# - Report clock tree
report_ccopt_clock_trees -filename clock_trees.rpt
report_ccopt_skew_groups -filename skew_groups.rpt

# - Open the CCOpt Clock Tree Debugger (CTD) Window. 
#ctd_win

# ################################################################################################################################
# [5] PostCTS: Timing Driven Routing
# ################################################################################################################################
# NanoRoute is a timing driven router:
# Crosstalk  and Signal Integrity
# DRC / LVS issue
# Process antenna violation
# Nets and via optimization

print "================================================================================================================================" 
print "PostCTS: Timing Driven Routing"
print "================================================================================================================================"

setNanoRouteMode -drouteAutoStop false
setNanoRouteMode -routeBottomRoutingLayer default
setNanoRouteMode -drouteEndIteration default
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -routeWithSiDriven false
setNanoRouteMode -routeBottomRoutingLayer 1
setNanoRouteMode -routeTopRoutingLayer 5
setNanoRouteMode -routeAntennaCellName ANTENNABWP7T
setNanoRouteMode -routeInsertAntennaDiode true
setNanoRouteMode -drouteFixAntenna true

# - Run Nano routing
routeDesign -globalDetail

# - Optimization
print "================================================================================================================================" 
print "PostRoute: Timing Analysis and Optimization"
print "================================================================================================================================" 

setAnalysisMode -analysisType onChipVariation
setExtractRCMode -engine postRoute
#setExtractRCMode -effortLevel signoff 

timeDesign -postRoute 
optDesign -postRoute -setup
timeDesign -hold -postRoute
optDesign -postRoute  -hold

print "================================================================================================================================" 
print "PostRoute: Report Timing"
print "================================================================================================================================"
report_timing

# - Add filler cells
print "================================================================================================================================" 
print "PostCTS: Filler Filling"
print "================================================================================================================================" 

addDeCapCellCandidates DCAP4BWP7T 4
addDeCapCellCandidates DCAP8BWP7T 8
addDeCapCellCandidates DCAP16BWP7T 16
addDeCapCellCandidates DCAP32BWP7T 32
addDeCapCellCandidates DCAP64BWP7T 64
addDeCap -totcap 20000 -prefix DCAP

# - Add Core Filler
setFillerMode -add_fillers_with_drc true
addFiller -cell FILL1BWP7T FILL2BWP7T FILL4BWP7T FILL8BWP7T FILL16BWP7T FILL32BWP7T FILL64BWP7T -prefix FILLER

# > do an eco route to fix DRC issue after Filler insertion
ecoRoute -target

# - Add Dummy Metal
#addMetalFill -layer { METAL1 METAL2 METAL3 METAL4 METAL5 METAL6 } -timingAware sta -slackThreshold 0.22

print "================================================================================================================================" 
print "PostRoute: Verfication"
print "================================================================================================================================" 

# - Verify routing
# > the connectivity (open, short)
verifyConnectivity
# > DRC rules (metal spacing, cells overlap, …)
verifyGeometry
# > process antenna
verifyProcessAntenna

# ################################################################################################################################
# [6] SignOff: Timing Check
# ################################################################################################################################
print "================================================================" 
print "SignOff: Timing Check"
print "================================================================"

timeDesign -signoff
timeDesign -signoff -hold

# - Timing Debugger
report_timing > ./report_timing.txt
report_power > ./report_power.txt
#load_timing_debug_report top.mtarpt

# ################################################################################################################################
# [7] Write Results
# ################################################################################################################################
print "================================================================" 
print "Write Results"
print "================================================================"

# - Final netlist
saveNetlist ./imp/${top_name}.v
saveNetlist ./imp/${top_name}_fillcap.v -excludeLeafCell -includePhysicalInst
# - Export .sdf for simulation
write_sdf ./imp/${top_name}.sdf
# - ?
defOut -floorplan -netlist -routing ./imp/${top_name}.def
# - SPI
v2lvs -l ./lib/tcb018gbwp7t_header.v -v ./imp/${top_name}_fillcap.v -o ./imp/${top_name}.spi

# - Write GDSII
setStreamOutMode -snapToMGrid true
streamOut ./imp/${top_name}.gdsii \
    -mapFile ./src/gdsii.map \
    -structureName ${top_name} \
    -mode ALL \
    -stripes 1 \
    -units 1000