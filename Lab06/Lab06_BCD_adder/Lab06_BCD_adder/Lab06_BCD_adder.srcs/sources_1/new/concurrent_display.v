`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 07:17:04 AM
// Design Name: 
// Module Name: concurrent_display
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


module concurrent_display(
    input clk,
    output [6:0] encode,
    output [7:0] an,
    
    input digits_to_display, // 0 - 1 digit, 1 - 2 digits
    input [3:0] left_digit, // decimal
    input [3:0] right_digit
);
    
    reg [15:0] counter = 0;
    reg [6:0] encoding = 7'b1111110;
    reg [7:0] enableseg = 8'b11111110;
    
    reg current_digit = 0; // 0 - left, 1 - right
    
    wire timediv_clk;

    assign timediv_clk = counter[15];//13

    assign encode = ~encoding;
    assign an = enableseg;

    // display two digits concurrently
    always@(posedge timediv_clk)
    begin
        if (digits_to_display == 1) begin
    
            case(current_digit)
        
                1'b0: begin
                    case (left_digit)
                        4'b0000:encoding<=7'b1111110;
                        4'b0001:encoding<=7'b0110000;
                        4'b0010:encoding<=7'b1101101;
                        4'b0011:encoding<=7'b1111001;
                        4'b0100:encoding<=7'b0110011;
                        4'b0101:encoding<=7'b1011011;
                        4'b0110:encoding<=7'b1011111;
                        4'b0111:encoding<=7'b1110000;
                        4'b1000:encoding<=7'b1111111;
                        4'b1001:encoding<=7'b1111011;
                        default:encoding<=7'b1111110;
                   endcase
                    enableseg <= 8'b11111101; //left
                end 
                1'b1: begin
                    case (right_digit)
                        4'b0000:encoding<=7'b1111110;
                        4'b0001:encoding<=7'b0110000;
                        4'b0010:encoding<=7'b1101101;
                        4'b0011:encoding<=7'b1111001;
                        4'b0100:encoding<=7'b0110011;
                        4'b0101:encoding<=7'b1011011;
                        4'b0110:encoding<=7'b1011111;
                        4'b0111:encoding<=7'b1110000;
                        4'b1000:encoding<=7'b1111111;
                        4'b1001:encoding<=7'b1111011;
                        default:encoding<=7'b1111110;
                   endcase
                   enableseg <= 8'b11111110; //right
                end
        
            endcase
            current_digit = ~current_digit;
        end
        else begin
           enableseg <= 8'b11111110;
           case (right_digit)
                4'b0000:encoding<=7'b1111110;
                4'b0001:encoding<=7'b0110000;
                4'b0010:encoding<=7'b1101101;
                4'b0011:encoding<=7'b1111001;
                4'b0100:encoding<=7'b0110011;
                4'b0101:encoding<=7'b1011011;
                4'b0110:encoding<=7'b1011111;
                4'b0111:encoding<=7'b1110000;
                4'b1000:encoding<=7'b1111111;
                4'b1001:encoding<=7'b1111011;
                default:encoding=7'b1111100;
           endcase
        end
    end

    //clock
    always@(posedge clk)
    begin
        counter <= counter + 3;
    end

endmodule
