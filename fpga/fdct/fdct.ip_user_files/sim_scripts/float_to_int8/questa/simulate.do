onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float_to_int8_opt

do {wave.do}

view wave
view structure
view signals

do {float_to_int8.udo}

run -all

quit -force
