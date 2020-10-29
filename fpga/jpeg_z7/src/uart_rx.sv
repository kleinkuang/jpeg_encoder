// File:    uart_rx.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module uart_rx
(
    input  logic        clk,
    input  logic        nrst,
    // User interface
    input  logic        rx_tick,
    output logic        rx_valid,
    output logic [7:0]  rx_data,
    // Physical interface
    input  logic        RX
);

logic [3:0] bit_i;  // 0..8
logic [7:0] bits;
logic [3:0] os_cnt; // 0..15

// ----------------------------------------------------------------
// Double FF for synchronous, reduce the metastabiliy occurance
// ----------------------------------------------------------------
logic       RX_ff0;
logic       RX_sync;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        RX_ff0  <= '1;
        RX_sync <= '1;
    end
    else begin
        RX_ff0  <= RX;
        RX_sync <= RX_ff0;
    end

// One-hot coding
enum {start=0, data=1, valid=2, stop=4} state;
//enum {start, data, valid, stop} state;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        state  <= start;
        os_cnt <= '0;
    end
    else begin
        case(state)
            start:  // RX=0
                    if(rx_tick) begin
                        if(~RX_sync | os_cnt!='0)
                            os_cnt <= os_cnt + 4'd1;

                        if(os_cnt=='1) begin
                            state  <= data;
                            bit_i  <= '0;
                        end
                    end
                    
            data:   if(rx_tick) begin
                        os_cnt <= os_cnt + 5'd1;
                        
                        // Sample at the middle
                        if(os_cnt==4'd7) begin
                            bits[bit_i[2:0]] <= RX_sync;
                            bit_i <= bit_i + 4'd1;
                        end

                        if(bit_i[3] & os_cnt=='1)
                            state  <= valid;
                    end
                    
            valid:  state  <= stop;
            
            stop:   if(rx_tick) begin
                        // Ealier termination if start
                        if(os_cnt =='1 | os_cnt[3] & ~RX_sync) begin
                            state  <= start;
                            os_cnt <= '0;
                        end
                        else
                            os_cnt <= os_cnt + 5'd1;
                    end
        endcase
    end

assign rx_data  = bits;
assign rx_valid = state==valid;

endmodule
