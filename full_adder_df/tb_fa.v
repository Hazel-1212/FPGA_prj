module tb_full_adder();
reg [1:0] a;
reg [1:0] b;
reg cin;
wire [1:0] sum;
wire cout;
full_adder uut(
    .a      (a),
    .b      (b),
    .cin    (cin),
    .sum    (sum),
    .cout   (cout)
);
initial
  begin
        {cin, a, b} = 5'b00000;
    #10 {cin, a, b} = 5'b00001;
    #10 {cin, a, b} = 5'b00010;
    #10 {cin, a, b} = 5'b00011;
    #10 {cin, a, b} = 5'b00100;
    #10 {cin, a, b} = 5'b00101;
    #10 {cin, a, b} = 5'b00110;
    #10 {cin, a, b} = 5'b00111; 
            
    #10 {cin, a, b} = 5'b01000;
    #10 {cin, a, b} = 5'b01001;
    #10 {cin, a, b} = 5'b01010;
    #10 {cin, a, b} = 5'b01011;
    #10 {cin, a, b} = 5'b01100;
    #10 {cin, a, b} = 5'b01101;
    #10 {cin, a, b} = 5'b01110;
    #10 {cin, a, b} = 5'b01111; 
            
    #10 {cin, a, b} = 5'b10000;
    #10 {cin, a, b} = 5'b10001;
    #10 {cin, a, b} = 5'b10010;
    #10 {cin, a, b} = 5'b10011;
    #10 {cin, a, b} = 5'b10100;
    #10 {cin, a, b} = 5'b10101;
    #10 {cin, a, b} = 5'b10110;
    #10 {cin, a, b} = 5'b10111; 
                         
    #10 {cin, a, b} = 5'b11000;
    #10 {cin, a, b} = 5'b11001;
    #10 {cin, a, b} = 5'b11010;
    #10 {cin, a, b} = 5'b11011;
    #10 {cin, a, b} = 5'b11100;
    #10 {cin, a, b} = 5'b11101;
    #10 {cin, a, b} = 5'b11110;
    #10 {cin, a, b} = 5'b11111;
end
endmodule