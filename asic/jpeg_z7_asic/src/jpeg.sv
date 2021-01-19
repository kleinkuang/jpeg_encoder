// File:    jpeg.sv
// Author:  Lei Kuang
// Date:    20th November 2020
// @ Imperial College London

module jpeg
(
    input  logic        clk,
    input  logic        nrst,
    // Control
    input  logic        mux_in,
    input  logic [1:0]  mux_out,
    // Data
    input  logic [7:0]  din,
    input  logic        din_valid,
    output logic [7:0]  dout,
    output logic        dout_valid,
    // Debug
    output logic        full // for debug
);

// ----------------------------------------------------------------
// JPEG
// ----------------------------------------------------------------
logic [7:0]  fdct;
logic        fdct_valid;

logic [7:0]  zigzag;
logic        zigzag_valid;

logic [31:0] encode;
logic        encode_valid;

logic [7:0]  piso;
logic        piso_valid;

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
    .din        (mux_in ? din : fdct),
    .din_valid  (fdct_valid),
    .dout       (zigzag),
    .dout_valid (zigzag_valid)
);

encoder encoder_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (mux_in ? din : zigzag),
    .din_valid  (zigzag_valid),
    .dout       (encode),
    .dout_valid (encode_valid)
);

piso_streamer #
(
    .DEPTH_PWR(4)
) piso_inst
(
    .clk        (clk),
    .nrst       (nrst),
    .din        (encode),
    .din_valid  (encode_valid),
    .dout       (piso),
    .dout_valid (piso_valid),
    .full       (full)
);

// ----------------------------------------------------------------
// Output Multiplexer
// ----------------------------------------------------------------
always_comb begin
    case(mux_out)
        2'b00:  begin
                dout       = piso;
                dout_valid = piso_valid;
                end
        2'b01:  begin
                dout       = zigzag;
                dout_valid = zigzag_valid;
                end
        2'b10:  begin
                dout       = fdct;
                dout_valid = fdct_valid;
                end
        2'b11:  begin
                dout       = din;
                dout_valid = din_valid;
                end
    endcase
end

endmodule
