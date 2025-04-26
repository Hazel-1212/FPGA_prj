`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/10 21:21:21
// Design Name: 
// Module Name: id_marque
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


module id_marquee(
    input clk,
    input up,
    output reg [6:0] seg,
    output reg[7:0] an
);

//7-segment to display ID number:113511170+blank
    reg [3:0] count = 0;
    reg [3:0] an_count = 4'b0111;
    wire low;
    wire led;
    integer display=0;

    
  initial begin
  an= 8'b11111110;
  seg=7'b1_00_1_11_1;
  end
   
   freq_dv dev(
    .clk(clk),
    .low(low),
    .led(led)
    );
   
   // Base segment (active-low)
parameter SEG_ZERO      = 7'b0_00_0_00_1;
parameter SEG_ONE       = 7'b1_00_1_11_1;
parameter SEG_TWO       = 7'b0_01_0_01_0;
parameter SEG_THREE     = 7'b0_00_0_11_0;
parameter SEG_FOUR      = 7'b1_00_1_10_0;
parameter SEG_FIVE      = 7'b0_10_0_10_0;
parameter SEG_SIX       = 7'b0_10_0_00_0;
parameter SEG_SEVEN     = 7'b0_00_1_11_1;
parameter SEG_BLANK     = 7'b1_11_1_11_1;
// "113511170X"
parameter ZERO  = SEG_ONE;    // '1'
parameter ONE   = SEG_ONE;    // '1'
parameter TWO   = SEG_THREE;  // '3'
parameter THREE = SEG_FIVE;   // '5'
parameter FOUR  = SEG_ONE;    // '1'
parameter FIVE  = SEG_ONE;    // '1'
parameter SIX   = SEG_ONE;    // '1'
parameter SEVEN = SEG_SEVEN;  // '7'
parameter EIGHT = SEG_ZERO;   // '0'
parameter NINE  = SEG_BLANK;  // 'X'

 

    always @(posedge low) begin 
        if (up) begin
            if(count == 4'b1001)
                count = 0;
            else
                count = count + 1;
        end
        
        else begin
            if(count == 4'b0000)
                count = 4'b1001;
            else
                count = count - 1;
        end

        
    end
    
    
always @ (posedge led) begin 
      //anoid
        if(an_count == 4'b0111) begin
            an_count =4'b0000;
        end 
        else begin
            an_count = an_count + 1;
        end
        case(an_count)  
            4'b0000: an = 8'b11111110; 
            4'b0001: an = 8'b11111101; 
            4'b0010: an = 8'b11111011; 
            4'b0011: an = 8'b11110111; 
            4'b0100: an = 8'b11101111; 
            4'b0101: an = 8'b11011111; 
            4'b0110: an = 8'b10111111; 
            4'b0111: an = 8'b01111111;
            default: an = 8'b11111111; 
        endcase    
      
        display= count - an_count;
         
        case (display)
            -7:seg= THREE;
            -6:seg= FOUR;
            -5:seg= FIVE;
            -4:seg= SIX;
            -3:seg= SEVEN;
            -2:seg= EIGHT;
            -1:seg= NINE;
            0: seg= ZERO;
            1: seg= ONE;
            2: seg= TWO;
            3: seg= THREE;
            4: seg= FOUR;
            5: seg= FIVE;
            6: seg= SIX;
            7: seg= SEVEN;
            8: seg= EIGHT;
            9: seg= NINE;
            default: seg= SEG_SIX; 
        endcase      
       
end
   
endmodule

module freq_dv(
    input clk,
    output low,
    output led
);
    reg [32:0] q = 0;

    always @(posedge clk) begin
        q <= q + 1;
    end

    assign low = q[2];
    assign led = q[1];
   

endmodule