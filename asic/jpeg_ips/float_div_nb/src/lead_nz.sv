// File:    lead_nz.sv
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

// Number of leading zeros

module lead_nz #
(
    parameter WIDTH = 8
)
(
    input  logic [WIDTH-1:0]       din,
    output logic [$clog2(WIDTH):0] dout
);

logic [$clog2(WIDTH):0] cnt;

// Priority Encoder
always_comb begin
    dout = WIDTH;
    for(int i=WIDTH-1; i>=0; i--) begin
        if(din[i]) begin
            dout = WIDTH - 1 - i;
            break;
        end
    end
end

endmodule