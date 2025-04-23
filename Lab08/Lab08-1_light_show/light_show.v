module light_show(
    input clk,
    output reg red,
    output reg green,
    output reg blue
);
  reg [2:0] dir=0;

  reg [25:0] counter=0;
  wire slow_clk;
  assign slow_clk = counter[20];

reg [18:0] pwm_counter = 0;
reg [7:0] pwm_percentage_red = 50; // 0-50%
reg [7:0] pwm_percentage_green = 0;
reg [7:0] pwm_percentage_blue = 0;

always@(posedge clk)begin
    counter <= counter + 1;
    pwm_counter <= pwm_counter + 1;

    if (pwm_percentage_red == 0) begin         // 0% duty cycle
        red <= 0;
    end
    else begin
        if (pwm_counter >= (pwm_percentage_red * 1000)) begin
            red <= 0;
        end        
        else begin
            red <= 1;
        end
    end
    
    if (pwm_percentage_green == 0) begin         // 0% duty cycle
        green <= 0;
    end
    else begin
        if (pwm_counter >= (pwm_percentage_green * 1000)) begin
            green <= 0;
        end        
        else begin
            green <= 1;
        end
    end

    if (pwm_percentage_blue == 0) begin         // 0% duty cycle
        blue <= 0;
    end
    else begin
        if (pwm_counter >= (pwm_percentage_blue * 1000)) begin
            blue <= 0;
        end        
        else begin
            blue <= 1;
        end
    end
end

//direction 0 : red 50%, green 0%, blue 0%
//direction 1 : red 0%, green 50%, blue 0%
//direction 2 : red 0%, green 0%, blue 50%
always@(posedge slow_clk)begin
    case(dir)
        0:begin
            pwm_percentage_red <= pwm_percentage_red - 1;
            pwm_percentage_green <= pwm_percentage_green + 1;
            pwm_percentage_blue <= 0;
            if (pwm_percentage_red == 0) begin
                dir <= 1;
            end
        end
        1:begin
            pwm_percentage_red <= 0;
            pwm_percentage_green <= pwm_percentage_green - 1;
            pwm_percentage_blue <= pwm_percentage_blue + 1;
            if (pwm_percentage_green == 0) begin
                dir <= 2;
            end

        end
        2:begin
            pwm_percentage_red <= pwm_percentage_red + 1;
            pwm_percentage_green <= 0;
            pwm_percentage_blue <= pwm_percentage_blue - 1;
            if (pwm_percentage_blue == 0) begin
                dir <= 0;
            end
        end
    endcase

end

endmodule