`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/09 21:18:11
// Design Name: 
// Module Name: tb_top_adder
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

module tb_top_adder();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
top_adder uut(
    .a      (a),
    .b      (b),
    .cin    (cin),
    .sum    (sum),
    .cout   (cout)
);
integer i;
integer j;
initial begin
  for (i = 0; i < 2; i = i + 1) begin
        cin=i;
       for (j = 0; j < 256; j = j + 1) begin
           #10 {a, b} = j[7:0];
           #10;
       end
   end
end
endmodule
