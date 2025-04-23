module id_marque(
    input           sys_clk,
    input           sys_rst_n,
    input           shift,
    output [6:0]    seg,
    output [7:0]    AN
);

wire [3:0] cnt_wire1;
wire low;
assign AN=8'b00000000;

freq_dv g1(
    .sys_clk(sys_clk),
    .low(low)
);

bcd_cnt g2(
   .low(low),
   .shift(shift),
   .in(cnt_wire1) //output
);

svn_dcdr d0(
    .sys_clk    (low   ),
    .in         (cnt_wire1  ),     
    .CA         (CA         ),
    .CB         (CB         ),
    .CC         (CC         ),
    .CD         (CD         ),
    .CE         (CE         ),
    .CF         (CF         ),
    .CG         (CG         )
);

assign seg = {CA, CB, CC, CD, CE, CF, CG};

endmodule



//freq_dv
module freq_dv(
    input      sys_clk,
    output     low
);

reg [26:0]   q=0;
always @(posedge sys_clk )
    q<=q+1;
    assign low = q[1];

endmodule



//counter count to 10
module bcd_cnt(
    input           low,
    input         shift,
   output [3:0]     in
);

reg [3:0] temp=4'b0000;

always @(posedge low)begin
    if (shift==1'b1)
        if(temp==4'b1010)
            temp<=4'b0000;
        else
            temp<=temp+1;
    else
        if(temp==4'b0000)
            temp<=4'b1010;
        else
            temp<=temp-1;
end

assign in=temp;

endmodule



//seven decoder
module svn_dcdr(
    input           sys_clk,
    input   [3:0]   in,     // MSB->LSB in[3],in[2],in[1],in[0]
    output          CA,
    output          CB,
    output          CC,
    output          CD,
    output          CE,
    output          CF,
    output          CG
);

//113511170_
parameter ZERO      = 7'b1_00_1_11_1;
parameter ONE       = 7'b1_00_1_11_1;
parameter TWO       = 7'b0_00_0_11_0;
parameter THREE     = 7'b0_10_0_10_0;
parameter FOUR      = 7'b1_00_1_11_1;
parameter FIVE      = 7'b1_00_1_11_1;
parameter SIX       = 7'b1_00_1_11_1;
parameter SEVEN     = 7'b0_00_1_11_1;
parameter EIGHT     = 7'b0_00_0_00_1;

parameter NINE      = 7'b1_11_1_11_1; //blank



reg [6:0] seg=7'b1_00_1_11_1;
    
always @(posedge sys_clk)
begin
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

endmodule

