// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Oct 21 18:30:13 2021
// Host        : patricio-TUF-FX505GT running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/patricio/Facultad/arqui/practico/arqui-alu/tp1/tp1.sim/sim_1/synth/timing/xsim/use_alu_tb_time_synth.v
// Design      : use_alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (o_result_OBUF,
    Q,
    _carry__0_0,
    \o_result_OBUF[7]_inst_i_1_0 ,
    \o_result[0] ,
    \o_result[0]_0 ,
    \o_result[1] ,
    \o_result[2] ,
    \o_result[3] ,
    \o_result[4] ,
    \o_result[5] ,
    \o_result[5]_0 ,
    \o_result[5]_1 ,
    \o_result[5]_2 ,
    \o_result[6] ,
    \o_result[6]_0 ,
    \o_result[7] );
  output [7:0]o_result_OBUF;
  input [7:0]Q;
  input [0:0]_carry__0_0;
  input [7:0]\o_result_OBUF[7]_inst_i_1_0 ;
  input \o_result[0] ;
  input \o_result[0]_0 ;
  input \o_result[1] ;
  input \o_result[2] ;
  input \o_result[3] ;
  input \o_result[4] ;
  input \o_result[5] ;
  input \o_result[5]_0 ;
  input \o_result[5]_1 ;
  input \o_result[5]_2 ;
  input \o_result[6] ;
  input \o_result[6]_0 ;
  input \o_result[7] ;

  wire [7:0]Q;
  wire [0:0]_carry__0_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [7:0]data0;
  wire \o_result[0] ;
  wire \o_result[0]_0 ;
  wire \o_result[1] ;
  wire \o_result[2] ;
  wire \o_result[3] ;
  wire \o_result[4] ;
  wire \o_result[5] ;
  wire \o_result[5]_0 ;
  wire \o_result[5]_1 ;
  wire \o_result[5]_2 ;
  wire \o_result[6] ;
  wire \o_result[6]_0 ;
  wire \o_result[7] ;
  wire [7:0]o_result_OBUF;
  wire \o_result_OBUF[0]_inst_i_2_n_0 ;
  wire \o_result_OBUF[1]_inst_i_2_n_0 ;
  wire \o_result_OBUF[2]_inst_i_2_n_0 ;
  wire \o_result_OBUF[3]_inst_i_2_n_0 ;
  wire \o_result_OBUF[4]_inst_i_2_n_0 ;
  wire [7:0]\o_result_OBUF[7]_inst_i_1_0 ;
  wire \o_result_OBUF[7]_inst_i_3_n_0 ;
  wire [3:3]NLW__carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],_carry__0_0}),
        .O(data0[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({NLW__carry__0_CO_UNCONNECTED[3],_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [7]),
        .I1(_carry__0_0),
        .I2(Q[7]),
        .O(_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [6]),
        .I1(_carry__0_0),
        .I2(Q[6]),
        .O(_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [5]),
        .I1(_carry__0_0),
        .I2(Q[5]),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [4]),
        .I1(_carry__0_0),
        .I2(Q[4]),
        .O(_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [3]),
        .I1(_carry__0_0),
        .I2(Q[3]),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [2]),
        .I1(_carry__0_0),
        .I2(Q[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [1]),
        .I1(_carry__0_0),
        .I2(Q[1]),
        .O(_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_4
       (.I0(\o_result_OBUF[7]_inst_i_1_0 [0]),
        .O(_carry_i_4_n_0));
  MUXF7 \o_result_OBUF[0]_inst_i_1 
       (.I0(\o_result_OBUF[0]_inst_i_2_n_0 ),
        .I1(\o_result[0]_0 ),
        .O(o_result_OBUF[0]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[0]_inst_i_2 
       (.I0(Q[0]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [0]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[0]),
        .O(\o_result_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \o_result_OBUF[1]_inst_i_1 
       (.I0(\o_result_OBUF[1]_inst_i_2_n_0 ),
        .I1(\o_result[1] ),
        .O(o_result_OBUF[1]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[1]_inst_i_2 
       (.I0(Q[1]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [1]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[1]),
        .O(\o_result_OBUF[1]_inst_i_2_n_0 ));
  MUXF7 \o_result_OBUF[2]_inst_i_1 
       (.I0(\o_result_OBUF[2]_inst_i_2_n_0 ),
        .I1(\o_result[2] ),
        .O(o_result_OBUF[2]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[2]_inst_i_2 
       (.I0(Q[2]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [2]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[2]),
        .O(\o_result_OBUF[2]_inst_i_2_n_0 ));
  MUXF7 \o_result_OBUF[3]_inst_i_1 
       (.I0(\o_result_OBUF[3]_inst_i_2_n_0 ),
        .I1(\o_result[3] ),
        .O(o_result_OBUF[3]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[3]_inst_i_2 
       (.I0(Q[3]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [3]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[3]),
        .O(\o_result_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \o_result_OBUF[4]_inst_i_1 
       (.I0(\o_result_OBUF[4]_inst_i_2_n_0 ),
        .I1(\o_result[4] ),
        .O(o_result_OBUF[4]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[4]_inst_i_2 
       (.I0(Q[4]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [4]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[4]),
        .O(\o_result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \o_result_OBUF[5]_inst_i_1 
       (.I0(\o_result[5] ),
        .I1(\o_result[0] ),
        .I2(\o_result[5]_0 ),
        .I3(\o_result[5]_1 ),
        .I4(\o_result[5]_2 ),
        .I5(data0[5]),
        .O(o_result_OBUF[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \o_result_OBUF[6]_inst_i_1 
       (.I0(\o_result[6] ),
        .I1(\o_result[0] ),
        .I2(\o_result[6]_0 ),
        .I3(\o_result[5]_1 ),
        .I4(\o_result[5]_2 ),
        .I5(data0[6]),
        .O(o_result_OBUF[6]));
  MUXF7 \o_result_OBUF[7]_inst_i_1 
       (.I0(\o_result_OBUF[7]_inst_i_3_n_0 ),
        .I1(\o_result[7] ),
        .O(o_result_OBUF[7]),
        .S(\o_result[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \o_result_OBUF[7]_inst_i_3 
       (.I0(Q[7]),
        .I1(\o_result_OBUF[7]_inst_i_1_0 [7]),
        .I2(\o_result[5]_1 ),
        .I3(\o_result[5]_2 ),
        .I4(data0[7]),
        .O(\o_result_OBUF[7]_inst_i_3_n_0 ));
endmodule

(* NotValidForBitStream *)
module use_alu
   (i_switches,
    i_btn_a,
    i_btn_b,
    i_btn_op,
    i_clk,
    o_result);
  input [7:0]i_switches;
  input i_btn_a;
  input i_btn_b;
  input i_btn_op;
  input i_clk;
  output [7:0]o_result;

  wire \0 ;
  wire [4:0]data4;
  wire [4:0]data5;
  wire [7:0]data_a;
  wire [7:0]data_b;
  wire i_btn_a;
  wire i_btn_a_IBUF;
  wire i_btn_b;
  wire i_btn_b_IBUF;
  wire i_btn_op;
  wire i_btn_op_IBUF;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_switches;
  wire [7:0]i_switches_IBUF;
  wire [7:0]o_result;
  wire [7:0]o_result_OBUF;
  wire \o_result_OBUF[0]_inst_i_3_n_0 ;
  wire \o_result_OBUF[0]_inst_i_6_n_0 ;
  wire \o_result_OBUF[1]_inst_i_3_n_0 ;
  wire \o_result_OBUF[1]_inst_i_6_n_0 ;
  wire \o_result_OBUF[2]_inst_i_3_n_0 ;
  wire \o_result_OBUF[2]_inst_i_6_n_0 ;
  wire \o_result_OBUF[2]_inst_i_7_n_0 ;
  wire \o_result_OBUF[3]_inst_i_3_n_0 ;
  wire \o_result_OBUF[3]_inst_i_6_n_0 ;
  wire \o_result_OBUF[3]_inst_i_7_n_0 ;
  wire \o_result_OBUF[4]_inst_i_3_n_0 ;
  wire \o_result_OBUF[4]_inst_i_6_n_0 ;
  wire \o_result_OBUF[4]_inst_i_7_n_0 ;
  wire \o_result_OBUF[4]_inst_i_8_n_0 ;
  wire \o_result_OBUF[4]_inst_i_9_n_0 ;
  wire \o_result_OBUF[5]_inst_i_2_n_0 ;
  wire \o_result_OBUF[5]_inst_i_3_n_0 ;
  wire \o_result_OBUF[5]_inst_i_4_n_0 ;
  wire \o_result_OBUF[5]_inst_i_5_n_0 ;
  wire \o_result_OBUF[5]_inst_i_6_n_0 ;
  wire \o_result_OBUF[5]_inst_i_7_n_0 ;
  wire \o_result_OBUF[6]_inst_i_2_n_0 ;
  wire \o_result_OBUF[6]_inst_i_3_n_0 ;
  wire \o_result_OBUF[6]_inst_i_4_n_0 ;
  wire \o_result_OBUF[6]_inst_i_5_n_0 ;
  wire \o_result_OBUF[6]_inst_i_6_n_0 ;
  wire \o_result_OBUF[6]_inst_i_7_n_0 ;
  wire \o_result_OBUF[6]_inst_i_8_n_0 ;
  wire \o_result_OBUF[6]_inst_i_9_n_0 ;
  wire \o_result_OBUF[7]_inst_i_2_n_0 ;
  wire \o_result_OBUF[7]_inst_i_4_n_0 ;
  wire \o_result_OBUF[7]_inst_i_5_n_0 ;
  wire \o_result_OBUF[7]_inst_i_6_n_0 ;
  wire \operation_reg_n_0_[0] ;
  wire \operation_reg_n_0_[2] ;
  wire \operation_reg_n_0_[3] ;
  wire \operation_reg_n_0_[4] ;
  wire \operation_reg_n_0_[5] ;

initial begin
 $sdf_annotate("use_alu_tb_time_synth.sdf",,,,"tool_control");
end
  alu alu_8bit
       (.Q(data_a),
        ._carry__0_0(\0 ),
        .\o_result[0] (\o_result_OBUF[7]_inst_i_2_n_0 ),
        .\o_result[0]_0 (\o_result_OBUF[0]_inst_i_3_n_0 ),
        .\o_result[1] (\o_result_OBUF[1]_inst_i_3_n_0 ),
        .\o_result[2] (\o_result_OBUF[2]_inst_i_3_n_0 ),
        .\o_result[3] (\o_result_OBUF[3]_inst_i_3_n_0 ),
        .\o_result[4] (\o_result_OBUF[4]_inst_i_3_n_0 ),
        .\o_result[5] (\o_result_OBUF[5]_inst_i_2_n_0 ),
        .\o_result[5]_0 (\o_result_OBUF[5]_inst_i_3_n_0 ),
        .\o_result[5]_1 (\o_result_OBUF[6]_inst_i_4_n_0 ),
        .\o_result[5]_2 (\o_result_OBUF[6]_inst_i_5_n_0 ),
        .\o_result[6] (\o_result_OBUF[6]_inst_i_2_n_0 ),
        .\o_result[6]_0 (\o_result_OBUF[6]_inst_i_3_n_0 ),
        .\o_result[7] (\o_result_OBUF[7]_inst_i_4_n_0 ),
        .o_result_OBUF(o_result_OBUF),
        .\o_result_OBUF[7]_inst_i_1_0 (data_b));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[0]),
        .Q(data_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[1]),
        .Q(data_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[2]),
        .Q(data_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[3]),
        .Q(data_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[4]),
        .Q(data_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[5]),
        .Q(data_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[6]),
        .Q(data_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_a_IBUF),
        .D(i_switches_IBUF[7]),
        .Q(data_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[0]),
        .Q(data_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[1]),
        .Q(data_b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[2]),
        .Q(data_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[3]),
        .Q(data_b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[4]),
        .Q(data_b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[5]),
        .Q(data_b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[6]),
        .Q(data_b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_b_IBUF),
        .D(i_switches_IBUF[7]),
        .Q(data_b[7]),
        .R(1'b0));
  IBUF i_btn_a_IBUF_inst
       (.I(i_btn_a),
        .O(i_btn_a_IBUF));
  IBUF i_btn_b_IBUF_inst
       (.I(i_btn_b),
        .O(i_btn_b_IBUF));
  IBUF i_btn_op_IBUF_inst
       (.I(i_btn_op),
        .O(i_btn_op_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_switches_IBUF[0]_inst 
       (.I(i_switches[0]),
        .O(i_switches_IBUF[0]));
  IBUF \i_switches_IBUF[1]_inst 
       (.I(i_switches[1]),
        .O(i_switches_IBUF[1]));
  IBUF \i_switches_IBUF[2]_inst 
       (.I(i_switches[2]),
        .O(i_switches_IBUF[2]));
  IBUF \i_switches_IBUF[3]_inst 
       (.I(i_switches[3]),
        .O(i_switches_IBUF[3]));
  IBUF \i_switches_IBUF[4]_inst 
       (.I(i_switches[4]),
        .O(i_switches_IBUF[4]));
  IBUF \i_switches_IBUF[5]_inst 
       (.I(i_switches[5]),
        .O(i_switches_IBUF[5]));
  IBUF \i_switches_IBUF[6]_inst 
       (.I(i_switches[6]),
        .O(i_switches_IBUF[6]));
  IBUF \i_switches_IBUF[7]_inst 
       (.I(i_switches[7]),
        .O(i_switches_IBUF[7]));
  OBUF \o_result_OBUF[0]_inst 
       (.I(o_result_OBUF[0]),
        .O(o_result[0]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \o_result_OBUF[0]_inst_i_3 
       (.I0(data5[0]),
        .I1(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[0]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[0]),
        .I5(data_a[0]),
        .O(\o_result_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \o_result_OBUF[0]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[0]_inst_i_6_n_0 ),
        .I2(data_b[0]),
        .I3(\o_result_OBUF[1]_inst_i_6_n_0 ),
        .O(data5[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_result_OBUF[0]_inst_i_5 
       (.I0(\o_result_OBUF[1]_inst_i_6_n_0 ),
        .I1(data_b[0]),
        .I2(\o_result_OBUF[0]_inst_i_6_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(data_a[7]),
        .O(data4[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_result_OBUF[0]_inst_i_6 
       (.I0(data_a[6]),
        .I1(data_a[2]),
        .I2(data_b[1]),
        .I3(data_a[4]),
        .I4(data_b[2]),
        .I5(data_a[0]),
        .O(\o_result_OBUF[0]_inst_i_6_n_0 ));
  OBUF \o_result_OBUF[1]_inst 
       (.I(o_result_OBUF[1]),
        .O(o_result[1]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \o_result_OBUF[1]_inst_i_3 
       (.I0(data5[1]),
        .I1(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[1]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[1]),
        .I5(data_a[1]),
        .O(\o_result_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \o_result_OBUF[1]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[1]_inst_i_6_n_0 ),
        .I2(data_b[0]),
        .I3(\o_result_OBUF[2]_inst_i_6_n_0 ),
        .O(data5[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_result_OBUF[1]_inst_i_5 
       (.I0(\o_result_OBUF[2]_inst_i_7_n_0 ),
        .I1(data_b[0]),
        .I2(\o_result_OBUF[1]_inst_i_6_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(data_a[7]),
        .O(data4[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_result_OBUF[1]_inst_i_6 
       (.I0(data_a[7]),
        .I1(data_a[3]),
        .I2(data_b[1]),
        .I3(data_a[5]),
        .I4(data_b[2]),
        .I5(data_a[1]),
        .O(\o_result_OBUF[1]_inst_i_6_n_0 ));
  OBUF \o_result_OBUF[2]_inst 
       (.I(o_result_OBUF[2]),
        .O(o_result[2]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \o_result_OBUF[2]_inst_i_3 
       (.I0(data5[2]),
        .I1(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[2]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[2]),
        .I5(data_a[2]),
        .O(\o_result_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \o_result_OBUF[2]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[2]_inst_i_6_n_0 ),
        .I2(data_b[0]),
        .I3(\o_result_OBUF[3]_inst_i_6_n_0 ),
        .O(data5[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_result_OBUF[2]_inst_i_5 
       (.I0(\o_result_OBUF[3]_inst_i_7_n_0 ),
        .I1(data_b[0]),
        .I2(\o_result_OBUF[2]_inst_i_7_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(data_a[7]),
        .O(data4[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o_result_OBUF[2]_inst_i_6 
       (.I0(data_a[4]),
        .I1(data_b[1]),
        .I2(data_a[6]),
        .I3(data_b[2]),
        .I4(data_a[2]),
        .O(\o_result_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_result_OBUF[2]_inst_i_7 
       (.I0(data_a[7]),
        .I1(data_a[4]),
        .I2(data_b[1]),
        .I3(data_a[6]),
        .I4(data_b[2]),
        .I5(data_a[2]),
        .O(\o_result_OBUF[2]_inst_i_7_n_0 ));
  OBUF \o_result_OBUF[3]_inst 
       (.I(o_result_OBUF[3]),
        .O(o_result[3]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \o_result_OBUF[3]_inst_i_3 
       (.I0(data5[3]),
        .I1(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[3]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[3]),
        .I5(data_a[3]),
        .O(\o_result_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \o_result_OBUF[3]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[3]_inst_i_6_n_0 ),
        .I2(data_b[0]),
        .I3(\o_result_OBUF[4]_inst_i_6_n_0 ),
        .O(data5[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_result_OBUF[3]_inst_i_5 
       (.I0(\o_result_OBUF[4]_inst_i_9_n_0 ),
        .I1(data_b[0]),
        .I2(\o_result_OBUF[3]_inst_i_7_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(data_a[7]),
        .O(data4[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o_result_OBUF[3]_inst_i_6 
       (.I0(data_a[5]),
        .I1(data_b[1]),
        .I2(data_a[7]),
        .I3(data_b[2]),
        .I4(data_a[3]),
        .O(\o_result_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \o_result_OBUF[3]_inst_i_7 
       (.I0(data_a[5]),
        .I1(data_b[1]),
        .I2(data_a[7]),
        .I3(data_b[2]),
        .I4(data_a[3]),
        .O(\o_result_OBUF[3]_inst_i_7_n_0 ));
  OBUF \o_result_OBUF[4]_inst 
       (.I(o_result_OBUF[4]),
        .O(o_result[4]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \o_result_OBUF[4]_inst_i_3 
       (.I0(data5[4]),
        .I1(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[4]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[4]),
        .I5(data_a[4]),
        .O(\o_result_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \o_result_OBUF[4]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[4]_inst_i_6_n_0 ),
        .I2(data_b[0]),
        .I3(\o_result_OBUF[4]_inst_i_7_n_0 ),
        .O(data5[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_result_OBUF[4]_inst_i_5 
       (.I0(\o_result_OBUF[4]_inst_i_8_n_0 ),
        .I1(data_b[0]),
        .I2(\o_result_OBUF[4]_inst_i_9_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(data_a[7]),
        .O(data4[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_result_OBUF[4]_inst_i_6 
       (.I0(data_a[6]),
        .I1(data_b[1]),
        .I2(data_a[4]),
        .I3(data_b[2]),
        .O(\o_result_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_result_OBUF[4]_inst_i_7 
       (.I0(data_a[7]),
        .I1(data_b[1]),
        .I2(data_a[5]),
        .I3(data_b[2]),
        .O(\o_result_OBUF[4]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \o_result_OBUF[4]_inst_i_8 
       (.I0(data_b[1]),
        .I1(data_a[7]),
        .I2(data_b[2]),
        .I3(data_a[5]),
        .O(\o_result_OBUF[4]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \o_result_OBUF[4]_inst_i_9 
       (.I0(data_a[6]),
        .I1(data_b[1]),
        .I2(data_a[7]),
        .I3(data_b[2]),
        .I4(data_a[4]),
        .O(\o_result_OBUF[4]_inst_i_9_n_0 ));
  OBUF \o_result_OBUF[5]_inst 
       (.I(o_result_OBUF[5]),
        .O(o_result[5]));
  MUXF7 \o_result_OBUF[5]_inst_i_2 
       (.I0(\o_result_OBUF[5]_inst_i_4_n_0 ),
        .I1(\o_result_OBUF[5]_inst_i_5_n_0 ),
        .O(\o_result_OBUF[5]_inst_i_2_n_0 ),
        .S(\o_result_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \o_result_OBUF[5]_inst_i_3 
       (.I0(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I1(data_a[5]),
        .I2(data_b[5]),
        .O(\o_result_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \o_result_OBUF[5]_inst_i_4 
       (.I0(\o_result_OBUF[5]_inst_i_6_n_0 ),
        .I1(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I2(data_a[7]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[5]),
        .I5(data_a[5]),
        .O(\o_result_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \o_result_OBUF[5]_inst_i_5 
       (.I0(data_b[5]),
        .I1(data_a[5]),
        .I2(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(\o_result_OBUF[5]_inst_i_7_n_0 ),
        .O(\o_result_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \o_result_OBUF[5]_inst_i_6 
       (.I0(data_a[6]),
        .I1(data_b[0]),
        .I2(data_b[1]),
        .I3(data_a[7]),
        .I4(data_b[2]),
        .I5(data_a[5]),
        .O(\o_result_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \o_result_OBUF[5]_inst_i_7 
       (.I0(data_a[6]),
        .I1(data_b[0]),
        .I2(data_a[7]),
        .I3(data_b[1]),
        .I4(data_a[5]),
        .I5(data_b[2]),
        .O(\o_result_OBUF[5]_inst_i_7_n_0 ));
  OBUF \o_result_OBUF[6]_inst 
       (.I(o_result_OBUF[6]),
        .O(o_result[6]));
  MUXF7 \o_result_OBUF[6]_inst_i_2 
       (.I0(\o_result_OBUF[6]_inst_i_6_n_0 ),
        .I1(\o_result_OBUF[6]_inst_i_7_n_0 ),
        .O(\o_result_OBUF[6]_inst_i_2_n_0 ),
        .S(\o_result_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \o_result_OBUF[6]_inst_i_3 
       (.I0(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I1(data_a[6]),
        .I2(data_b[6]),
        .O(\o_result_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008818)) 
    \o_result_OBUF[6]_inst_i_4 
       (.I0(\operation_reg_n_0_[5] ),
        .I1(\operation_reg_n_0_[2] ),
        .I2(\0 ),
        .I3(\operation_reg_n_0_[0] ),
        .I4(\operation_reg_n_0_[4] ),
        .I5(\operation_reg_n_0_[3] ),
        .O(\o_result_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009484)) 
    \o_result_OBUF[6]_inst_i_5 
       (.I0(\operation_reg_n_0_[2] ),
        .I1(\operation_reg_n_0_[5] ),
        .I2(\operation_reg_n_0_[0] ),
        .I3(\0 ),
        .I4(\operation_reg_n_0_[4] ),
        .I5(\operation_reg_n_0_[3] ),
        .O(\o_result_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \o_result_OBUF[6]_inst_i_6 
       (.I0(\o_result_OBUF[6]_inst_i_8_n_0 ),
        .I1(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I2(data_a[7]),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[6]),
        .I5(data_a[6]),
        .O(\o_result_OBUF[6]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \o_result_OBUF[6]_inst_i_7 
       (.I0(data_b[6]),
        .I1(data_a[6]),
        .I2(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I3(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I4(\o_result_OBUF[6]_inst_i_9_n_0 ),
        .O(\o_result_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \o_result_OBUF[6]_inst_i_8 
       (.I0(data_b[0]),
        .I1(data_b[1]),
        .I2(data_a[7]),
        .I3(data_b[2]),
        .I4(data_a[6]),
        .O(\o_result_OBUF[6]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \o_result_OBUF[6]_inst_i_9 
       (.I0(data_a[7]),
        .I1(data_b[0]),
        .I2(data_b[2]),
        .I3(data_a[6]),
        .I4(data_b[1]),
        .O(\o_result_OBUF[6]_inst_i_9_n_0 ));
  OBUF \o_result_OBUF[7]_inst 
       (.I(o_result_OBUF[7]),
        .O(o_result[7]));
  LUT5 #(
    .INIT(32'h10000010)) 
    \o_result_OBUF[7]_inst_i_2 
       (.I0(\operation_reg_n_0_[4] ),
        .I1(\operation_reg_n_0_[3] ),
        .I2(\0 ),
        .I3(\operation_reg_n_0_[2] ),
        .I4(\operation_reg_n_0_[5] ),
        .O(\o_result_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F800F8F008FF080)) 
    \o_result_OBUF[7]_inst_i_4 
       (.I0(\o_result_OBUF[7]_inst_i_5_n_0 ),
        .I1(\o_result_OBUF[7]_inst_i_6_n_0 ),
        .I2(\o_result_OBUF[6]_inst_i_4_n_0 ),
        .I3(\o_result_OBUF[6]_inst_i_5_n_0 ),
        .I4(data_b[7]),
        .I5(data_a[7]),
        .O(\o_result_OBUF[7]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \o_result_OBUF[7]_inst_i_5 
       (.I0(data_b[7]),
        .I1(data_b[4]),
        .I2(data_b[3]),
        .I3(data_b[6]),
        .I4(data_b[5]),
        .O(\o_result_OBUF[7]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \o_result_OBUF[7]_inst_i_6 
       (.I0(data_b[1]),
        .I1(data_a[7]),
        .I2(data_b[2]),
        .I3(data_b[0]),
        .O(\o_result_OBUF[7]_inst_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[0]),
        .Q(\operation_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[1]),
        .Q(\0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[2]),
        .Q(\operation_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[3]),
        .Q(\operation_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[4]),
        .Q(\operation_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operation_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_btn_op_IBUF),
        .D(i_switches_IBUF[5]),
        .Q(\operation_reg_n_0_[5] ),
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
