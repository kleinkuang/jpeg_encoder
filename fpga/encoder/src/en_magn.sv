// File:    en_magn.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

// Encode DC/AC magnitude

module en_magn
(
    input  logic [7:0] magn,    // magnitude, int8
    output logic [3:0] ssss,    // category
    output logic [7:0] code
);

// When magnitude is negative, the ssss low order bits of (magnitude - 1) are appended
logic [7:0] magn_int;
logic       magn_sig;

assign magn_sig = magn[7];
assign magn_int = magn_sig ? magn - 8'd1 : magn;

// Find the number of leading zeros
// - Flip magnitude if it is negative
logic [7:0] magn_flip;
logic [3:0] nz;

assign magn_flip = magn_sig ? ~magn_int : magn_int;

lead_nz #(8) leading_zeros_inst
(
    .in(magn_flip),
    .nz(nz)
);

// Encoding
// - !!! Code is alligned to the left (MSB)
assign ssss = 8'd8 - nz;
assign code = magn_int << nz;

endmodule
