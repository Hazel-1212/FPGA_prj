module traffic_light(
    input clk,
    output reg red,
    output reg green,
    output reg blue,
    output reg [6:0]seg,
    output reg [7:0]AN
);
reg [3:0] time_left;

initial begin
    red=50;
    green=0;
    blue=0;
    time_left=4'b1010;
    seg=7'b1111111;
    AN=8'b11111111;
end

reg [1:0] phase = 0; // 0: red, 1: yellow, 2: green 3: yellow

  reg [26:0] counter=0;
  wire slow_clk;
  assign slow_clk = counter[25];
  assign seg_clk = counter[15]; // 1Hz clock for the 7-segment display

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

always@(posedge seg_clk)begin
    case(phase)
        2'b00:begin

            pwm_percentage_red = 50;
            pwm_percentage_green = 0;
            pwm_percentage_blue = 0;
        end

        2'b01:begin
           
            pwm_percentage_red = 25;
            pwm_percentage_green = 25;
            pwm_percentage_blue = 0;
            
        end

        2'b10:begin
            pwm_percentage_red = 0;
            pwm_percentage_green = 50;
            pwm_percentage_blue = 0;
            
        end

        2'b11:begin
            pwm_percentage_red = 25;
            pwm_percentage_green = 25;
            pwm_percentage_blue = 0;
           
        end
    endcase
end

always@(posedge slow_clk)begin
    case(phase)
        2'b00:begin
           
            if (time_left == 0) begin
                phase <= 1;
                time_left <= 4'b0101;
            end
             else begin
                phase<=0;
                time_left <= time_left - 1;
            end
        end

        2'b01:begin
           
            if (time_left == 0) begin
                phase <= 2;
                time_left <= 4'b1010;
            end
             else begin
                phase<=1;
                time_left <= time_left - 1;
            end

        end

        2'b10:begin
           
            if (time_left == 0) begin
                phase <= 3;
                time_left <= 4'b0101;
            end
            else begin
                phase<=2;
                time_left <= time_left - 1;
            end

        end

        2'b11:begin

            if (time_left == 0) begin
                phase <= 0;
                time_left <= 4'b1010;
            end
             else begin
                phase<=3;
                time_left <= time_left - 1;
            end
        end
    endcase
end

reg [3:0] display=4'b0000;
reg [1:0] two_bit[3:0];
reg s=0;

always@(posedge seg_clk)
    begin
        s<=~s; // toggle s every second
        case (s)
            1'b0: AN <= 8'b11111101; //6 
            1'b1: AN <= 8'b11111110; //7
        endcase
    
       if (s == 0) begin // left digit is being displayed now
            if (time_left == 10)
                seg <= ~7'b0110000; //1 (low-active)
            else
                seg <= ~7'b1111110; //0 (low-active)
            end
        else begin // right digit
            case (time_left)
        4'b0000: seg <= ~7'b1111110; //0
        4'b0001: seg <= ~7'b0110000; //1
        4'b0010: seg <= ~7'b1101101; //2
        4'b0011: seg <= ~7'b1111001; //3
        4'b0100: seg <= ~7'b0110011; //4
        4'b0101: seg <= ~7'b1011011; //5
        4'b0110: seg <= ~7'b1011111; //6
        4'b0111: seg <= ~7'b1110000; //7
        4'b1000: seg <= ~7'b1111111; //8
        4'b1001: seg <= ~7'b1111011; //9
        4'b1010: seg <= ~7'b1111110; //10
    endcase
end
    end
    
    
endmodule


