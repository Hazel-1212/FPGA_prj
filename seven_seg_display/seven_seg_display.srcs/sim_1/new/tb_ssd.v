`timescale 1ns / 1ps

module tb_top_an_cnt_dgt_disp;

    reg sys_clk;
    wire CA, CB, CC, CD, CE, CF, CG;
    wire [7:0] AN;

    top_an_cnt_dgt_disp dut (
        .sys_clk(sys_clk),
        .CA(CA),
        .CB(CB),
        .CC(CC),
        .CD(CD),
        .CE(CE),
        .CF(CF),
        .CG(CG),
        .AN(AN)
    );
    
    
    always #100 sys_clk = ~sys_clk;
  
    initial begin
      
        sys_clk = 0;
    
    end

endmodule


