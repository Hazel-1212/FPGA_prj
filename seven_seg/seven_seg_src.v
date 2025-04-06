module  top_an_cnt_dgt_disp (
    input           sys_clk,
    input           sys_rst_n,
    output          CA,
    output          CB,
    output          CC,
    output          CD,
    output          CE,
    output          CF,
    output          CG,
    output          DP,
    output  [7:0]   AN  
);

//  Connection bewteen counter and decoder
//  Beware of the data width
wire [3:0] cnt_wire1;

an_ctrl #(
    .PERIOD_1S  (28'd100000)
)   an1(
    .sys_clk    (sys_clk    ),
    .sys_rst_n  (sys_rst_n  ),
    .AN         (AN         )
);

svn_dcdr seg1(
    .sys_clk    (sys_clk    ),
    .sys_rst_n  (sys_rst_n  ),
    .in         (cnt_wire1  ),     
    .dp_in      (1'b0       ),  // turn off the decimal point
    .CA         (CA         ),
    .CB         (CB         ),
    .CC         (CC         ),
    .CD         (CD         ),
    .CE         (CE         ),
    .CF         (CF         ),
    .CG         (CG         ),
    .DP         (DP         )
);

cnt #(
    .PERIOD_1s  (28'd10_000000)
)   cnt1(
    .sys_clk    (sys_clk    ),
    .sys_rst_n  (sys_rst_n  ),
    .enable     (1'b1       ),  // enable count function
    .is_up      (1'b1       ),  // set count up direction
    .q_out      (cnt_wire1  )
    
);

endmodule

module svn_dcdr(
    input           sys_clk,
    input           sys_rst_n,
    input   [3:0]   in,     // MSB->LSB in[3],in[2],in[1],in[0]
    input           dp_in,  // active high
    output          CA,
    output          CB,
    output          CC,
    output          CD,
    output          CE,
    output          CF,
    output          CG,
    output          DP
);

parameter ZERO      = 7'b0_00_0_00_1;
parameter ONE       = 7'b1_00_1_11_1;
parameter TWO       = 7'b0_01_0_01_0;
parameter THREE     = 7'b0_00_0_11_0;
parameter FOUR      = 7'b1_00_1_10_0;
parameter FIVE      = 7'b0_10_0_10_0;
parameter SIX       = 7'b0_10_0_00_0;
parameter SEVEN     = 7'b0_00_1_11_1;
parameter EIGHT     = 7'b0_00_0_00_0;
parameter NINE      = 7'b0_00_0_10_0;
parameter TEN       = 7'b1_11_0_01_0;
parameter ELEVEN    = 7'b1_10_0_11_0;
parameter TWELVE    = 7'b1_01_1_10_0;
parameter THIRTEEN  = 7'b0_11_0_10_0;
parameter FOURTEEN  = 7'b1_11_0_00_0;
parameter FIFTEEN   = 7'b1_11_1_11_1;

reg [6:0] seg;
    
always @(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        seg <= 7'b1111111;  // turn off every segment
    else
        case (in)
            4'h0:   seg <= ZERO;
            4'h1:   seg <= ONE;
            4'h2:   seg <= TWO;
            4'h3:   seg <= THREE;
            4'h4:   seg <= FOUR;
            4'h5:   seg <= FIVE;
            4'h6:   seg <= SIX;
            4'h7:   seg <= SEVEN;
            4'h8:   seg <= EIGHT;
            4'h9:   seg <= NINE;
            4'ha:   seg <= TEN;
            4'hb:   seg <= ELEVEN;
            4'hc:   seg <= TWELVE;
            4'hd:   seg <= THIRTEEN;
            4'he:   seg <= FOURTEEN;
            4'hf:   seg <= FIFTEEN;
        endcase
end

// Connect the segment signals to their respective output ports
assign CA = seg[6];
assign CB = seg[5];
assign CC = seg[4];
assign CD = seg[3];
assign CE = seg[2];
assign CF = seg[1];
assign CG = seg[0];
assign DP = ~dp_in;

endmodule

module cnt(
    input           sys_clk,
    input           sys_rst_n,
    input           enable,
    input           is_up,
    output [3:0]    q_out
);

parameter   PERIOD_1s   = 28'd100_000000;
parameter   Q_MAX       = 4'd9;
parameter   Q_MIN       = 4'd1;

reg [27:0]  cnt;
reg [3:0]   q;

always @(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        cnt <= 28'd0;
    else if (cnt == PERIOD_1s - 28'd1)
        cnt <= 28'd0;
    else
        cnt <= cnt + 28'd1;
end

always @(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        q <= Q_MIN;
    else if (cnt == PERIOD_1s - 28'd1)
    begin
        if (enable && is_up)
            if (q == Q_MAX)
                q <= Q_MIN;
            else    
                q <= q + 4'd1;
        else if (enable && !is_up)
            if (q == Q_MIN)
                q <= Q_MAX;
            else    
                q <= q - 4'd1;
        else
            q <= q;
    end
end

assign q_out = q;

endmodule

module an_ctrl(
    input           sys_clk,
    input           sys_rst_n,
    output [7:0]    AN
);

parameter PERIOD_1S = 28'd50_000000;

reg [27:0]  cnt_1s;
reg [7:0]   an_reg;

always @(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        cnt_1s <= 28'd0;
    else if (cnt_1s == (PERIOD_1S-28'd1))
        cnt_1s <= 28'd0;
    else
        cnt_1s <= cnt_1s + 1;
end

always @(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        an_reg <= 8'b1111_1110;
    else if (cnt_1s == (PERIOD_1S-28'd1))
        an_reg <= {an_reg[6:0], an_reg[7]};
    else
        an_reg <= an_reg;
end

assign AN = an_reg;

endmodule
