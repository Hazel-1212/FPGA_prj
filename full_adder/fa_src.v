module half_adder(
    input a,
    input b,
    output s,
    output cout
);

xor(s,a,b);
and(cout,a,b);

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
or(cout,c1,c2);

endmodule