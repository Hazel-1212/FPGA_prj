module frequency_divider (
    input clk,          // Input clock (100 MHz)
    output reg slow_clk // Output slow clock (1 Hz)
);
    reg [26:0] counter;  // 27-bit counter for division

    always @(posedge clk) begin
        if (counter == 27'd50_000_000) begin  // 50 million clock cycles (100 MHz / 2)
            slow_clk <= ~slow_clk; // Toggle slow clock every 50 million cycles
            counter <= 27'd0;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule

module seven_segment_decoder (
    input [3:0] num,           // 4-bit binary input (0-9)
    output reg [6:0] seg       // 7-segment output (7 segments)
);
    always @(*) begin
        case (num)
            4'd0: seg = 7'b1111110; // 0
            4'd1: seg = 7'b0110000; // 1
            4'd2: seg = 7'b1101101; // 2
            4'd3: seg = 7'b1111001; // 3
            4'd4: seg = 7'b0110011; // 4
            4'd5: seg = 7'b1011011; // 5
            4'd6: seg = 7'b1011111; // 6
            4'd7: seg = 7'b1110000; // 7
            4'd8: seg = 7'b1111111; // 8
            4'd9: seg = 7'b1111011; // 9
            default: seg = 7'b0000000; // Default (off state)
        endcase
    end
endmodule

module sequence_generator (
    input clk,                // Input clock (100 MHz)
    output [6:0] seg         // 7-segment display output
);
    wire slow_clk;           // Slow clock (1 Hz)
    reg [3:0] num = 4'd0;    // 4-bit counter (0-9)
    
    // Instantiate the frequency divider (to slow down the clock)
    frequency_divider freq_div (
        .clk(clk),
        .slow_clk(slow_clk)
    );

    // Instantiate the 7-segment decoder
    seven_segment_decoder seg_decoder (
        .num(num),
        .seg(seg)
    );

    // Counter logic: Increment the number on each slow clock tick
    always @(posedge slow_clk) begin
        if (num == 4'd9) begin
            num <= 4'd0;  // Reset to 0 after 9
        end else begin
            num <= num + 1;  // Increment the counter
        end
    end
endmodule
