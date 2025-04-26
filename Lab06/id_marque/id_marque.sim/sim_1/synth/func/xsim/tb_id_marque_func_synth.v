// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Apr 11 14:00:14 2025
// Host        : HazelTheCat running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/03 Digital
//               Lab/Lab05/id_marque/id_marque.sim/sim_1/synth/func/xsim/tb_id_marque_func_synth.v}
// Design      : id_marque
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module an_control
   (AN_OBUF,
    shift_IBUF,
    \ssd_reg[0]_0 );
  output [7:0]AN_OBUF;
  input shift_IBUF;
  input [0:0]\ssd_reg[0]_0 ;

  wire [7:0]AN_OBUF;
  wire \anoid[0]_i_1_n_0 ;
  wire \anoid[1]_i_1_n_0 ;
  wire \anoid[2]_i_1_n_0 ;
  wire \anoid[3]_i_1_n_0 ;
  wire \anoid[4]_i_1_n_0 ;
  wire \anoid[5]_i_1_n_0 ;
  wire \anoid[6]_i_1_n_0 ;
  wire \anoid[7]_i_1_n_0 ;
  wire shift_IBUF;
  wire [2:0]ssd;
  wire \ssd[0]_i_1_n_0 ;
  wire \ssd[1]_i_1_n_0 ;
  wire \ssd[2]_i_1_n_0 ;
  wire [0:0]\ssd_reg[0]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \anoid[0]_i_1 
       (.I0(ssd[0]),
        .I1(ssd[2]),
        .O(\anoid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anoid[1]_i_1 
       (.I0(ssd[2]),
        .I1(ssd[0]),
        .O(\anoid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anoid[2]_i_1 
       (.I0(ssd[2]),
        .I1(ssd[0]),
        .I2(ssd[1]),
        .O(\anoid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anoid[3]_i_1 
       (.I0(ssd[1]),
        .I1(ssd[0]),
        .I2(ssd[2]),
        .O(\anoid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anoid[4]_i_1 
       (.I0(ssd[0]),
        .I1(ssd[2]),
        .O(\anoid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \anoid[5]_i_1 
       (.I0(ssd[0]),
        .I1(ssd[2]),
        .O(\anoid[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anoid[6]_i_1 
       (.I0(ssd[1]),
        .I1(ssd[2]),
        .I2(ssd[0]),
        .O(\anoid[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \anoid[7]_i_1 
       (.I0(ssd[1]),
        .O(\anoid[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \anoid_reg[0] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[0]_i_1_n_0 ),
        .Q(AN_OBUF[0]),
        .S(ssd[1]));
  FDSE #(
    .INIT(1'b0)) 
    \anoid_reg[1] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[1]_i_1_n_0 ),
        .Q(AN_OBUF[1]),
        .S(ssd[1]));
  FDRE #(
    .INIT(1'b0)) 
    \anoid_reg[2] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[2]_i_1_n_0 ),
        .Q(AN_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \anoid_reg[3] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[3]_i_1_n_0 ),
        .Q(AN_OBUF[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \anoid_reg[4] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[4]_i_1_n_0 ),
        .Q(AN_OBUF[4]),
        .S(ssd[1]));
  FDSE #(
    .INIT(1'b0)) 
    \anoid_reg[5] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[5]_i_1_n_0 ),
        .Q(AN_OBUF[5]),
        .S(ssd[1]));
  FDRE #(
    .INIT(1'b0)) 
    \anoid_reg[6] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[6]_i_1_n_0 ),
        .Q(AN_OBUF[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \anoid_reg[7] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\anoid[5]_i_1_n_0 ),
        .Q(AN_OBUF[7]),
        .S(\anoid[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ssd[0]_i_1 
       (.I0(shift_IBUF),
        .I1(ssd[0]),
        .O(\ssd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \ssd[1]_i_1 
       (.I0(ssd[0]),
        .I1(shift_IBUF),
        .I2(ssd[1]),
        .O(\ssd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \ssd[2]_i_1 
       (.I0(ssd[1]),
        .I1(ssd[0]),
        .I2(shift_IBUF),
        .I3(ssd[2]),
        .O(\ssd[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_reg[0] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\ssd[0]_i_1_n_0 ),
        .Q(ssd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_reg[1] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\ssd[1]_i_1_n_0 ),
        .Q(ssd[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssd_reg[2] 
       (.C(\ssd_reg[0]_0 ),
        .CE(1'b1),
        .D(\ssd[2]_i_1_n_0 ),
        .Q(ssd[2]),
        .R(1'b0));
endmodule

module bcd_cnt
   (E,
    Q,
    D,
    CLK,
    DU_IBUF);
  output [0:0]E;
  output [3:0]Q;
  output [0:0]D;
  input CLK;
  input DU_IBUF;

  wire CLK;
  wire [0:0]D;
  wire DU_IBUF;
  wire [0:0]E;
  wire [3:0]Q;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;
  wire \temp[2]_i_1_n_0 ;
  wire \temp[3]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \seg[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \temp[0]_i_1 
       (.I0(Q[0]),
        .O(\temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA4A55A58)) 
    \temp[1]_i_1 
       (.I0(DU_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h9C9CC6C4)) 
    \temp[2]_i_1 
       (.I0(DU_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBE40FD02)) 
    \temp[3]_i_1 
       (.I0(DU_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\temp[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module freq_dv
   (\q_reg[25]_P_0 ,
    sys_clk_IBUF_BUFG,
    sys_rst_n_IBUF);
  output [0:0]\q_reg[25]_P_0 ;
  input sys_clk_IBUF_BUFG;
  input sys_rst_n_IBUF;

  wire [24:0]q;
  wire [25:1]q1;
  wire q1_carry__0_n_0;
  wire q1_carry__0_n_1;
  wire q1_carry__0_n_2;
  wire q1_carry__0_n_3;
  wire q1_carry__1_n_0;
  wire q1_carry__1_n_1;
  wire q1_carry__1_n_2;
  wire q1_carry__1_n_3;
  wire q1_carry__2_n_0;
  wire q1_carry__2_n_1;
  wire q1_carry__2_n_2;
  wire q1_carry__2_n_3;
  wire q1_carry__3_n_0;
  wire q1_carry__3_n_1;
  wire q1_carry__3_n_2;
  wire q1_carry__3_n_3;
  wire q1_carry__4_n_0;
  wire q1_carry__4_n_1;
  wire q1_carry__4_n_2;
  wire q1_carry__4_n_3;
  wire q1_carry__5_i_1_n_0;
  wire q1_carry_n_0;
  wire q1_carry_n_1;
  wire q1_carry_n_2;
  wire q1_carry_n_3;
  wire \q_reg[0]_LDC_i_1_n_0 ;
  wire \q_reg[0]_LDC_i_2_n_0 ;
  wire \q_reg[0]_LDC_n_0 ;
  wire \q_reg[0]_P_n_0 ;
  wire \q_reg[10]_LDC_i_1_n_0 ;
  wire \q_reg[10]_LDC_i_2_n_0 ;
  wire \q_reg[10]_LDC_n_0 ;
  wire \q_reg[10]_P_n_0 ;
  wire \q_reg[11]_LDC_i_1_n_0 ;
  wire \q_reg[11]_LDC_i_2_n_0 ;
  wire \q_reg[11]_LDC_n_0 ;
  wire \q_reg[11]_P_n_0 ;
  wire \q_reg[12]_LDC_i_1_n_0 ;
  wire \q_reg[12]_LDC_i_2_n_0 ;
  wire \q_reg[12]_LDC_n_0 ;
  wire \q_reg[12]_P_n_0 ;
  wire \q_reg[13]_LDC_i_1_n_0 ;
  wire \q_reg[13]_LDC_i_2_n_0 ;
  wire \q_reg[13]_LDC_n_0 ;
  wire \q_reg[13]_P_n_0 ;
  wire \q_reg[14]_LDC_i_1_n_0 ;
  wire \q_reg[14]_LDC_i_2_n_0 ;
  wire \q_reg[14]_LDC_n_0 ;
  wire \q_reg[14]_P_n_0 ;
  wire \q_reg[15]_LDC_i_1_n_0 ;
  wire \q_reg[15]_LDC_i_2_n_0 ;
  wire \q_reg[15]_LDC_n_0 ;
  wire \q_reg[15]_P_n_0 ;
  wire \q_reg[16]_LDC_i_1_n_0 ;
  wire \q_reg[16]_LDC_i_2_n_0 ;
  wire \q_reg[16]_LDC_n_0 ;
  wire \q_reg[16]_P_n_0 ;
  wire \q_reg[17]_LDC_i_1_n_0 ;
  wire \q_reg[17]_LDC_i_2_n_0 ;
  wire \q_reg[17]_LDC_n_0 ;
  wire \q_reg[17]_P_n_0 ;
  wire \q_reg[18]_LDC_i_1_n_0 ;
  wire \q_reg[18]_LDC_i_2_n_0 ;
  wire \q_reg[18]_LDC_n_0 ;
  wire \q_reg[18]_P_n_0 ;
  wire \q_reg[19]_LDC_i_1_n_0 ;
  wire \q_reg[19]_LDC_i_2_n_0 ;
  wire \q_reg[19]_LDC_n_0 ;
  wire \q_reg[19]_P_n_0 ;
  wire \q_reg[1]_LDC_i_1_n_0 ;
  wire \q_reg[1]_LDC_i_2_n_0 ;
  wire \q_reg[1]_LDC_n_0 ;
  wire \q_reg[1]_P_n_0 ;
  wire \q_reg[20]_LDC_i_1_n_0 ;
  wire \q_reg[20]_LDC_i_2_n_0 ;
  wire \q_reg[20]_LDC_n_0 ;
  wire \q_reg[20]_P_n_0 ;
  wire \q_reg[21]_LDC_i_1_n_0 ;
  wire \q_reg[21]_LDC_i_2_n_0 ;
  wire \q_reg[21]_LDC_n_0 ;
  wire \q_reg[21]_P_n_0 ;
  wire \q_reg[22]_LDC_i_1_n_0 ;
  wire \q_reg[22]_LDC_i_2_n_0 ;
  wire \q_reg[22]_LDC_n_0 ;
  wire \q_reg[22]_P_n_0 ;
  wire \q_reg[23]_LDC_i_1_n_0 ;
  wire \q_reg[23]_LDC_i_2_n_0 ;
  wire \q_reg[23]_LDC_n_0 ;
  wire \q_reg[23]_P_n_0 ;
  wire \q_reg[24]_LDC_i_1_n_0 ;
  wire \q_reg[24]_LDC_i_2_n_0 ;
  wire \q_reg[24]_LDC_n_0 ;
  wire \q_reg[24]_P_n_0 ;
  wire \q_reg[25]_LDC_i_1_n_0 ;
  wire \q_reg[25]_LDC_i_2_n_0 ;
  wire \q_reg[25]_LDC_n_0 ;
  wire [0:0]\q_reg[25]_P_0 ;
  wire \q_reg[25]_P_n_0 ;
  wire \q_reg[2]_LDC_i_1_n_0 ;
  wire \q_reg[2]_LDC_i_2_n_0 ;
  wire \q_reg[2]_LDC_n_0 ;
  wire \q_reg[2]_P_n_0 ;
  wire \q_reg[3]_LDC_i_1_n_0 ;
  wire \q_reg[3]_LDC_i_2_n_0 ;
  wire \q_reg[3]_LDC_n_0 ;
  wire \q_reg[3]_P_n_0 ;
  wire \q_reg[4]_LDC_i_1_n_0 ;
  wire \q_reg[4]_LDC_i_2_n_0 ;
  wire \q_reg[4]_LDC_n_0 ;
  wire \q_reg[4]_P_n_0 ;
  wire \q_reg[5]_LDC_i_1_n_0 ;
  wire \q_reg[5]_LDC_i_2_n_0 ;
  wire \q_reg[5]_LDC_n_0 ;
  wire \q_reg[5]_P_n_0 ;
  wire \q_reg[6]_LDC_i_1_n_0 ;
  wire \q_reg[6]_LDC_i_2_n_0 ;
  wire \q_reg[6]_LDC_n_0 ;
  wire \q_reg[6]_P_n_0 ;
  wire \q_reg[7]_LDC_i_1_n_0 ;
  wire \q_reg[7]_LDC_i_2_n_0 ;
  wire \q_reg[7]_LDC_n_0 ;
  wire \q_reg[7]_P_n_0 ;
  wire \q_reg[8]_LDC_i_1_n_0 ;
  wire \q_reg[8]_LDC_i_2_n_0 ;
  wire \q_reg[8]_LDC_n_0 ;
  wire \q_reg[8]_P_n_0 ;
  wire \q_reg[9]_LDC_i_1_n_0 ;
  wire \q_reg[9]_LDC_i_2_n_0 ;
  wire \q_reg[9]_LDC_n_0 ;
  wire \q_reg[9]_P_n_0 ;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n_IBUF;
  wire [3:0]NLW_q1_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_q1_carry__5_O_UNCONNECTED;

  CARRY4 q1_carry
       (.CI(1'b0),
        .CO({q1_carry_n_0,q1_carry_n_1,q1_carry_n_2,q1_carry_n_3}),
        .CYINIT(q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[4:1]),
        .S(q[4:1]));
  CARRY4 q1_carry__0
       (.CI(q1_carry_n_0),
        .CO({q1_carry__0_n_0,q1_carry__0_n_1,q1_carry__0_n_2,q1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[8:5]),
        .S(q[8:5]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__0_i_1
       (.I0(\q_reg[8]_LDC_n_0 ),
        .I1(\q_reg[8]_P_n_0 ),
        .O(q[8]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__0_i_2
       (.I0(\q_reg[7]_LDC_n_0 ),
        .I1(\q_reg[7]_P_n_0 ),
        .O(q[7]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__0_i_3
       (.I0(\q_reg[6]_LDC_n_0 ),
        .I1(\q_reg[6]_P_n_0 ),
        .O(q[6]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__0_i_4
       (.I0(\q_reg[5]_LDC_n_0 ),
        .I1(\q_reg[5]_P_n_0 ),
        .O(q[5]));
  CARRY4 q1_carry__1
       (.CI(q1_carry__0_n_0),
        .CO({q1_carry__1_n_0,q1_carry__1_n_1,q1_carry__1_n_2,q1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[12:9]),
        .S(q[12:9]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__1_i_1
       (.I0(\q_reg[12]_LDC_n_0 ),
        .I1(\q_reg[12]_P_n_0 ),
        .O(q[12]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__1_i_2
       (.I0(\q_reg[11]_LDC_n_0 ),
        .I1(\q_reg[11]_P_n_0 ),
        .O(q[11]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__1_i_3
       (.I0(\q_reg[10]_LDC_n_0 ),
        .I1(\q_reg[10]_P_n_0 ),
        .O(q[10]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__1_i_4
       (.I0(\q_reg[9]_LDC_n_0 ),
        .I1(\q_reg[9]_P_n_0 ),
        .O(q[9]));
  CARRY4 q1_carry__2
       (.CI(q1_carry__1_n_0),
        .CO({q1_carry__2_n_0,q1_carry__2_n_1,q1_carry__2_n_2,q1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[16:13]),
        .S(q[16:13]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__2_i_1
       (.I0(\q_reg[16]_LDC_n_0 ),
        .I1(\q_reg[16]_P_n_0 ),
        .O(q[16]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__2_i_2
       (.I0(\q_reg[15]_LDC_n_0 ),
        .I1(\q_reg[15]_P_n_0 ),
        .O(q[15]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__2_i_3
       (.I0(\q_reg[14]_LDC_n_0 ),
        .I1(\q_reg[14]_P_n_0 ),
        .O(q[14]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__2_i_4
       (.I0(\q_reg[13]_LDC_n_0 ),
        .I1(\q_reg[13]_P_n_0 ),
        .O(q[13]));
  CARRY4 q1_carry__3
       (.CI(q1_carry__2_n_0),
        .CO({q1_carry__3_n_0,q1_carry__3_n_1,q1_carry__3_n_2,q1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[20:17]),
        .S(q[20:17]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__3_i_1
       (.I0(\q_reg[20]_LDC_n_0 ),
        .I1(\q_reg[20]_P_n_0 ),
        .O(q[20]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__3_i_2
       (.I0(\q_reg[19]_LDC_n_0 ),
        .I1(\q_reg[19]_P_n_0 ),
        .O(q[19]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__3_i_3
       (.I0(\q_reg[18]_LDC_n_0 ),
        .I1(\q_reg[18]_P_n_0 ),
        .O(q[18]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__3_i_4
       (.I0(\q_reg[17]_LDC_n_0 ),
        .I1(\q_reg[17]_P_n_0 ),
        .O(q[17]));
  CARRY4 q1_carry__4
       (.CI(q1_carry__3_n_0),
        .CO({q1_carry__4_n_0,q1_carry__4_n_1,q1_carry__4_n_2,q1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q1[24:21]),
        .S(q[24:21]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__4_i_1
       (.I0(\q_reg[24]_LDC_n_0 ),
        .I1(\q_reg[24]_P_n_0 ),
        .O(q[24]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__4_i_2
       (.I0(\q_reg[23]_LDC_n_0 ),
        .I1(\q_reg[23]_P_n_0 ),
        .O(q[23]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__4_i_3
       (.I0(\q_reg[22]_LDC_n_0 ),
        .I1(\q_reg[22]_P_n_0 ),
        .O(q[22]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__4_i_4
       (.I0(\q_reg[21]_LDC_n_0 ),
        .I1(\q_reg[21]_P_n_0 ),
        .O(q[21]));
  CARRY4 q1_carry__5
       (.CI(q1_carry__4_n_0),
        .CO(NLW_q1_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q1_carry__5_O_UNCONNECTED[3:1],q1[25]}),
        .S({1'b0,1'b0,1'b0,q1_carry__5_i_1_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry__5_i_1
       (.I0(\q_reg[25]_LDC_n_0 ),
        .I1(\q_reg[25]_P_n_0 ),
        .O(q1_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry_i_1
       (.I0(\q_reg[0]_LDC_n_0 ),
        .I1(\q_reg[0]_P_n_0 ),
        .O(q[0]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry_i_2
       (.I0(\q_reg[4]_LDC_n_0 ),
        .I1(\q_reg[4]_P_n_0 ),
        .O(q[4]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry_i_3
       (.I0(\q_reg[3]_LDC_n_0 ),
        .I1(\q_reg[3]_P_n_0 ),
        .O(q[3]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry_i_4
       (.I0(\q_reg[2]_LDC_n_0 ),
        .I1(\q_reg[2]_P_n_0 ),
        .O(q[2]));
  LUT2 #(
    .INIT(4'h8)) 
    q1_carry_i_5
       (.I0(\q_reg[1]_LDC_n_0 ),
        .I1(\q_reg[1]_P_n_0 ),
        .O(q[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[0]_LDC 
       (.CLR(\q_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[0]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \q_reg[0]_LDC_i_1 
       (.I0(\q_reg[0]_P_n_0 ),
        .I1(\q_reg[0]_LDC_n_0 ),
        .I2(sys_rst_n_IBUF),
        .O(\q_reg[0]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \q_reg[0]_LDC_i_2 
       (.I0(\q_reg[0]_P_n_0 ),
        .I1(\q_reg[0]_LDC_n_0 ),
        .I2(sys_rst_n_IBUF),
        .O(\q_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[0]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[0]_LDC_i_1_n_0 ),
        .Q(\q_reg[0]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[10]_LDC 
       (.CLR(\q_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[10]_LDC_i_1 
       (.I0(q1[10]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[10]_LDC_i_2 
       (.I0(q1[10]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[10]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[10]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[10]_LDC_i_1_n_0 ),
        .Q(\q_reg[10]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[11]_LDC 
       (.CLR(\q_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[11]_LDC_i_1 
       (.I0(q1[11]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[11]_LDC_i_2 
       (.I0(q1[11]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[11]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[11]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[11]_LDC_i_1_n_0 ),
        .Q(\q_reg[11]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[12]_LDC 
       (.CLR(\q_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[12]_LDC_i_1 
       (.I0(q1[12]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[12]_LDC_i_2 
       (.I0(q1[12]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[12]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[12]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[12]_LDC_i_1_n_0 ),
        .Q(\q_reg[12]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[13]_LDC 
       (.CLR(\q_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[13]_LDC_i_1 
       (.I0(q1[13]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[13]_LDC_i_2 
       (.I0(q1[13]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[13]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[13]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[13]_LDC_i_1_n_0 ),
        .Q(\q_reg[13]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[14]_LDC 
       (.CLR(\q_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[14]_LDC_i_1 
       (.I0(q1[14]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[14]_LDC_i_2 
       (.I0(q1[14]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[14]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[14]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[14]_LDC_i_1_n_0 ),
        .Q(\q_reg[14]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[15]_LDC 
       (.CLR(\q_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[15]_LDC_i_1 
       (.I0(q1[15]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[15]_LDC_i_2 
       (.I0(q1[15]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[15]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[15]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[15]_LDC_i_1_n_0 ),
        .Q(\q_reg[15]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[16]_LDC 
       (.CLR(\q_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[16]_LDC_i_1 
       (.I0(q1[16]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[16]_LDC_i_2 
       (.I0(q1[16]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[16]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[16]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[16]_LDC_i_1_n_0 ),
        .Q(\q_reg[16]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[17]_LDC 
       (.CLR(\q_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[17]_LDC_i_1 
       (.I0(q1[17]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[17]_LDC_i_2 
       (.I0(q1[17]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[17]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[17]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[17]_LDC_i_1_n_0 ),
        .Q(\q_reg[17]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[18]_LDC 
       (.CLR(\q_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[18]_LDC_i_1 
       (.I0(q1[18]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[18]_LDC_i_2 
       (.I0(q1[18]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[18]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[18]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[18]_LDC_i_1_n_0 ),
        .Q(\q_reg[18]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[19]_LDC 
       (.CLR(\q_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[19]_LDC_i_1 
       (.I0(q1[19]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[19]_LDC_i_2 
       (.I0(q1[19]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[19]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[19]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[19]_LDC_i_1_n_0 ),
        .Q(\q_reg[19]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[1]_LDC 
       (.CLR(\q_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[1]_LDC_i_1 
       (.I0(q1[1]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[1]_LDC_i_2 
       (.I0(q1[1]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[1]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[1]_LDC_i_1_n_0 ),
        .Q(\q_reg[1]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[20]_LDC 
       (.CLR(\q_reg[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[20]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[20]_LDC_i_1 
       (.I0(q1[20]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[20]_LDC_i_2 
       (.I0(q1[20]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[20]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[20]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[20]_LDC_i_1_n_0 ),
        .Q(\q_reg[20]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[21]_LDC 
       (.CLR(\q_reg[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[21]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[21]_LDC_i_1 
       (.I0(q1[21]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[21]_LDC_i_2 
       (.I0(q1[21]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[21]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[21]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[21]_LDC_i_1_n_0 ),
        .Q(\q_reg[21]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[22]_LDC 
       (.CLR(\q_reg[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[22]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[22]_LDC_i_1 
       (.I0(q1[22]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[22]_LDC_i_2 
       (.I0(q1[22]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[22]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[22]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[22]_LDC_i_1_n_0 ),
        .Q(\q_reg[22]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[23]_LDC 
       (.CLR(\q_reg[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[23]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[23]_LDC_i_1 
       (.I0(q1[23]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[23]_LDC_i_2 
       (.I0(q1[23]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[23]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[23]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[23]_LDC_i_1_n_0 ),
        .Q(\q_reg[23]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[24]_LDC 
       (.CLR(\q_reg[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[24]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[24]_LDC_i_1 
       (.I0(q1[24]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[24]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[24]_LDC_i_2 
       (.I0(q1[24]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[24]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[24]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[24]_LDC_i_1_n_0 ),
        .Q(\q_reg[24]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[25]_LDC 
       (.CLR(\q_reg[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[25]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[25]_LDC_i_1 
       (.I0(q1[25]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[25]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[25]_LDC_i_2 
       (.I0(q1[25]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[25]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[25]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[25]_LDC_i_1_n_0 ),
        .Q(\q_reg[25]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[2]_LDC 
       (.CLR(\q_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[2]_LDC_i_1 
       (.I0(q1[2]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[2]_LDC_i_2 
       (.I0(q1[2]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[2]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[2]_LDC_i_1_n_0 ),
        .Q(\q_reg[2]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[3]_LDC 
       (.CLR(\q_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[3]_LDC_i_1 
       (.I0(q1[3]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[3]_LDC_i_2 
       (.I0(q1[3]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[3]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[3]_LDC_i_1_n_0 ),
        .Q(\q_reg[3]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[4]_LDC 
       (.CLR(\q_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[4]_LDC_i_1 
       (.I0(q1[4]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[4]_LDC_i_2 
       (.I0(q1[4]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[4]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[4]_LDC_i_1_n_0 ),
        .Q(\q_reg[4]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[5]_LDC 
       (.CLR(\q_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[5]_LDC_i_1 
       (.I0(q1[5]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[5]_LDC_i_2 
       (.I0(q1[5]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[5]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[5]_LDC_i_1_n_0 ),
        .Q(\q_reg[5]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[6]_LDC 
       (.CLR(\q_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[6]_LDC_i_1 
       (.I0(q1[6]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[6]_LDC_i_2 
       (.I0(q1[6]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[6]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[6]_LDC_i_1_n_0 ),
        .Q(\q_reg[6]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[7]_LDC 
       (.CLR(\q_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[7]_LDC_i_1 
       (.I0(q1[7]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[7]_LDC_i_2 
       (.I0(q1[7]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[7]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[7]_LDC_i_1_n_0 ),
        .Q(\q_reg[7]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[8]_LDC 
       (.CLR(\q_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[8]_LDC_i_1 
       (.I0(q1[8]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[8]_LDC_i_2 
       (.I0(q1[8]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[8]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[8]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[8]_LDC_i_1_n_0 ),
        .Q(\q_reg[8]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q_reg[9]_LDC 
       (.CLR(\q_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\q_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_reg[9]_LDC_i_1 
       (.I0(q1[9]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_reg[9]_LDC_i_2 
       (.I0(q1[9]),
        .I1(sys_rst_n_IBUF),
        .O(\q_reg[9]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \q_reg[9]_P 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\q_reg[9]_LDC_i_1_n_0 ),
        .Q(\q_reg[9]_P_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ssd[2]_i_2 
       (.I0(\q_reg[25]_LDC_n_0 ),
        .I1(\q_reg[25]_P_n_0 ),
        .O(\q_reg[25]_P_0 ));
endmodule

(* NotValidForBitStream *)
module id_marque
   (sys_clk,
    sys_rst_n,
    DU,
    shift,
    seg,
    AN);
  input sys_clk;
  input sys_rst_n;
  input DU;
  input shift;
  output [6:0]seg;
  output [7:0]AN;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire DU;
  wire DU_IBUF;
  wire [3:0]cnt_wire1;
  wire g3_n_0;
  wire g3_n_5;
  wire [25:25]q;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire shift;
  wire shift_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF DU_IBUF_inst
       (.I(DU),
        .O(DU_IBUF));
  svn_dcdr d0
       (.D(g3_n_5),
        .E(g3_n_0),
        .Q(seg_OBUF),
        .q(q),
        .\seg_reg[1]_0 (cnt_wire1));
  freq_dv g1
       (.\q_reg[25]_P_0 (q),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  an_control g2
       (.AN_OBUF(AN_OBUF),
        .shift_IBUF(shift_IBUF),
        .\ssd_reg[0]_0 (q));
  bcd_cnt g3
       (.CLK(q),
        .D(g3_n_5),
        .DU_IBUF(DU_IBUF),
        .E(g3_n_0),
        .Q(cnt_wire1));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF shift_IBUF_inst
       (.I(shift),
        .O(shift_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(sys_rst_n_IBUF));
endmodule

module svn_dcdr
   (Q,
    E,
    q,
    D,
    \seg_reg[1]_0 );
  output [6:0]Q;
  input [0:0]E;
  input [0:0]q;
  input [0:0]D;
  input [3:0]\seg_reg[1]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]q;
  wire \seg[0]_i_1_n_0 ;
  wire \seg[1]_i_1_n_0 ;
  wire \seg[2]_i_1_n_0 ;
  wire \seg[3]_i_1_n_0 ;
  wire \seg[5]_i_1_n_0 ;
  wire \seg[6]_i_2_n_0 ;
  wire [3:0]\seg_reg[1]_0 ;

  LUT2 #(
    .INIT(4'hB)) 
    \seg[0]_i_1 
       (.I0(\seg_reg[1]_0 [2]),
        .I1(\seg_reg[1]_0 [1]),
        .O(\seg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBABF)) 
    \seg[1]_i_1 
       (.I0(\seg_reg[1]_0 [2]),
        .I1(\seg_reg[1]_0 [1]),
        .I2(\seg_reg[1]_0 [0]),
        .I3(\seg_reg[1]_0 [3]),
        .O(\seg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg[2]_i_1 
       (.I0(\seg_reg[1]_0 [0]),
        .I1(\seg_reg[1]_0 [3]),
        .O(\seg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \seg[3]_i_1 
       (.I0(\seg_reg[1]_0 [3]),
        .I1(\seg_reg[1]_0 [0]),
        .I2(\seg_reg[1]_0 [2]),
        .I3(\seg_reg[1]_0 [1]),
        .O(\seg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \seg[5]_i_1 
       (.I0(\seg_reg[1]_0 [1]),
        .I1(\seg_reg[1]_0 [3]),
        .I2(\seg_reg[1]_0 [0]),
        .I3(\seg_reg[1]_0 [2]),
        .O(\seg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10DD)) 
    \seg[6]_i_2 
       (.I0(\seg_reg[1]_0 [3]),
        .I1(\seg_reg[1]_0 [0]),
        .I2(\seg_reg[1]_0 [2]),
        .I3(\seg_reg[1]_0 [1]),
        .O(\seg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[0] 
       (.C(q),
        .CE(E),
        .D(\seg[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[1] 
       (.C(q),
        .CE(E),
        .D(\seg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[2] 
       (.C(q),
        .CE(E),
        .D(\seg[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[3] 
       (.C(q),
        .CE(E),
        .D(\seg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(q),
        .CE(E),
        .D(D),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(q),
        .CE(E),
        .D(\seg[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[6] 
       (.C(q),
        .CE(E),
        .D(\seg[6]_i_2_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
