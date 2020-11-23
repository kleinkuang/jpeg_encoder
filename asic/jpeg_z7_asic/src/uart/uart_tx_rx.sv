// File:    uart_tx_rx.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

// UART Transceiver for IP Validation
// - Suggest baudrate <= 38400
// - Must loopback to check feasibility !!!

module uart_tx_rx
(
    input  logic        sys_clk,
    input  logic        sys_nrst,
    // User interface
    input  logic        lp_mode,    // 1: Loopback Mode
    // - TX
    input  logic        tx_valid,
    input  logic [31:0] tx_data,
    output logic        tx_full,
    input  logic        tx_en,
    // - RX
    output logic        rx_valid,
    output logic [7:0]  rx_data,
    // Physical interface
    output logic        TX,
    input  logic        RX
);

// ----------------------------------------------------------------
// Baudrate Tick
// ----------------------------------------------------------------
logic rx_tick;
logic tx_tick;

uart_baudrate baudrate
(
    .clk     (sys_clk),
    .nrst    (sys_nrst),
    .rx_tick (rx_tick),
    .tx_tick (tx_tick)
);

// ----------------------------------------------------------------
// RX
// ----------------------------------------------------------------

uart_rx rx
(
    .clk      (sys_clk),
    .nrst     (sys_nrst),
    // User interface
    .rx_tick  (rx_tick),
    .rx_valid (rx_valid),
    .rx_data  (rx_data),
    // Physical interface
    .RX       (RX)
);

// ----------------------------------------------------------------
// TX
// ----------------------------------------------------------------
logic       tx_req;
logic       tx_rdy;

uart_tx tx
(
    .clk     (sys_clk),
    .nrst    (sys_nrst),
    // User interface
    .tx_tick (tx_tick),
    .tx_req  (tx_req),
    .tx_data (fifo_dout),
    .tx_rdy  (tx_rdy),
    // Physical interface
    .TX      (TX)
);

// ----------------------------------------------------------------
// TX FIFO
// ----------------------------------------------------------------
logic       fifo_empty;
logic       fifo_rd_en;
logic       fifo_full;
logic [7:0] fifo_dout;

assign tx_full = fifo_full;

fifo_uart_tx fifo
(
    .clk   (sys_clk),
    .rst   (~sys_nrst),

    .wr_en (lp_mode ? rx_valid : tx_valid),
    .din   (lp_mode ? rx_data  : tx_data),
    .full  (fifo_full),

    .rd_en (fifo_rd_en),
    .dout  (fifo_dout),
    .empty (fifo_empty)
);

// TX Controller
enum {idle, avail, cycle} tx_state;

always_ff @ (posedge sys_clk, negedge sys_nrst)
    if(~sys_nrst)
        tx_state <= idle;
    else
        case(tx_state)
            idle:   if(fifo_rd_en)
                        tx_state <= avail;
            avail:  if(tx_rdy)
                        if(~fifo_rd_en)
                            tx_state <= idle;    
        endcase
        
assign tx_req     = tx_state==avail & tx_rdy;
assign fifo_rd_en = (tx_state==idle | tx_rdy) & ~fifo_empty & tx_en;

endmodule
