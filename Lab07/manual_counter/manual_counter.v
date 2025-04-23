// manual counter
// 4-bit counter
// count up and down

/*Create a manual counter which is satisfied the following requirements:
Modeling style: behavior
Input: button
Output: exactly one 7 segment display = 1-digit number
The display value starts from 0.
The display value ranges from 0 to 15 in a 7-segment display format.
To increase the current value by 1, click the 'up' button once.
To decrease the current value by 1, click the 'down' button once.
You need to solve the problem of button bounce, which occurs when a single click is read as multiple clicks."*/

module manual_counter(
    input clk, // clock signal
    input up, // button to increase the count
    input down, // button to decrease the count
    output reg [6:0] seg,// 7-segment display output
    output [7:0] AN
);
assign AN = 8'b11111110; // Enable the first 7-segment display
reg [3:0] count;
initial begin
    count = 4'b0000; // Initialize count to 0
    seg = 7'b1111111; // Initialize 7-segment display to 0
end

reg [26:0] q;
wire low;

always @(posedge clk)begin
 q<=q+1;
end

assign low= q[22];

always @(posedge low) begin
    // Button debounce logic
    if(up && !down)begin
        // Check if the count is less than 15 before incrementing
        if(count < 4'b1111)begin
            count <= count + 1; // Increment count
        end else begin
            count <= 4'b0000; // Reset to 0 if it exceeds 15
        end
    end else if(down && !up)begin
        // Check if the count is greater than 0 before decrementing
        if(count > 4'b0000)begin
            count <= count - 1; // Decrement count
        end else begin
            count <= 4'b1111; // Set to 15 if it goes below 0
        end
    end

    case(count)
        4'b0000: seg = 7'b0000001; // Display 0
        4'b0001: seg = 7'b1001111; // Display 1
        4'b0010: seg = 7'b0010010; // Display 2
        4'b0011: seg = 7'b0000110; // Display 3
        4'b0100: seg = 7'b1001100; // Display 4
        4'b0101: seg = 7'b0100100; // Display 5
        4'b0110: seg = 7'b0100000; // Display 6
        4'b0111: seg = 7'b0001111; // Display 7
        4'b1000: seg = 7'b0000000; // Display 8
        4'b1001: seg = 7'b0001100; // Display 9
        4'b1010: seg = 7'b0001000; // Display A
        4'b1011: seg = 7'b1100000; // Display B
        4'b1100: seg = 7'b0110001; // Display C
        4'b1101: seg = 7'b1000010; // Display D
        4'b1110: seg = 7'b0110000; // Display E
        default: seg = 7'b0111000; // Display F for any other value (should not happen)
    endcase

end

endmodule
