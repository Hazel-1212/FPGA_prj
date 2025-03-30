`timescale 1ns / 1ps

module tb_full_adder();
reg a,b,cin;
wie sum,cout;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial 
   begin
    #5 {cin,b,a}=3'b000;
    #5 {cin,b,a}=3'b001;
    #5 {cin,b,a}=3'b010;
   end
