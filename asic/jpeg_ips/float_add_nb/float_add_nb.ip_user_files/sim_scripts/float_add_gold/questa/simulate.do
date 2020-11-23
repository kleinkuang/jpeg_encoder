onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float_add_gold_opt

do {wave.do}

view wave
view structure
view signals

do {float_add_gold.udo}

run -all

quit -force
