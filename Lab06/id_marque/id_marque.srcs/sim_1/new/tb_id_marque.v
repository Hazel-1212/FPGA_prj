`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/10 21:23:22
// Design Name: 
// Module Name: tb_id_marque
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


`timescale 1ns / 1ps

module tb_id_marquee();

wire [6:0] seg;
wire [7:0] an;



reg clk;
reg up;

id_marquee uut(
    .clk(clk),
    .up(up),
    .seg(seg),
    .an(an)
);

initial begin
    clk=0;
    up=1; 
end

always #5 clk=~clk;


endmodule