// File:    lead_nz.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

// Number of leading zeros

module lead_nz #
(
    parameter DATA_WIDTH = 8
)
(
    input  logic [DATA_WIDTH-1:0]       in,
    output logic [$clog2(DATA_WIDTH):0] nz
);

logic [$clog2(DATA_WIDTH):0] cnt;

// Priority Encoder
always_comb begin
    nz = DATA_WIDTH;
    for(int i=DATA_WIDTH-1; i>=0; i--) begin
        if(in[i]) begin
            nz = DATA_WIDTH - 1 - i;
            break;
        end
    end
end

endmodule