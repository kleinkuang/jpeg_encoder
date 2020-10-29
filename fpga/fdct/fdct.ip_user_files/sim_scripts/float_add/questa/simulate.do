onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float_add_opt

do {wave.do}

view wave
view structure
view signals

do {float_add.udo}

run -all

quit -force
