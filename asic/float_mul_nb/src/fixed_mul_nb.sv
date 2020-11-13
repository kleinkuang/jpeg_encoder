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

parameter STEPS = WIDTH >> 1;

// Not use generate block for simplicity
// ! Not finish !

/*logic [WIDTH-1:0]   multiplicand  [STEPS-1:0];
logic [WIDTH-1:0]   multilplier   [STEPS-1:0];
logic [WIDTH+1:0]   addend        [STEPS-1:0];
logic [WIDTH+1:0]   augend        [STEPS-1:0];
logic               valid         [STEPS-1:0];
logic [WIDTH*2-1:0] out_buffer    [STEPS-2:1];
    
genvar i;
generate
    begin: booth_mul
    // ---------------------------------------------------------
        if(i==0) begin
            booth_algo #
            (
                .WIDTH(WIDTH),
                .BSTEP(i)
            ) bm_0
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
        else begin
            booth_algo #
            (
                .WIDTH(WIDTH),
                .BSTEP(i)
            ) bm_1
            (
                .clk                (clk),
                .nrst               (nrst),
                .din_multiplicand   (multiplicand[i-1]),
                .din_multilplier    (multilplier[i-1]),
                .din_addend         (addend[i-1]),
                .din_augend         (i==1 ? '0 : augend[i-1][WIDTH+1:2]),
                .din_valid          (valid[i-1]),
                .dout_multiplicand  (multiplicand[i]),
                .dout_multilplier   (multilplier[i]),
                .dout_addend        (addend[i]),
                .dout_augend        (augend[i]),
                .dout_valid         (valid[i])
            );
        end
    // ---------------------------------------------------------
    end
endgenerate*/

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
        
// -------------------------------------------------------------
// Pipeline based Booth Algorithm Implementation
// -------------------------------------------------------------
// Pipeline Stage 0 --------------------------------------------
// Computes the 1st addend only
logic [WIDTH-1:0] multiplicand_0;
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
logic [1*2-1:0]   dout_1;

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
logic [2*2-1:0]   dout_2;

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
logic [3*2-1:0]   dout_3;

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

always_ff @ (posedge clk)
    if(valid_3)
        dout_3 <= {augend_3[1:0], dout_2};

// Pipeline Stage 4 --------------------------------------------
logic [WIDTH-1:0] multiplicand_4;
logic [WIDTH-1:0] multilplier_4;
logic [WIDTH+1:0] addend_4;
logic [WIDTH+1:0] augend_4;
logic             valid_4;
logic [4*2-1:0]   dout_4;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(4)
) bm_4
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_3),
    .din_multilplier    (multilplier_3),
    .din_addend         (addend_3),
    .din_augend         (augend_3[WIDTH+1:2]),
    .din_valid          (valid_3),
    .dout_multiplicand  (multiplicand_4),
    .dout_multilplier   (multilplier_4),
    .dout_addend        (addend_4),
    .dout_augend        (augend_4),
    .dout_valid         (valid_4)
);

always_ff @ (posedge clk)
    if(valid_4)
        dout_4 <= {augend_4[1:0], dout_3};

// Pipeline Stage 5 --------------------------------------------
logic [WIDTH-1:0] multiplicand_5;
logic [WIDTH-1:0] multilplier_5;
logic [WIDTH+1:0] addend_5;
logic [WIDTH+1:0] augend_5;
logic             valid_5;
logic [5*2-1:0]   dout_5;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(5)
) bm_5
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_4),
    .din_multilplier    (multilplier_4),
    .din_addend         (addend_4),
    .din_augend         (augend_4[WIDTH+1:2]),
    .din_valid          (valid_4),
    .dout_multiplicand  (multiplicand_5),
    .dout_multilplier   (multilplier_5),
    .dout_addend        (addend_5),
    .dout_augend        (augend_5),
    .dout_valid         (valid_5)
);

always_ff @ (posedge clk)
    if(valid_5)
        dout_5 <= {augend_5[1:0], dout_4};

// Pipeline Stage 6 --------------------------------------------
logic [WIDTH-1:0] multiplicand_6;
logic [WIDTH-1:0] multilplier_6;
logic [WIDTH+1:0] addend_6;
logic [WIDTH+1:0] augend_6;
logic             valid_6;
logic [6*2-1:0]   dout_6;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(6)
) bm_6
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_5),
    .din_multilplier    (multilplier_5),
    .din_addend         (addend_5),
    .din_augend         (augend_5[WIDTH+1:2]),
    .din_valid          (valid_5),
    .dout_multiplicand  (multiplicand_6),
    .dout_multilplier   (multilplier_6),
    .dout_addend        (addend_6),
    .dout_augend        (augend_6),
    .dout_valid         (valid_6)
);

always_ff @ (posedge clk)
    if(valid_6)
        dout_6 <= {augend_6[1:0], dout_5};

// Pipeline Stage 7 --------------------------------------------
logic [WIDTH-1:0] multiplicand_7;
logic [WIDTH-1:0] multilplier_7;
logic [WIDTH+1:0] addend_7;
logic [WIDTH+1:0] augend_7;
logic             valid_7;
logic [7*2-1:0]   dout_7;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(7)
) bm_7
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_6),
    .din_multilplier    (multilplier_6),
    .din_addend         (addend_6),
    .din_augend         (augend_6[WIDTH+1:2]),
    .din_valid          (valid_6),
    .dout_multiplicand  (multiplicand_7),
    .dout_multilplier   (multilplier_7),
    .dout_addend        (addend_7),
    .dout_augend        (augend_7),
    .dout_valid         (valid_7)
);

