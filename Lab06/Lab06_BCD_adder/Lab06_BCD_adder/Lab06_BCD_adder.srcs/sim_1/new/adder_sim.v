`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 04:05:31 PM
// Design Name: 
// Module Name: adder_sim
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


//module adder(
//    input clk,
//    input [2:0] keypad_column,
//    output [3:0] keypad_row,
//    output [6:0] encode,
//    output [7:0] enablesegment,
    
//    input reg_active_inv, // 0 - regA, 1 - regB
//    input display_sum_inv, // 0 - don't display, 1 - display
//    input reset_pressed_inv // 1 - reset
//);


module adder_sim();
    
    reg clk;
    
    wire [3:0] clk_row;
    reg [2:0] clk_col;
    
    wire [6:0] encode;
    wire [7:0] enablesegment;
    
    reg reg_active;
    reg display_sum;
    reg reset;
    
//    //DIGIT
//    wire [3:0] digit;
//    //DEBUG
//    wire [3:0] regA;
//    wire [3:0] regB;
//    wire [4:0] sum;
    
    adder add(clk, clk_col, clk_row, encode, enablesegment, reg_active, display_sum, reset); //digit, regA, regB, sum);
    
    initial begin
        clk = 1'b0;
        clk_col = 3'b011;
        
        reg_active = 1;
        display_sum = 0;
        reset = 0;
    end
    
    always #150 begin
        case (clk_col)
            3'b011:clk_col<=3'b110;
            3'b101:clk_col<=3'b011;
            3'b110:clk_col<=3'b101;
        endcase
    end
    
    always #1 clk = ~clk;

    
endmodule
