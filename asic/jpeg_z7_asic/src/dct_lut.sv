// File:    dct_lut.sv
// Author:  Lei Kuang
// Date:    16th June 2020
// @ Imperial College London

// Dual-port ROM Array for DCT Vector
/*
   0.353553390593274   0.353553390593274   0.353553390593274   0.353553390593274   0.353553390593274   0.353553390593274   0.353553390593274   0.353553390593274
   0.490392640201615   0.415734806151273   0.277785116509801   0.097545161008064  -0.097545161008064  -0.277785116509801  -0.415734806151273  -0.490392640201615
   0.461939766255643   0.191341716182545  -0.191341716182545  -0.461939766255643  -0.461939766255643  -0.191341716182545   0.191341716182545   0.461939766255643
   0.415734806151273  -0.097545161008064  -0.490392640201615  -0.277785116509801   0.277785116509801   0.490392640201615   0.097545161008064  -0.415734806151273
   0.353553390593274  -0.353553390593274  -0.353553390593274   0.353553390593274   0.353553390593274  -0.353553390593273  -0.353553390593274   0.353553390593273
   0.277785116509801  -0.490392640201615   0.097545161008064   0.415734806151273  -0.415734806151273  -0.097545161008064   0.490392640201615  -0.277785116509801
   0.191341716182545  -0.461939766255643   0.461939766255643  -0.191341716182545  -0.191341716182545   0.461939766255643  -0.461939766255643   0.191341716182545
   0.097545161008064  -0.277785116509801   0.415734806151273  -0.490392640201615   0.490392640201615  -0.415734806151273   0.277785116509801  -0.097545161008064
*/

module dct_lut
(
    //input  logic        clk,
    input  logic [2:0]  row_sel,
    input  logic [2:0]  col_sel,
    output logic [31:0] row_vec [7:0],
    output logic [31:0] col_vec [7:0]
);

logic [31:0] rom_int [0:63];

// Multiplexer
genvar i;
generate 
// ----------------------------------------------------------------
    for(i=0; i<8; i++) begin
        assign row_vec[i] = rom_int[row_sel*8 + i]; // Row vector for A
        assign col_vec[i] = rom_int[col_sel*8 + i]; // Col vectir for A^T (same as above)
    end
// ----------------------------------------------------------------
endgenerate

// ROM Assignment
assign rom_int[0 ] = 32'h3eb504f3;
assign rom_int[1 ] = 32'h3eb504f3;
assign rom_int[2 ] = 32'h3eb504f3;
assign rom_int[3 ] = 32'h3eb504f3;
assign rom_int[4 ] = 32'h3eb504f3;
assign rom_int[5 ] = 32'h3eb504f3;
assign rom_int[6 ] = 32'h3eb504f3;
assign rom_int[7 ] = 32'h3eb504f3;
assign rom_int[8 ] = 32'h3efb14be;
assign rom_int[9 ] = 32'h3ed4db31;
assign rom_int[10] = 32'h3e8e39da;
assign rom_int[11] = 32'h3dc7c5c2;
assign rom_int[12] = 32'hbdc7c5c2;
assign rom_int[13] = 32'hbe8e39da;
assign rom_int[14] = 32'hbed4db31;
assign rom_int[15] = 32'hbefb14be;
assign rom_int[16] = 32'h3eec835e;
assign rom_int[17] = 32'h3e43ef15;
assign rom_int[18] = 32'hbe43ef15;
assign rom_int[19] = 32'hbeec835e;
assign rom_int[20] = 32'hbeec835e;
assign rom_int[21] = 32'hbe43ef15;
assign rom_int[22] = 32'h3e43ef15;
assign rom_int[23] = 32'h3eec835e;
assign rom_int[24] = 32'h3ed4db31;
assign rom_int[25] = 32'hbdc7c5c2;
assign rom_int[26] = 32'hbefb14be;
assign rom_int[27] = 32'hbe8e39da;
assign rom_int[28] = 32'h3e8e39da;
assign rom_int[29] = 32'h3efb14be;
assign rom_int[30] = 32'h3dc7c5c2;
assign rom_int[31] = 32'hbed4db31;
assign rom_int[32] = 32'h3eb504f3;
assign rom_int[33] = 32'hbeb504f3;
assign rom_int[34] = 32'hbeb504f3;
assign rom_int[35] = 32'h3eb504f3;
assign rom_int[36] = 32'h3eb504f3;
assign rom_int[37] = 32'hbeb504f3;
assign rom_int[38] = 32'hbeb504f3;
assign rom_int[39] = 32'h3eb504f3;
assign rom_int[40] = 32'h3e8e39da;
assign rom_int[41] = 32'hbefb14be;
assign rom_int[42] = 32'h3dc7c5c2;
assign rom_int[43] = 32'h3ed4db31;
assign rom_int[44] = 32'hbed4db31;
assign rom_int[45] = 32'hbdc7c5c2;
assign rom_int[46] = 32'h3efb14be;
assign rom_int[47] = 32'hbe8e39da;
assign rom_int[48] = 32'h3e43ef15;
assign rom_int[49] = 32'hbeec835e;
assign rom_int[50] = 32'h3eec835e;
assign rom_int[51] = 32'hbe43ef15;
assign rom_int[52] = 32'hbe43ef15;
assign rom_int[53] = 32'h3eec835e;
assign rom_int[54] = 32'hbeec835e;
assign rom_int[55] = 32'h3e43ef15;
assign rom_int[56] = 32'h3dc7c5c2;
assign rom_int[57] = 32'hbe8e39da;
assign rom_int[58] = 32'h3ed4db31;
assign rom_int[59] = 32'hbefb14be;
assign rom_int[60] = 32'h3efb14be;
assign rom_int[61] = 32'hbed4db31;
assign rom_int[62] = 32'h3e8e39da;
assign rom_int[63] = 32'hbdc7c5c2;

endmodule
