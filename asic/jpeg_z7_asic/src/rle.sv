// File:    rle.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

// Run length encoding for JPEG MCUs of size 8x8

module rle
(
    input  logic        clk,
    input  logic        nrst,
    
    input  logic [7:0]  data,
    input  logic        data_valid,

    output logic [3:0]  rrrr,
    output logic [7:0]  magn,
    output logic        isdc,
    output logic        eoi,
    output logic        rrmg_valid
);

logic [3:0]  rrrr_int;
logic [7:0]  magn_int;
logic        isdc_int;
logic        eoi_int;
logic        rrmg_int_valid;

logic [5:0] cnt_pixel; // 0..63
logic [7:0] cnt_mcu;   // 0..255
logic [3:0] cnt_zeros; // 0..15

// Count input data
always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst) begin
        cnt_pixel <= '0;
        cnt_mcu   <= '0;
    end
    else
        if(data_valid) begin
            cnt_pixel <= cnt_pixel + 6'd1;
            if(cnt_pixel=='1)
                cnt_mcu <= cnt_mcu + 8'd1;
        end
end

// Count input zeros
always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        cnt_zeros <= '0;
    else
        if(data_valid & ~isdc_int)
            if(cnt_pixel=='1 | data!='0)
                cnt_zeros <= '0;
            else
                cnt_zeros <= cnt_zeros + 4'd1;          
end

// Run length encoding
// - if last data is zero, output EOB (0,0)
assign rrrr_int = cnt_pixel=='1 & data=='0 ? '0 : cnt_zeros;
assign magn_int = data;
// - valid if
//   a) data is not zero
//   b) detect successive zeros of length 16
//      how do we know if the detection is valid (instead of end of block) without knowing the remain sequence ?
//      -> buffer it first and determine whether it is actually end of block
//   c) end of block
//   d) dc
assign rrmg_int_valid = (data!='0 | rrrr_int=='1 | cnt_pixel=='1 | isdc_int) & data_valid;

assign isdc_int = cnt_pixel=='0 & data_valid;
assign eoi_int  = cnt_pixel=='1 & cnt_mcu=='1 & data_valid;

// Shift Registers
// - Ignore 0xF0 depends on the following code
// - Typical Scenario
//   e.g., ( 0, 0), (15, 0), (15, 0), (15, 0)
//         EOB      IGNORE   IGNORE   IGNORE
//   e.g., ( 0, 0), (15, 0), ( 2, 2), ( 1, 1)
//         EOB      IGNORE,  VALID,   VALID
//   e.g,  ( 2, 2), (15, 0), ( 1, 1), (15, 0)
//         VALID    VALID    VALID    VALID

logic [13:0] rrmg_ram [0:3];
logic [2:0]  rrmg_cnt;

genvar i;
generate 
// ----------------------------------------------------------------
    for(i=0; i<=3; i++) begin: ram
        always_ff @ (posedge clk, negedge nrst) begin
            if(~nrst)
                rrmg_ram[i] <= '0;
            else
                if(rrmg_int_valid)
                    if(i==0)
                        rrmg_ram[i] <= {eoi_int, isdc_int, rrrr_int, magn_int};
                    else
                        rrmg_ram[i] <= rrmg_ram[i-1];
        end
    end
// ----------------------------------------------------------------
endgenerate

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        rrmg_cnt <= '0;
    else
        if(rrmg_int_valid)
            if(rrmg_cnt[2]!='1)
                rrmg_cnt <= rrmg_cnt + 3'd1;
end

assign eoi  = rrmg_ram[3][13] & rrmg_valid;
assign isdc = rrmg_ram[3][12] & rrmg_valid;
assign rrrr = rrmg_ram[3][11:8];
assign magn = rrmg_ram[3][7:0];

// Output valid
logic rrmg_valid_int;

assign rrmg_valid_int = rrmg_int_valid & rrmg_cnt[2];

always_comb begin
    rrmg_valid = rrmg_valid_int;

    if(rrmg_ram[3][11:0]==12'hF00)
        if(rrmg_ram[2][11:0]=='0)
            rrmg_valid = '0;
        else
            if(rrmg_ram[2][11:0]==12'hF00)
                if(rrmg_ram[1][11:0]=='0)
                    rrmg_valid = '0;
            else
                if(rrmg_ram[1][11:0]==12'hF00)
                    if(rrmg_ram[0][11:0]=='0)
                        rrmg_valid = '0;
end

endmodule
