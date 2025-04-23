`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 09:12:11 AM
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input clk,
    output reg red,
    output reg green,
    output reg blue,
    output [6:0] encode,
    output reg [7:0] enablesegment
);

reg [1:0] current_color = 0; // 0 = red, 1 = yellow, 2 = green, 3 = yellow

reg [25:0] counter = 0;
reg [6:0] encoding = 7'b0;
assign encode = ~encoding;

wire display_clk;
wire timediv_clk;

reg [3:0] count = 10; //10->0, 5->0, 10->0,...
reg current_digit = 0; // 0 = left digit, 1 = right digit

reg [18:0] pw_counter = 0;
reg [7:0] pwm_percentage_red = 50; // 0-50%
reg [7:0] pwm_percentage_green = 0;
reg [7:0] pwm_percentage_blue = 0;

// encoding
always@(posedge display_clk)
begin
    if (count > 1)
        count = count - 1;
    else begin
        current_color = current_color + 1;
        
        if (current_color == 1 || current_color == 3) begin //yellow
            count = 5;
            pwm_percentage_red = 25;
            pwm_percentage_green = 25;
            pwm_percentage_blue = 0;
        end
        else if (current_color == 0) begin //red
            count = 10;
            pwm_percentage_red = 50;
            pwm_percentage_green = 0;
            pwm_percentage_blue = 0;
        end
        else if (current_color == 2) begin //green
            count = 10;
            pwm_percentage_red = 0;
            pwm_percentage_green = 50;
            pwm_percentage_blue = 0;
        end
    end
end

    reg [3:0] i; // right digit
    
    always@(posedge timediv_clk)
    begin
        case (current_digit)
            1'b0:enablesegment <= 8'b11111101; //6 
            1'b1:enablesegment <= 8'b11111110; //7
        endcase
    
        if (current_digit == 0) begin // left digit is being displayed now
            if (count == 10)
                encoding<=7'b0110000; //1
            else
                encoding<=7'b1111110; //0
        end
        
        else begin // right digit
            i = count % 10;
            case (i)
                4'b0000:encoding<=7'b1111110; //0
                4'b0001:encoding<=7'b0110000; //1
                4'b0010:encoding<=7'b1101101; //2
                4'b0011:encoding<=7'b1111001; //3
                4'b0100:encoding<=7'b0110011; //4 
                4'b0101:encoding<=7'b1011011; //5 
                4'b0110:encoding<=7'b1011111; //6 
                4'b0111:encoding<=7'b1110000; //7 
                4'b1000:encoding<=7'b1111111; //8 
                4'b1001:encoding<=7'b1111011; //9
            endcase
        end
        
        current_digit = ~current_digit;
    end

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
end

assign display_clk = counter[25];//25
assign timediv_clk = counter[15];//15


endmodule
