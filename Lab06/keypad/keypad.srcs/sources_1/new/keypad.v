`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/17 13:30:44
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
    output reg [6:0]  seg,
    output reg dp,
    output [7:0] an,
    output reg [3:0] row,
    output reg [3:0] count
);
wire low;
reg [1:0] c=2'b00;
assign an=8'b11111110;

initial begin
count=4'b1111;
seg=7'b1111111;
dp=1'b1;
end

freq_dv g1(
    .clk(clk),
    .low(low)
);





always @(posedge low) begin
    case(c)
        2'b00: begin
           
            row <= 4'b1000;
        end
        2'b01: begin
          
            row <= 4'b0100;
        end
        2'b10: begin
           
            row <= 4'b0010;
        end
        2'b11: begin
           
            row <= 4'b0001;
        end
    endcase
end

always @(posedge low) begin
    case(col)
        3'b000: begin
            count <= 15; //_:15
            c<=c+1;
        end
        3'b100: begin
            count <= 1+3*c;//*:10
        end
        3'b010: begin
            count <= 2+3*c;
            if(2+3*c==11)
                count <= 0; //0:0
        end
        3'b001: begin
            count <= 3+3*c; //#:12
        end
    endcase
end

    always @(posedge low) begin
        
        case (count)
            4'b0000: seg = 7'b0000001; //0
            4'b0001: seg = 7'b1001111; //1
            4'b0010: seg = 7'b0010010; //2
            4'b0011: seg = 7'b0000110; //3
            4'b0100: seg = 7'b1001100; //4
            4'b0101: seg = 7'b0100100; //5
            4'b0110: seg = 7'b0100000; //6
            4'b0111: seg = 7'b0001111; //7
            4'b1000: seg = 7'b0000000; //8
            4'b1001: seg = 7'b0000100; //9
            4'b1010: begin
                seg = 7'b0000000; 
                dp  = 1'b0; //10
                end
            4'b1100: seg = 7'b0011100; //12
            4'b1111: begin
                seg = 7'b1111111;//15
                dp  = 1'b1;
                end
            default: seg = 7'b1111111; //nothing be pressed
        endcase
    end

endmodule


module freq_dv(
    input clk,
    output low
);
    reg [32:0] q = 0;

    always @(posedge clk) begin
        q <= q + 1;
    end

    assign low = q[12];

endmodule

