// File:    booth_algo.sv
// Author:  Lei Kuang
// Date:    11th November 2020
// @ Imperial College London

// Modified Booth Algorithm Implemenation based on Radix 2

module booth_algo #
(
    parameter WIDTH = 8,
    parameter BSTEP = 0
)
(
    input  logic                clk,
    input  logic                nrst,
    input  logic [WIDTH-1:0]    din_multiplicand,   // Multiplicand
    input  logic [WIDTH-1:0]    din_multilplier,    // Multiplier mask for booth algorithm
    input  logic [WIDTH+1:0]    din_addend,
    input  logic [WIDTH-1:0]    din_augend,
    input  logic                din_valid,
    output logic [WIDTH-1:0]    dout_multiplicand,
    output logic [WIDTH-1:0]    dout_multilplier,
    output logic [WIDTH+1:0]    dout_addend,
    output logic [WIDTH+1:0]    dout_augend,
    output logic                dout_valid
);

// ----------------------------------------------------------------
// Booth Mask
// ----------------------------------------------------------------
logic [2:0] booth_mask;

// Parameter specific, no need to synthesize a shifter
if(BSTEP==0)
    assign booth_mask = {din_multilplier[1:0], 1'b0};
else
    assign booth_mask = din_multilplier >> ((BSTEP<<1)-1);
    
// b[i+1]   b[i]    b[i-1]  Booth Operation
// 0        0       0        0
// 0        0       1        1
// 0        1       0        1
// 0        1       1        2
// 1        0       0       -2
// 1        0       1       -1
// 1        1       0       -1
// 1        1       1        0

logic to_do;
logic to_2s;
logic to_sf;

always_comb begin
    to_2s = '0; // To 2's complement
    to_sf = '0; // To shift
    to_do = '1; // To do else zero
    
    case(booth_mask)
        3'b000: to_do = '0;
        3'b011: to_sf = '1;
        3'b100: begin
                to_sf = '1;
                to_2s = '1;
                end
        3'b101: to_2s = '1;
        3'b110: to_2s = '1;
        3'b111: to_do = '0;
    endcase
end
    
// ----------------------------------------------------------------
// Booth Addend
// ----------------------------------------------------------------
logic [WIDTH+1:0] din_multiplicand_ex; // Extend sign bits
logic [WIDTH+1:0] din_multiplicand_2s;
logic [WIDTH+1:0] din_multiplicand_sf;

assign din_multiplicand_ex = {din_multiplicand[WIDTH-1], din_multiplicand[WIDTH-1], din_multiplicand};
assign din_multiplicand_2s = to_2s ? ~din_multiplicand_ex + 1 : din_multiplicand_ex;
assign din_multiplicand_sf = din_multiplicand_2s << to_sf;

always_ff @ (posedge clk)
    dout_addend <= to_do ? din_multiplicand_sf : '0;

// ----------------------------------------------------------------
// Addition and Output Buffering
// ----------------------------------------------------------------
always_ff @ (posedge clk, negedge nrst)
    if(~nrst) begin
        dout_valid <= '0;
    end
    else begin
        dout_valid <= din_valid;
    end
    
always_ff @ (posedge clk) begin
    // Addition
    dout_augend <= {din_augend[WIDTH-1], din_augend[WIDTH-1], din_augend} + din_addend;
    // Output
    dout_multiplicand <= din_multiplicand;
    dout_multilplier  <= din_multilplier;
end

endmodule