always_ff @ (posedge clk)
    if(valid_7)
        dout_7 <= {augend_7[1:0], dout_6};

// Pipeline Stage 8 --------------------------------------------
logic [WIDTH-1:0] multiplicand_8;
logic [WIDTH-1:0] multilplier_8;
logic [WIDTH+1:0] addend_8;
logic [WIDTH+1:0] augend_8;
logic             valid_8;
logic [8*2-1:0]   dout_8;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(8)
) bm_8
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_7),
    .din_multilplier    (multilplier_7),
    .din_addend         (addend_7),
    .din_augend         (augend_7[WIDTH+1:2]),
    .din_valid          (valid_7),
    .dout_multiplicand  (multiplicand_8),
    .dout_multilplier   (multilplier_8),
    .dout_addend        (addend_8),
    .dout_augend        (augend_8),
    .dout_valid         (valid_8)
);

always_ff @ (posedge clk)
    if(valid_8)
        dout_8 <= {augend_8[1:0], dout_7};

// Pipeline Stage 9 --------------------------------------------
logic [WIDTH-1:0] multiplicand_9;
logic [WIDTH-1:0] multilplier_9;
logic [WIDTH+1:0] addend_9;
logic [WIDTH+1:0] augend_9;
logic             valid_9;
logic [9*2-1:0]   dout_9;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(9)
) bm_9
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_8),
    .din_multilplier    (multilplier_8),
    .din_addend         (addend_8),
    .din_augend         (augend_8[WIDTH+1:2]),
    .din_valid          (valid_8),
    .dout_multiplicand  (multiplicand_9),
    .dout_multilplier   (multilplier_9),
    .dout_addend        (addend_9),
    .dout_augend        (augend_9),
    .dout_valid         (valid_9)
);

always_ff @ (posedge clk)
    if(valid_9)
        dout_9 <= {augend_9[1:0], dout_8};
        
// Pipeline Stage 10 --------------------------------------------
logic [WIDTH-1:0] multiplicand_10;
logic [WIDTH-1:0] multilplier_10;
logic [WIDTH+1:0] addend_10;
logic [WIDTH+1:0] augend_10;
logic             valid_10;
logic [10*2-1:0]  dout_10;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(10)
) bm_10
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_9),
    .din_multilplier    (multilplier_9),
    .din_addend         (addend_9),
    .din_augend         (augend_9[WIDTH+1:2]),
    .din_valid          (valid_9),
    .dout_multiplicand  (multiplicand_10),
    .dout_multilplier   (multilplier_10),
    .dout_addend        (addend_10),
    .dout_augend        (augend_10),
    .dout_valid         (valid_10)
);

always_ff @ (posedge clk)
    if(valid_10)
        dout_10 <= {augend_10[1:0], dout_9};
        
// Pipeline Stage 11 --------------------------------------------
logic [WIDTH-1:0] multiplicand_11;
logic [WIDTH-1:0] multilplier_11;
logic [WIDTH+1:0] addend_11;
logic [WIDTH+1:0] augend_11;
logic             valid_11;
logic [11*2-1:0]  dout_11;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(11)
) bm_11
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_10),
    .din_multilplier    (multilplier_10),
    .din_addend         (addend_10),
    .din_augend         (augend_10[WIDTH+1:2]),
    .din_valid          (valid_10),
    .dout_multiplicand  (multiplicand_11),
    .dout_multilplier   (multilplier_11),
    .dout_addend        (addend_11),
    .dout_augend        (augend_11),
    .dout_valid         (valid_11)
);

always_ff @ (posedge clk)
    if(valid_11)
        dout_11 <= {augend_11[1:0], dout_10};

// Pipeline Stage 12 --------------------------------------------
logic [WIDTH-1:0] multiplicand_12;
logic [WIDTH-1:0] multilplier_12;
logic [WIDTH+1:0] addend_12;
logic [WIDTH+1:0] augend_12;
logic             valid_12;

booth_algo #
(
    .WIDTH(WIDTH),
    .BSTEP(12)
) bm_12
(
    .clk                (clk),
    .nrst               (nrst),
    .din_multiplicand   (multiplicand_11),
    .din_multilplier    (multilplier_11),
    .din_addend         (addend_11),
    .din_augend         (augend_11[WIDTH+1:2]),
    .din_valid          (valid_11),
    .dout_multiplicand  (multiplicand_12),
    .dout_multilplier   (multilplier_12),
    .dout_addend        (addend_12),
    .dout_augend        (augend_12),
    .dout_valid         (valid_12)
);

// -------------------------------------------------------------
// Final Addition
// -------------------------------------------------------------
logic [WIDTH+1:0] augend_final;
logic [WIDTH+1:0] sum_final;

assign augend_final = {augend_12[WIDTH+1], augend_12[WIDTH+1], augend_12[WIDTH+1:2]};
assign sum_final    = augend_final + addend_12;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout_valid <= '0;
    else
        dout_valid <= valid_12;
        
always_ff @ (posedge clk)
    if(valid_12)
        dout <= {sum_final, {augend_12[1:0], dout_11}};

endmodule
