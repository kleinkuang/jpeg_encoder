// File:    fixed_div_nb.sv
// Author:  Lei Kuang
// Date:    17th November 2020
// @ Imperial College London

// Long Division based Unsigned Divider

module fixed_div_nb #
(
    parameter WIDTH = 8,
    parameter STEPS = 8
)
(
    input  logic             clk,
    input  logic             nrst,
    input  logic [WIDTH-1:0] dividend,
    input  logic [WIDTH-1:0] divisor,
    input  logic             din_valid,
    output logic [STEPS-1:0] quotient,
    output logic             dout_valid
);

logic [WIDTH-1:0] div_end   [STEPS-1:1];
logic [WIDTH-1:0] div_sor   [STEPS-1:1];
logic [WIDTH-1:0] div_dif   [STEPS-1:0];
logic             div_sig   [STEPS-1:0];
logic [STEPS-1:0] div_quo   [STEPS-1:0]; // Optimization ?
logic [STEPS-1:0] div_valid [STEPS-1:0];

genvar i;
generate
// ----------------------------------------------------------------
    for(i=0; i<STEPS; i++) begin
        if(i==0) begin
            assign div_dif[i] = dividend - divisor;
            assign div_sig[i] = div_dif[i][WIDTH-1];
            
            always_ff @ (posedge clk, negedge nrst)
                if(~nrst)
                    div_valid[i] <= '0;
                else
                    div_valid[i] <= din_valid;
            
            always_ff @ (posedge clk) begin
                div_end[i+1] <= div_sig[i] ? (dividend<<1) : (div_dif[i]<<1);
                div_sor[i+1] <= divisor;
                div_quo[i]   <= {~div_sig[i]};
            end
        end
        else begin
            assign div_dif[i] = div_end[i] - div_sor[i];
            assign div_sig[i] = div_dif[i][WIDTH-1];
            
            always_ff @ (posedge clk, negedge nrst)
                if(~nrst)
                    div_valid[i] <= '0;
                else
                    div_valid[i] <= div_valid[i-1];

            always_ff @ (posedge clk) begin
                if(i!=STEPS-1) begin
                    div_end[i+1] <= div_sig[i] ? (div_end[i]<<1) : (div_dif[i]<<1);
                    div_sor[i+1] <= div_sor[i];
                end
                div_quo[i]   <= {div_quo[i-1][i-1:0], ~div_sig[i]};
            end
        end
    end
// ----------------------------------------------------------------
endgenerate

assign quotient   = div_quo[STEPS-1];
assign dout_valid = div_valid[STEPS-1];

endmodule
