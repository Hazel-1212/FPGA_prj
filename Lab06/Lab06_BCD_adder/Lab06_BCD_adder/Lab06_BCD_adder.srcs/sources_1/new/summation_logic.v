`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 09:01:17 AM
// Design Name: 
// Module Name: summation_logic
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

module summation_logic(
    input clk,
    
    input [3:0] digitpressed,
    input reg_active,
    
    output reg digits_to_display,
    output reg [3:0] left_digit,
    output reg [3:0] right_digit,
    
    input display_sum,
    input reset_pressed,
    
    input keypad_press_event,
    output reg press_event_acknowledge,
    
    //DEBUG
    output [3:0] regAdeb,
    output [3:0] regBdeb,
    output [4:0] sumdeb
);
    
reg [3:0] regA = 0;
reg [3:0] regB = 0;
reg [4:0] sum = 0;

//DEBUG
assign regAdeb = regA;
assign regBdeb = regB;
assign sumdeb = sum;

reg [15:0] counter = 0;
wire slow_clk;

reg previous_reg_active; // to monitor changes

assign slow_clk = counter[15];

always @ (posedge slow_clk) begin
    // update register
    if (reg_active == previous_reg_active) begin
        if (reg_active == 0) begin // regA
            regA = digitpressed;
        end
        else begin // regB
            regB = digitpressed;
        end
    end
    else begin
        if (keypad_press_event == 1) begin
            previous_reg_active = reg_active;
            //press_event_acknowledge = 1;
        end
//        else begin
//            press_event_acknowledge = 0;
//        end
    end
    
    if (reset_pressed == 1) begin
        regA = 0;
        regB = 0;
        sum = 0;
    end
    
    sum = regA + regB;
    
    if (display_sum == 0) begin
        digits_to_display = 0;
        if (reg_active == 0) begin // regA
            right_digit = regA;
        end
        else begin // regB
            right_digit = regB;
        end
    end
    else if (display_sum == 1) begin
        if (sum < 10) begin
            digits_to_display = 0;
            right_digit = sum;
        end
        else begin
            digits_to_display = 1;
            right_digit = sum % 10;
            left_digit = sum / 10;
        end
    end
end

always @ (posedge clk) counter = counter + 7;

endmodule
