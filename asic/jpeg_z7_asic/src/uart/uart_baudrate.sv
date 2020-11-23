// File:    uart_baudrate.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module uart_baudrate
(
    input  logic clk,
    input  logic nrst,
    output logic rx_tick,
    output logic tx_tick
);

parameter RX_CNT_MAX   = 50_000_000 / (115200 * 16);
parameter TX_CNT_MAX   = 50_000_000 / 115200;
parameter RX_CNT_WIDTH = $clog2(RX_CNT_MAX);
parameter TX_CNT_WIDTH = $clog2(TX_CNT_MAX);

logic [RX_CNT_WIDTH-1:0] rx_cnt;
logic [TX_CNT_WIDTH-1:0] tx_cnt;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        rx_cnt <= '0;
        tx_cnt <= '0;
    end
    else begin
        rx_cnt = rx_cnt==RX_CNT_MAX ? '0 : rx_cnt + 1;
        tx_cnt = tx_cnt==TX_CNT_MAX ? '0 : tx_cnt + 1;
    end
    
assign tx_tick = tx_cnt=='0;
assign rx_tick = rx_cnt=='0;

endmodule
