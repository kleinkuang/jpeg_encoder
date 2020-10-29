// File:    zigzag.sv
// Author:  Lei Kuang
// Date:    25th June 2020
// @ Imperial College London

// Zigzag sequencer for JPEG 8x8 MCU
// - Computation instead of LUT
// Ref. JPEG_BASELINE_ASIC
// - Zigzag

module zigzag
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid
);

logic [3:0] cnt_sum;    // 0..14, sum of diagonal
logic [2:0] cnt;        // 0..cnt_end
logic [2:0] cnt_end;    // Determined by cnt_sum
logic [2:0] cnt_p;
logic [2:0] cnt_n;
logic       cnt_mux;    // (x,y) = cnt_mux ? (p,n) : (n:p)

logic [5:0] addr_in;
logic [5:0] addr_out;

// ----------------------------------------------------------------
// Zigzag sequence - Index Computation
// ----------------------------------------------------------------
logic  end_of_diagonal;
assign end_of_diagonal = cnt == cnt_end;

// Count from 0~14 for each diagonal
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        cnt_sum <= '0;
    else
        if(din_valid & end_of_diagonal)
            cnt_sum <= cnt_sum==4'd14 ? '0 : cnt_sum + 4'd1;

// Compute counter upper limit
assign cnt_end = ~cnt_sum[3] ? cnt_sum[2:0] : (3'd6 - cnt_sum[2:0]);

// Count from 0~cnt_end
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        cnt <= '0;
    else
        if(din_valid)
            cnt <= cnt==cnt_end ? '0 : cnt + 3'd1;

// Compute coordinate
assign cnt_mux = cnt_sum[3] ^ cnt_sum[0];
assign cnt_p   = ~cnt_sum[3] ? cnt : 3'd7 - cnt;
assign cnt_n   = cnt_sum - cnt_p;

assign addr_out = cnt_mux ? {cnt_p, cnt_n} : {cnt_n, cnt_p};

// ----------------------------------------------------------------
// Ping-pong Buffer - Dual 8b x 64 RAM
// ----------------------------------------------------------------
// Write data in numerical order
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        addr_in <= '0;
    else
        if(din_valid)
            addr_in <= addr_in + 6'd1;

// Ready for output
logic out_ready;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        out_ready <= '0;
    else
        if(~out_ready)
            out_ready <= din_valid & addr_in=='1;

// Out valid
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= din_valid & out_ready;

// Ping-pong buffer
logic ram_sel;
logic ram_sel_delay;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        ram_sel       <= '0;
        ram_sel_delay <= '0;
    end
    else begin
        if(din_valid & addr_in=='1)
            ram_sel <= ~ram_sel;
        ram_sel_delay <= ram_sel;
    end
    
logic [7:0] dout_0;
logic [7:0] dout_1;

ram_8bx64 ram_0
(
    .clk    (clk),
    .we     (ram_sel & din_valid),
    .addr   (ram_sel ? addr_in : addr_out),
    .din    (din),
    .dout   (dout_0)
);

ram_8bx64 ram_1
(
    .clk    (clk),
    .we     (~ram_sel & din_valid),
    .addr   (~ram_sel ? addr_in : addr_out),
    .din    (din),
    .dout   (dout_1)
);

assign dout = ram_sel_delay ? dout_1 : dout_0;

endmodule
