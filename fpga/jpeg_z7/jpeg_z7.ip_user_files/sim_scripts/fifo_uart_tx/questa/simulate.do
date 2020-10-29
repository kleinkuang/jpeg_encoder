onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_uart_tx_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_uart_tx.udo}

run -all

quit -force
