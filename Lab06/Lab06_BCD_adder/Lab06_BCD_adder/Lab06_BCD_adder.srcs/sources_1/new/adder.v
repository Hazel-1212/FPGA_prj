`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 07:17:04 AM
// Design Name: 
// Module Name: adder
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

module adder(
    input clk,
    input [2:0] col,
    output [3:0] row,
    output [6:0] seg,
    output [7:0] an,
    
    input reg_active_inv, // 0 - regA, 1 - regB
    input display_sum_inv, // 0 - don't display, 1 - display
    input reset_pressed_inv // 1 - reset
);

wire [3:0] digitpressed;

wire digits_to_display;
wire [3:0] left_digit;
wire [3:0] right_digit;

//DEBUG
wire [3:0] regAdeb;
wire [3:0] regBdeb;
wire [4:0] sumdeb;

wire reg_active;
wire display_sum;
wire reset_pressed;

wire keypad_press_event;
wire press_event_acknowledge;

assign reg_active = reg_active_inv; // Non-inverted
assign display_sum = display_sum_inv;
assign reset_pressed = ~reset_pressed_inv; // Non-inverted

keypad key(clk, col, row, digitpressed, reset_pressed, keypad_press_event);
summation_logic logic(clk, digitpressed, reg_active, digits_to_display, left_digit, right_digit, display_sum, reset_pressed, keypad_press_event, press_event_acknowledge,
                        regAdeb, regBdeb, sumdeb);
concurrent_display display(clk, seg, an, digits_to_display, left_digit, right_digit);

endmodule
