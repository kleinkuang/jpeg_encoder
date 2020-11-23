// File:    dc_lut.py
// Author:  Lei Kuang
// Date:    13th July 2020
// @ Imperial College London

// Note that the actual length is len + 1
// e.g., len=4'd3 -> bin[3:0] are valid;

module dc_lut
(
    input  logic [3:0]  ssss,
    output logic [3:0]  len,
    output logic [15:0] bin
);

always_comb begin
    len = '0;
    case(ssss)
        4'h0:   len = 5'd2;
        4'h1:   len = 5'd3;
        4'h2:   len = 5'd3;
        4'h3:   len = 5'd3;
        4'h4:   len = 5'd3;
        4'h5:   len = 5'd3;
        4'h6:   len = 5'd4;
        4'h7:   len = 5'd5;
        4'h8:   len = 5'd6;
        4'h9:   len = 5'd7;
        4'hA:   len = 5'd8;
        4'hB:   len = 5'd9;
    endcase
end

always_comb begin
    bin = '0;
    case(ssss)
        4'h0:   bin = 16'b00;
        4'h1:   bin = 16'b010;
        4'h2:   bin = 16'b011;
        4'h3:   bin = 16'b100;
        4'h4:   bin = 16'b101;
        4'h5:   bin = 16'b110;
        4'h6:   bin = 16'b1110;
        4'h7:   bin = 16'b11110;
        4'h8:   bin = 16'b111110;
        4'h9:   bin = 16'b1111110;
        4'hA:   bin = 16'b11111110;
        4'hB:   bin = 16'b111111110;
    endcase
end

endmodule
