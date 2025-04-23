`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/09 21:16:36
// Design Name: 
// Module Name: fa_src
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
module top_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire s1, s2, s3, s4;
wire c1, c2, c3, c4;

full_adder f1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(s1),
    .cout(c1)
);

full_adder f2(
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(s2),
    .cout(c2)
);

full_adder f3(
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(s3),
    .cout(c3)
); // �� fixed semicolon

full_adder f4(
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .sum(s4),
    .cout(c4)
);

assign cout = c4;
assign sum = {s4, s3, s2, s1};

endmodule


module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire c1,s1,c2;

half_adder h1 (
    .a(a),
    .b(b),
    .s(s1),
    .cout(c1)
);
half_adder h2(
    .a(s1),
    .b(cin),
    .s(sum),
    .cout(c2)

);
or o1(cout,c1,c2);

endmodule

module half_adder(
    input a,
    input b,
    output s,
    output cout
);

xor x1(s,a,b);
and a1(cout,a,b);

endmodule
