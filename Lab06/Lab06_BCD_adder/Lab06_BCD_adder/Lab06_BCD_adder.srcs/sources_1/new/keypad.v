`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 07:17:04 AM
// Design Name: 
// Module Name: keypad
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

module keypad(
    input clk,
    input [2:0] col,
    output [3:0] row,
    
    output reg [3:0] digit,
    input reset,
    
    output keypad_press_event, // is set to 1 if one of the rows detected press during the scan loop
    input press_event_acknowledge
);

reg [3:0] row_scan;

reg waitbit; //waitbit insures that keypresses are recognized at the right time
reg scan_end_indicator; //is set to 1 if one of the rows detected press during the scan loop
integer temp;

reg [10:0] counter = 0;
wire slow_clk;

assign row[0] = row_scan[0] ? 1'bz : 1'b0; 
assign row[1] = row_scan[1] ? 1'bz : 1'b0; 
assign row[2] = row_scan[2] ? 1'bz : 1'b0; 
assign row[3] = row_scan[3] ? 1'bz : 1'b0;

assign slow_clk = counter[10];//15

assign keypad_press_event = scan_end_indicator;

  always @ (posedge slow_clk) begin
        if (reset == 1)
            digit<=0;
        else begin
        			case(row_scan)
						4'b0111: begin 
							if(waitbit == 1) begin
							temp = 1;
								case (col)
								    3'b011: begin
								        digit<=4'b0001;
								    end
								    3'b101: begin
								        digit<=4'b0010;
								    end
								    3'b110: begin
								        digit<=4'b0011;
								    end
								    default:temp = 0;
								endcase
								row_scan <= 4'b1011;
								scan_end_indicator = temp;
								waitbit <= 0;
							end
							else waitbit <= 1;
						end
						4'b1011: begin
							if(waitbit == 1) begin
							temp = 1;
								case (col)
								    3'b011: begin
								        digit<=4'b0100;
								    end
								    3'b101: begin
								        digit<=4'b0101;
								    end
								    3'b110: begin
								        digit<=4'b0110;
								    end 
								    default:temp = scan_end_indicator;
								endcase
								row_scan <= 4'b1101;
								scan_end_indicator = temp;
								waitbit <= 0;
							end
							else waitbit <= 1;
						end
						4'b1101: begin
							if(waitbit == 1) begin
							temp = 1;
								case (col)
								    3'b011: begin
								        digit<=4'b0111;
								    end
								    3'b101: begin
								        digit<=4'b1000;
								    end
								    3'b110: begin
								        digit<=4'b1001;
								    end
								    default:temp = scan_end_indicator;
								endcase
								row_scan <= 4'b1110;
								scan_end_indicator = temp;
								waitbit <= 0;
							end
							else waitbit <= 1;
						end
						4'b1110: begin
							if(waitbit == 1) begin
							temp = 1;
								case (col)
								    3'b101: begin
								        digit<=4'b0000;
								    end
								    default:temp = scan_end_indicator;
								endcase
								row_scan <= 4'b0111;
								scan_end_indicator = temp;
								waitbit <= 0;
							end
							else waitbit <= 1;
						end
						// check 
						4'b0000: begin
						    if(waitbit == 1) begin
//						        if (scan_end_indicator == 1) begin
//						          if (press_event_acknowledge == 1) begin
//						              keypad_press_event = 0; //nothing is pressed
//						          end
//						        end
//						        else begin
//						          keypad_press_event = 1;
//						        end
//						        scan_end_indicator = 0;
						        row_scan <= 4'b0111;
						        waitbit <= 0;
						    end
						    else waitbit <= 1;
						end
						default: begin
							row_scan <= 4'b0111;
						end
					endcase
		end
    end
    
    always @ (posedge clk) begin
        counter = counter + 1;
    end

endmodule
