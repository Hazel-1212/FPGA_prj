`timescale 1ns / 1ps

module tb_top_an_cnt_dgt_disp;

    reg sys_clk;
    reg sys_rst_n;
    wire CA, CB, CC, CD, CE, CF, CG, DP;
    wire [7:0] AN;

    // Instantiate the DUT (Device Under Test)
    top_an_cnt_dgt_disp dut (
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .CA(CA),
        .CB(CB),
        .CC(CC),
        .CD(CD),
        .CE(CE),
        .CF(CF),
        .CG(CG),
        .DP(DP),
        .AN(AN)
    );

    // Clock Generation: 100MHz -> 10ns period
    always #5 sys_clk = ~sys_clk;

    initial begin
        // Initial values
        sys_clk = 0;
        sys_rst_n = 0;

        // Reset pulse: hold low for 100ns
        #100;
        sys_rst_n = 1;

        // Run simulation for a few milliseconds to observe display behavior
        #500000;  // adjust based on your counter speed
        $stop;
    end

endmodule


