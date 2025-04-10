module top_adder(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]sum,
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

);
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