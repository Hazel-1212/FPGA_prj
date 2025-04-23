`timescale 1ns / 1ps

module tb_id_marque();

    // Inputs
    reg sys_clk;
    reg sys_rst_n;
    reg shift;
    

    // Outputs
    wire [6:0] seg;
    wire [7:0]  AN;

    // Instantiate the shift register module
    id_marque uut (
        .clk(clk),
        .reset(reset),
        .shift(shift),
        .seg(seg),
        .AN(AN)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        // Initialize inputs
        sys_rst_n = 1;
        shift = 1;
   

        // Reset the system
        #10 sys_rst_n = 0;
        #10 sys_rst_n = 1;

     
    end

endmodule