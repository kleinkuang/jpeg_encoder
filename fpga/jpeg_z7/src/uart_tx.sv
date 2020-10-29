// File:    uart_tx.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module uart_tx
(
    input  logic        clk,
    input  logic        nrst,
    // User interface
    input  logic        tx_tick,
    input  logic        tx_req,
    input  logic [7:0]  tx_data,
    output logic        tx_rdy,
    // Physical interface
    output logic        TX
);

logic [2:0] bit_i;
logic [7:0] bits;

enum {idle, sync, start, data, stop} state;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        state <= idle;
        bit_i <= '0;
        TX    <= '1;
    end
    else
        case(state)
            idle:   if(tx_req) begin
                        bit_i <= '0;
                        state <= start;
                        bits  <= tx_data;
                    end
                        
            start:  if(tx_tick) begin
                        state <= data;
                        TX    <= '0;
                    end
                    
            data:   if(tx_tick) begin
                        if(bit_i==3'd7)
                            state <= stop;
                        else
				            bit_i <= bit_i + 3'd1;

			            TX <= bits[bit_i];
                    end
                    
            stop:   if(tx_tick) begin
                        state <= idle;
                        TX    <= '1;
                    end
        endcase
        
assign tx_rdy = state==idle;

endmodule
