// File:    fixed_mul_nb.sv
// Author:  Lei Kuang
// Date:    11th November 2020
// @ Imperial College London

// Booth Algorithm (Radix 2) based Signed Multiplier

module fixed_mul_nb #
(
    parameter WIDTH = 26 // MUST BE A EVEN NUMBER
)
(
    input  logic                clk,
    input  logic                nrst,
    input  logic [WIDTH-1:0]    din1,
    input  logic [WIDTH-1:0]    din2,
    input  logic                din_valid,
    output logic [WIDTH*2-1:0]  dout,
    output logic                dout_valid
);

localparam STEPS = WIDTH >> 1;

// -------------------------------------------------------------
// Pipeline based Booth Algorithm Implementation
// -------------------------------------------------------------
logic [WIDTH-1:0]   multiplicand  [STEPS-1:0];
logic [WIDTH-1:0]   multilplier   [STEPS-1:0];
logic [WIDTH+1:0]   addend        [STEPS-1:0];
logic [WIDTH+1:0]   augend        [STEPS-1:1];
logic               valid         [STEPS-1:0];
logic [WIDTH*2-1:0] product       [STEPS-2:1];
    
genvar i;
generate
    for(i=0; i<STEPS; i++) begin
    // ---------------------------------------------------------
        if(i==0) begin
            booth_algo #
            (
                .WIDTH(WIDTH),
                .BSTEP(i)
            ) bm
            (
                .clk                (clk),
                .nrst               (nrst),
                .din_multiplicand   (din1),
                .din_multilplier    (din2),
                .din_addend         (),
                .din_augend         (),
                .din_valid          (din_valid),
                
                .dout_multiplicand  (multiplicand[i]),
                .dout_multilplier   (multilplier[i]),
                .dout_addend        (addend[i]),
                .dout_augend        (),
                .dout_valid         (valid[i])
            );
        end
        else if(i==1) begin
            booth_algo #
            (
                .WIDTH(WIDTH),
                .BSTEP(i)
            ) bm
            (
                .clk                (clk),
                .nrst               (nrst),
                .din_multiplicand   (multiplicand[i-1]),
                .din_multilplier    (multilplier[i-1]),
                .din_addend         (addend[i-1]),
                .din_augend         ('0),
                .din_valid          (valid[i-1]),
                
                .dout_multiplicand  (multiplicand[i]),
                .dout_multilplier   (multilplier[i]),
                .dout_addend        (addend[i]),
                .dout_augend        (augend[i]),
                .dout_valid         (valid[i])
            );
            
            always_ff @ (posedge clk)
                if(valid[i])
                    product[i] <= augend[i][1:0];
        end
        else begin
            booth_algo #
            (
                .WIDTH(WIDTH),
                .BSTEP(i)
            ) bm
            (
                .clk                (clk),
                .nrst               (nrst),
                .din_multiplicand   (multiplicand[i-1]),
                .din_multilplier    (multilplier[i-1]),
                .din_addend         (addend[i-1]),
                .din_augend         (augend[i-1][WIDTH+1:2]),
                .din_valid          (valid[i-1]),
                
                .dout_multiplicand  (multiplicand[i]),
                .dout_multilplier   (multilplier[i]),
                .dout_addend        (addend[i]),
                .dout_augend        (augend[i]),
                .dout_valid         (valid[i])
            );
            
            if(i!=STEPS-1) begin
                always_ff @ (posedge clk)
                    if(valid[i])
                        product[i] <= {augend[i][1:0], product[i-1][(i-1)*2-1:0]};
            end
        end
    // ---------------------------------------------------------
    end
endgenerate

// -------------------------------------------------------------
// Final Addition
// -------------------------------------------------------------
logic [WIDTH+1:0] augend_final;
logic [WIDTH+1:0] sum_final;

assign augend_final = {augend[STEPS-1][WIDTH+1], augend[STEPS-1][WIDTH+1], augend[STEPS-1][WIDTH+1:2]};
assign sum_final    = augend_final + addend[STEPS-1];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= valid[STEPS-1];

always_ff @ (posedge clk)
    if(valid[STEPS-1])
        dout <= {sum_final, {augend[STEPS-1][1:0], product[STEPS-2][(STEPS-2)*2-1:0]}};
        
// -------------------------------------------------------------
// Pipeline based Booth Algorithm Implementation
// -------------------------------------------------------------
// Pipeline Stage 0 --------------------------------------------
// Computes the 1st addend only
/*logic [WIDTH-1:0] multiplicand_0;
logic [WIDTH-1:0] multilplier_0;
logic [WIDTH+1:0] addend_0;
logic             valid_0;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(0)
) bm_0
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (din1),
    .din_multilplier    (din2),
    .din_addend         (),
    .din_augend         (),
    .din_valid          (din_valid),
    .dout_multiplicand  (multiplicand_0),
    .dout_multilplier   (multilplier_0),
    .dout_addend        (addend_0),
    .dout_augend        (),
    .dout_valid         (valid_0)
);
        
// Pipeline Stage 1 --------------------------------------------
logic [WIDTH-1:0] multiplicand_1;
logic [WIDTH-1:0] multilplier_1;
logic [WIDTH+1:0] addend_1;
logic [WIDTH+1:0] augend_1;
logic             valid_1;
logic [1:0]       dout_1;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(1)
) bm_1
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_0),
    .din_multilplier    (multilplier_0),
    .din_addend         (addend_0),
    .din_augend         ('0),
    .din_valid          (valid_0),
    .dout_multiplicand  (multiplicand_1),
    .dout_multilplier   (multilplier_1),
    .dout_addend        (addend_1),
    .dout_augend        (augend_1),
    .dout_valid         (valid_1)
);

always_ff @ (posedge clk)
    if(valid_1)
        dout_1 <= augend_1[1:0];
        
// Pipeline Stage 2 --------------------------------------------
logic [WIDTH-1:0] multiplicand_2;
logic [WIDTH-1:0] multilplier_2;
logic [WIDTH+1:0] addend_2;
logic [WIDTH+1:0] augend_2;
logic             valid_2;
logic [3:0]       dout_2;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(2)
) bm_2
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_1),
    .din_multilplier    (multilplier_1),
    .din_addend         (addend_1),
    .din_augend         (augend_1[WIDTH+1:2]),
    .din_valid          (valid_1),
    .dout_multiplicand  (multiplicand_2),
    .dout_multilplier   (multilplier_2),
    .dout_addend        (addend_2),
    .dout_augend        (augend_2),
    .dout_valid         (valid_2)
);

always_ff @ (posedge clk)
    if(valid_2)
        dout_2 <= {augend_2[1:0], dout_1};
        
// Pipeline Stage 3 --------------------------------------------
logic [WIDTH-1:0] multiplicand_3;
logic [WIDTH-1:0] multilplier_3;
logic [WIDTH+1:0] addend_3;
logic [WIDTH+1:0] augend_3;
logic             valid_3;
logic [5:0]       dout_3;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(3)
) bm_3
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_2),
    .din_multilplier    (multilplier_2),
    .din_addend         (addend_2),
    .din_augend         (augend_2[WIDTH+1:2]),
    .din_valid          (valid_2),
    .dout_multiplicand  (multiplicand_3),
    .dout_multilplier   (multilplier_3),
    .dout_addend        (addend_3),
    .dout_augend        (augend_3),
    .dout_valid         (valid_3)
);
        
// -------------------------------------------------------------
// Final Addition
// -------------------------------------------------------------
logic [WIDTH+1:0] augend_final;
logic [WIDTH+1:0] sum_final;

assign augend_final = {augend_3[WIDTH+1], augend_3[WIDTH+1], augend_3[WIDTH+1:2]};
assign sum_final    = augend_final + addend_3;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= valid_3;
        
always_ff @ (posedge clk)
    if(valid_3)
        dout <= {sum_final, {augend_3[1:0], dout_2}};*/

endmodule
