// File:    jpeg.sv
// Author:  Lei Kuang
// Date:    20th November 2020
// @ Imperial College London

module jpeg
(
    input  logic        clk,
    input  logic        nrst,
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [31:0] dout,
    output logic        dout_valid
);

// ----------------------------------------------------------------
// JPEG
// ----------------------------------------------------------------
logic [7:0] fdct;
logic       fdct_valid;
logic [7:0] zigzag;
logic       zigzag_valid;

fdct fdct_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (din),
    .din_valid  (din_valid),
    .dout       (fdct),
    .dout_valid (fdct_valid)
);

zigzag zigzag_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (fdct),
    .din_valid  (fdct_valid),
    .dout       (zigzag),
    .dout_valid (zigzag_valid)
);

encoder encoder_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (zigzag),
    .din_valid  (zigzag_valid),
    .dout       (dout),
    .dout_valid (dout_valid)
);

endmodule
