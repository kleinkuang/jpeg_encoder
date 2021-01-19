// File:    piso_streamer.sv
// Author:  Lei Kuang
// Date:    14th December 2020
// @ Imperial College London

// PISO FIFO Streamer

module piso_streamer #
(
    parameter DEPTH_PWR = 4 // Depth is 2^DEPTH_PWR
)
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [31:0] din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid,
    output logic        full
);

logic [31:0] mem_int [(1<<DEPTH_PWR)-1:0];

logic [DEPTH_PWR:0] wr_cnt;
logic [DEPTH_PWR:0] rd_cnt;

// -------------------------------------------------------------
// Write Data
// -------------------------------------------------------------
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        wr_cnt <= '0;
    else
        if(din_valid)
            wr_cnt <= wr_cnt + 1;
            
always_ff @ (posedge clk)
    if(din_valid)
        mem_int[wr_cnt[DEPTH_PWR-1:0]] <= din;

// -------------------------------------------------------------
// Read Data
// -------------------------------------------------------------
logic       so_avail;
logic [1:0] so_cnt;

assign so_avail = wr_cnt[DEPTH_PWR-1:0]!=rd_cnt[DEPTH_PWR-1:0];


always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        so_cnt <= '0;
        rd_cnt <= '0;
    end
    else begin
        if(so_avail)
            so_cnt <= so_cnt + 1;
        if(so_avail & so_cnt=='1)
            rd_cnt <= rd_cnt + 1;
    end
    
// -------------------------------------------------------------
// Output
// -------------------------------------------------------------
logic [31:0] dout_sf;

assign dout_sf = mem_int[rd_cnt[DEPTH_PWR-1:0]] << {so_cnt, 3'd0};

assign dout = dout_sf[31:24];
assign dout_valid = so_avail;

// -------------------------------------------------------------
// Error Flag
// -------------------------------------------------------------
logic full_int;

assign full_int  = ~so_avail & (wr_cnt[DEPTH_PWR] ^ rd_cnt[DEPTH_PWR]);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        full <='0;
    else
        if(~full)
            full <= full_int;

// -------------------------------------------------------------
// Debug
// -------------------------------------------------------------
/*logic [DEPTH_PWR-1: 0] diff_cnt;
logic [DEPTH_PWR-1: 0] diff_max;

assign diff_cnt = wr_cnt[DEPTH_PWR] ? (wr_cnt - rd_cnt) : ({rd_cnt[DEPTH_PWR], wr_cnt[DEPTH_PWR-1:0]} - rd_cnt[DEPTH_PWR-1:0]);

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        diff_max <='0;
    else
        if(diff_max < diff_cnt)
            diff_max <= diff_cnt;*/

endmodule
