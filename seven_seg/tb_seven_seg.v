module tb_sequence_generator;

    // Inputs
    reg clk;                // Input clock (100 MHz)
    
    // Outputs
    wire [6:0] seg;        // 7-segment display output (7 segments)

    // Instantiate the sequence generator (Device Under Test)
    sequence_generator uut (
        .clk(clk),
        .seg(seg)
    );

    // Clock generation: 10 ns period clock (100 MHz)
    always begin
        #5 clk = ~clk; // Toggle clock every 5ns for a 100 MHz clock
    end

    initial begin
        // Initialize signals
        clk = 0;

        // Wait for some time to simulate the behavior (let the counter run)
        #1000000;  // Wait for approximately 10 seconds (for a 1 Hz output)

        // Finish simulation
        $finish;
    end

    // Display output on simulation console
    initial begin
        $monitor("Time = %t, seg = %b", $time, seg);
    end

endmodule
