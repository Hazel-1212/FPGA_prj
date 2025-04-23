`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 06:33:02 AM
// Design Name: 
// Module Name: led_show
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


module led_show(
    input clk,
    output reg red,
    output reg green,
    output reg blue
);

reg [2:0] red_dir;
reg [2:0] green_dir;
reg [2:0] blue_dir;

reg [25:0] counter;

wire slow_clk;
assign slow_clk = counter[20];
reg [25:0] slow_counter;
reg [31:0] six_colors_counter;

wire change_dir_clk;
assign change_dir_clk = counter[25];

reg [18:0] pw_counter = 0;
reg [7:0] pwm_percentage_red = 50; // 0-50%
reg [7:0] pwm_percentage_green = 0;
reg [7:0] pwm_percentage_blue = 0;

//always@(change_dir_clk)
//begin
//    red_dir = (red_dir + 1) % 3;
//    green_dir = (red_dir + 2) % 3;
//    blue_dir = (red_dir + 1) % 3;
//end

//clock
always@(posedge clk)
begin
    counter <= counter + 1;
    pw_counter <= pw_counter + 1;

    if (pwm_percentage_red == 0) begin         // 0% duty cycle
        red <= 0;
    end
    else begin
        if (pw_counter >= (pwm_percentage_red * 1000)) begin
            red <= 0;
        end        
        else begin
            red <= 1;
        end
    end
    
    if (pwm_percentage_green == 0) begin         // 0% duty cycle
        green <= 0;
    end
    else begin
        if (pw_counter >= (pwm_percentage_green * 1000)) begin
            green <= 0;
        end        
        else begin
            green <= 1;
        end
    end
    
    if (pwm_percentage_blue == 0) begin         // 0% duty cycle
        blue <= 0;
    end
    else begin
        if (pw_counter >= (pwm_percentage_blue * 1000)) begin
            blue <= 0;
        end        
        else begin
            blue <= 1;
        end
    end
    
    if (pw_counter >= 100000) begin
        pw_counter <= 0;
    end
    
    // color change
    slow_counter <= (slow_counter + 1) % 23277416;
    six_colors_counter <= six_colors_counter + 1;
    //red -> green
    if (six_colors_counter < 698322432) begin
        if (slow_counter == 23277414) begin
            pwm_percentage_red <= (pwm_percentage_red == 0) ? 0 : pwm_percentage_red - 1; //down
            pwm_percentage_green <= (pwm_percentage_green == 50) ? 50 : pwm_percentage_green + 1; //up
            pwm_percentage_blue <= 0;
        end
    end
    //green -> blue
    else if (six_colors_counter < 1396644864) begin
        if (slow_counter == 23277414) begin
            pwm_percentage_red <= 0;
            pwm_percentage_green <= (pwm_percentage_green == 0) ? 0 : pwm_percentage_green - 1;
            pwm_percentage_blue <= (pwm_percentage_blue == 50) ? 50 : pwm_percentage_blue + 1;
        end
    end
    //blue -> red
    else if (six_colors_counter < 2094967296) begin
        if (slow_counter == 23277414) begin
            pwm_percentage_red <= (pwm_percentage_red == 50) ? 50 : pwm_percentage_red + 1;
            pwm_percentage_green <= 0;
            pwm_percentage_blue <= (pwm_percentage_blue == 0) ? 0 : pwm_percentage_blue - 1;
        end
    end
    else begin
        six_colors_counter <= 0;
    end
end

endmodule
