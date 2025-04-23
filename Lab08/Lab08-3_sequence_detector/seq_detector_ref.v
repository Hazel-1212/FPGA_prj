`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 08:15:44 AM
// Design Name: 
// Module Name: seq_detector
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


module seq_detector(
    input clk,
    input pmod_signal,
    output reg [7:0] captured_data_led, // 8 LEDs display currently captured data
    output reg detection_led // one LED turns on if the sequence "10110101" is detected
);

reg [25:0] counter = 0;
wire slow_clk;

// read Pmod input and update LED output
always@(posedge slow_clk)
begin
    captured_data_led = (captured_data_led << 1);
    captured_data_led[0] = ~pmod_signal;
    
    if (captured_data_led == 8'b10110101) // sequence detected
        detection_led = 1;
    else
        detection_led = 0;
end

//clock
always@(posedge clk)
begin
    counter <= counter + 1;
end

assign slow_clk = counter[25];

endmodule
