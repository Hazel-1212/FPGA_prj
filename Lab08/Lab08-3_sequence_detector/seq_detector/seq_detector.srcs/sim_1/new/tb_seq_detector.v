`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/23 21:07:40
// Design Name: 
// Module Name: tb_seq_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_seq_detector(

    );
    reg clk;
    //reg pmod_signal;
    wire [7:0] LED;
    wire detect;
   // integer i;
    seq_detector uut (
        .clk(clk),
        //.pmod_signal(pmod_signal),
        .LED(LED),
        .detect(detect)
    );

    initial begin
        clk = 0;
        //pmod_signal = 0;
        //for (i = 0; i < 8; i = i + 1) begin
        //    #10 pmod_signal = $random % 2;
        //end
    end

    always begin
        #10 clk = ~clk; // Generate clock signal
    end



endmodule
