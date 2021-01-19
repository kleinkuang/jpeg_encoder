// File:    jpeg_uart.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module jpeg_uart
(
    input  logic        clk,
    input  logic        rst,
    // User interface
    //input  logic        loopback,
    input  logic [1:0]  mux_out,
    // Physical interface
    output logic        TX,
    input  logic        RX,
    // LEDs
    output logic [3:0]  LED
);

// ----------------------------------------------------------------
// Clock divider
// ----------------------------------------------------------------
logic sys_clk;
logic sys_nrst;

clk_div clk_inst
(
    .reset    (rst),
    .locked   (sys_nrst),
    .clk_in1  (clk),
    .clk_out1 (sys_clk)
);

// ----------------------------------------------------------------
// UART Streamer
// ----------------------------------------------------------------
logic        rx_valid;
logic [7:0]  rx_data;

logic        tx_valid;
logic [7:0]  tx_data;
logic        tx_full;

uart_tx_rx uart_inst
(
    .sys_clk  (sys_clk),
    .sys_nrst (sys_nrst),
    // User interface
    .lp_mode  ('0),    // 1: Loopback Mode
    // - TX
    .tx_valid (tx_valid),
    .tx_data  (tx_data),
    .tx_full  (tx_full),
    .tx_en    ('1),
    // - RX
    .rx_valid (rx_valid),
    .rx_data  (rx_data),
    // Physical interface
    .TX       (TX),
    .RX       (RX)
);

// ----------------------------------------------------------------
// JPEG
// ----------------------------------------------------------------
logic jpeg_full;

jpeg jpeg_inst
(
    .clk        (sys_clk),
    .nrst       (sys_nrst),
    .mux_in     ('0),
    .mux_out    (mux_out),
    .din        (rx_data),
    .din_valid  (rx_valid),
    .dout       (tx_data),
    .dout_valid (tx_valid),
    .full       (jpeg_full)
);

always_ff @ (posedge sys_clk, negedge sys_nrst)
    if(~sys_nrst)
        LED <= '0;
    else
        if(LED=='0 & (jpeg_full | tx_full))
            LED <= '1;

endmodule
