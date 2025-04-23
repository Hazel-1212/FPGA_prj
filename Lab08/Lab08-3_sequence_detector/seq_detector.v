`timescale 1ns / 1ps

module seq_detector(
    input clk,
    output reg [7:0] LED,
    output reg detect
);

reg [15:0]pattern;
initial begin
    LED = 8'b00000000; // Initialize LED to 0
    detect = 0; // Initialize detect to 0
    pattern={1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1};
end

reg [25:0] counter = 0;
wire slow_clk;

always @(posedge clk) begin
    counter<=counter+1;
end
assign slow_clk = counter[25]; // Slow clock for LED update

// Detect the sequence "10111001"
reg cur=0;
integer i=0;
always @(posedge slow_clk) begin
i<=i+1;
    cur <= pattern[i%16];
    LED <= {LED[6:0], cur}; // Shift in the received bit
    if (LED == 8'b10111001) begin
        detect <= 1; // Sequence detected
    end else begin
        detect <= 0; // Sequence not detected
    end
end


endmodule

    
