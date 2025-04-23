`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/17 13:33:13
// Design Name: 
// Module Name: tb_keypad
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


module tb_keypad();
// Testbench for keypad module
reg clk;
reg [2:0] col;
wire [6:0] seg;
wire [7:0] an;
wire [3:0] row;
wire [3:0] count;
wire dp;

keypad uut(
    .clk(clk),
    .col(col),
    .seg(seg),
    .dp(dp),
    .an(an),
    .row(row),
    .count(count)
);

initial begin
    clk<=0;
    col<= 3'b000; 
    #400 col<=3'b001;
    #50 col<=3'b000;
    #300 col<=3'b100;
    #50 col<=3'b000;
end

always #5 clk=~clk;

endmodule
