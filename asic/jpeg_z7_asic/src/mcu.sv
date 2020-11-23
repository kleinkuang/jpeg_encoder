// File:    mcu.sv
// Author:  Lei Kuang
// Date:    17th June 2020
// @ Imperial College London

// Dual 8x 8bx128 RAM Array for 8x8 MCU Buffering (Minimum Coded Uint)
// - Buffering frame data
// - Cycling ach MCU column by column for 8 times

module mcu
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [7:0]  dout [7:0],
    output logic        dout_valid
);

// ----------------------------------------------------------------
// Controller
// ----------------------------------------------------------------
// Buffer each row into a 8bx128 RAM
logic [6:0] col_cnt; // 0~127
logic [2:0] row_cnt; // 0~7

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst) begin
        col_cnt <= '0;
        row_cnt <= '0;
    end
    else begin
        if(din_valid) begin
            col_cnt <= col_cnt + 7'd1;

            if(col_cnt=='1)
                row_cnt <= row_cnt + 3'd1;
        end
    end
end

// RAM Multipliexer
logic ram_sel;
logic ram_sel_delay;
logic ram_rdy;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        ram_sel       <= '0;
        ram_sel_delay <= '0;
        ram_rdy       <= '0;
    end
    else begin
        if(col_cnt=='1 & row_cnt=='1 & din_valid) begin
            ram_sel <= ~ram_sel;
            ram_rdy <= '1;
        end

        ram_sel_delay <= ram_sel;
    end
        
// ----------------------------------------------------------------
// RAM Array: Dual 8x 8bx128
// ----------------------------------------------------------------
logic [7:0] ram_array_dout_0 [7:0];
logic [7:0] ram_array_dout_1 [7:0];
logic [7:0] ram_array_we;

logic [6:0] wr_addr;
logic [6:0] rd_addr;

assign wr_addr = col_cnt;
assign rd_addr = {row_cnt, col_cnt[6], col_cnt[2:0]};

assign ram_array_we = 8'd1 << row_cnt;

genvar i;
generate 
// ----------------------------------------------------------------
    for(i=0; i<8; i++) begin
        ram_8bx128 ram_0
        (
            .clk    (clk),
            .we     (ram_array_we[i] & ~ram_sel),
            .addr   (ram_sel ? rd_addr : wr_addr),
            .din    (din),
            .dout   (ram_array_dout_0[i])
        );

        ram_8bx128 ram_1
        (
            .clk    (clk),
            .we     (ram_array_we[i] & ram_sel),
            .addr   (ram_sel ? wr_addr : rd_addr),
            .din    (din),
            .dout   (ram_array_dout_1[i])
        );
    end
// ----------------------------------------------------------------
endgenerate

// The output must not be switched immediately as the output has a latency of 1 clk
assign dout = ram_sel_delay ? ram_array_dout_0 : ram_array_dout_1;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= din_valid & ram_rdy;

endmodule
