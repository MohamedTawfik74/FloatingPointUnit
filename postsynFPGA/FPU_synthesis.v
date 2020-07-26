////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FPU_synthesis.v
// /___/   /\     Timestamp: Fri Jul 24 17:11:13 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim FPU.ngc FPU_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: FPU.ngc
// Output file	: C:\Users\Tefa\Desktop\FPU\FPUCode\check\netgen\synthesis\FPU_synthesis.v
// # of Modules	: 1
// Design Name	: FPU
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps


module FPU (
  CLK, Operand1, Operand2, Operation, Result
);
  input CLK;
  input [31 : 0] Operand1;
  input [31 : 0] Operand2;
  input [1 : 0] Operation;
  output [31 : 0] Result;
  wire Operand1_31_IBUF_0;
  wire Operand1_30_IBUF_1;
  wire Operand1_29_IBUF_2;
  wire Operand1_28_IBUF_3;
  wire Operand1_27_IBUF_4;
  wire Operand1_26_IBUF_5;
  wire Operand1_25_IBUF_6;
  wire Operand1_24_IBUF_7;
  wire Operand1_23_IBUF_8;
  wire Operand1_22_IBUF_9;
  wire Operand1_21_IBUF_10;
  wire Operand1_20_IBUF_11;
  wire Operand1_19_IBUF_12;
  wire Operand1_18_IBUF_13;
  wire Operand1_17_IBUF_14;
  wire Operand1_16_IBUF_15;
  wire Operand1_15_IBUF_16;
  wire Operand1_14_IBUF_17;
  wire Operand1_13_IBUF_18;
  wire Operand1_12_IBUF_19;
  wire Operand1_11_IBUF_20;
  wire Operand1_10_IBUF_21;
  wire Operand1_9_IBUF_22;
  wire Operand1_8_IBUF_23;
  wire Operand1_7_IBUF_24;
  wire Operand1_6_IBUF_25;
  wire Operand1_5_IBUF_26;
  wire Operand1_4_IBUF_27;
  wire Operand1_3_IBUF_28;
  wire Operand1_2_IBUF_29;
  wire Operand1_1_IBUF_30;
  wire Operand1_0_IBUF_31;
  wire Operand2_31_IBUF_32;
  wire Operand2_30_IBUF_33;
  wire Operand2_29_IBUF_34;
  wire Operand2_28_IBUF_35;
  wire Operand2_27_IBUF_36;
  wire Operand2_26_IBUF_37;
  wire Operand2_25_IBUF_38;
  wire Operand2_24_IBUF_39;
  wire Operand2_23_IBUF_40;
  wire Operand2_22_IBUF_41;
  wire Operand2_21_IBUF_42;
  wire Operand2_20_IBUF_43;
  wire Operand2_19_IBUF_44;
  wire Operand2_18_IBUF_45;
  wire Operand2_17_IBUF_46;
  wire Operand2_16_IBUF_47;
  wire Operand2_15_IBUF_48;
  wire Operand2_14_IBUF_49;
  wire Operand2_13_IBUF_50;
  wire Operand2_12_IBUF_51;
  wire Operand2_11_IBUF_52;
  wire Operand2_10_IBUF_53;
  wire Operand2_9_IBUF_54;
  wire Operand2_8_IBUF_55;
  wire Operand2_7_IBUF_56;
  wire Operand2_6_IBUF_57;
  wire Operand2_5_IBUF_58;
  wire Operand2_4_IBUF_59;
  wire Operand2_3_IBUF_60;
  wire Operand2_2_IBUF_61;
  wire Operand2_1_IBUF_62;
  wire Operand2_0_IBUF_63;
  wire Operation_1_IBUF_64;
  wire Operation_0_IBUF_65;
  wire CLK_BUFGP_66;
  wire \ExclusiveSignReg/Q_0_68 ;
  wire \OperandSign1Reg/Q_0_230 ;
  wire \OperandSign2Reg/Q_0_231 ;
  wire \SignOfDifference1Reg/Q_0_244 ;
  wire \ZeroDifferenceReg/Q_0_245 ;
  wire \EffectivOperationReg1/Q_0_246 ;
  wire \ExclusiveSignReg2/Q_0_255 ;
  wire \ADDSignReg/Q_0_256 ;
  wire \EffectivOperationReg2/Q_0_400 ;
  wire \AlgorthimSelReg2/Q_0_409 ;
  wire \EffCarryReg1/Q_0_493 ;
  wire \AlgorthimSelReg3/Q_0_499 ;
  wire \ResultSignReg1/Q_0_500 ;
  wire \RoundControlReg/Q_0_525 ;
  wire \ResultSignReg3/Q_0_527 ;
  wire EffOperation;
  wire SignOfDifference;
  wire ZeroDifference;
  wire ADDSign;
  wire ResultSign;
  wire EffCarry;
  wire Round;
  wire ExclusiveSign;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>1 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>2 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>3 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>4 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>5 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>6 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>7 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>8_1140 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>8 ;
  wire \MULSecondStage/Adder5/Madd_n0006_1142 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>9_1143 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>9 ;
  wire \MULSecondStage/Adder5/Madd_n00061_1145 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>10_1146 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>10 ;
  wire \MULSecondStage/Adder5/Madd_n00062_1148 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>11_1149 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>11 ;
  wire \MULSecondStage/Adder5/Madd_n00063_1151 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>12_1152 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>12 ;
  wire \MULSecondStage/Adder5/Madd_n00064_1154 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>13_1155 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>13 ;
  wire \MULSecondStage/Adder5/Madd_n00065_1157 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>14_1158 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>14 ;
  wire \MULSecondStage/Adder5/Madd_n00066_1160 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>15_1161 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>15 ;
  wire \MULSecondStage/Adder5/Madd_n00067_1163 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>16_1164 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>16 ;
  wire \MULSecondStage/Adder5/Madd_n00068_1166 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>17_1167 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>17 ;
  wire \MULSecondStage/Adder5/Madd_n00069_1169 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>18_1170 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>18 ;
  wire \MULSecondStage/Adder5/Madd_n000610_1172 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>19_1173 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>19 ;
  wire \MULSecondStage/Adder5/Madd_n000611_1175 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>20_1176 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>20 ;
  wire \MULSecondStage/Adder5/Madd_n000612_1178 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>21_1179 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>21 ;
  wire \MULSecondStage/Adder5/Madd_n000613_1181 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>22_1182 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>22 ;
  wire \MULSecondStage/Adder5/Madd_n000614_1184 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>23_1185 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>23 ;
  wire \MULSecondStage/Adder5/Madd_n000615_1187 ;
  wire \MULSecondStage/Adder5/Madd_n0006_lut<0>24_1188 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>24 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>25 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>26 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>27 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>28 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>29 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>30 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>31 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>1 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>2 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>3 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>4 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>5 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>6 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>7 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>8_1220 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>8 ;
  wire \MULSecondStage/Adder6/Madd_n0006_1222 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>9_1223 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>9 ;
  wire \MULSecondStage/Adder6/Madd_n00061_1225 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>10_1226 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>10 ;
  wire \MULSecondStage/Adder6/Madd_n00062_1228 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>11_1229 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>11 ;
  wire \MULSecondStage/Adder6/Madd_n00063_1231 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>12_1232 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>12 ;
  wire \MULSecondStage/Adder6/Madd_n00064_1234 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>13_1235 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>13 ;
  wire \MULSecondStage/Adder6/Madd_n00065_1237 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>14_1238 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>14 ;
  wire \MULSecondStage/Adder6/Madd_n00066_1240 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>15_1241 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>15 ;
  wire \MULSecondStage/Adder6/Madd_n00067_1243 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>16_1244 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>16 ;
  wire \MULSecondStage/Adder6/Madd_n00068_1246 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>17_1247 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>17 ;
  wire \MULSecondStage/Adder6/Madd_n00069_1249 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>18_1250 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>18 ;
  wire \MULSecondStage/Adder6/Madd_n000610_1252 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>19_1253 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>19 ;
  wire \MULSecondStage/Adder6/Madd_n000611_1255 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>20_1256 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>20 ;
  wire \MULSecondStage/Adder6/Madd_n000612_1258 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>21_1259 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>21 ;
  wire \MULSecondStage/Adder6/Madd_n000613_1261 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>22_1262 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>22 ;
  wire \MULSecondStage/Adder6/Madd_n000614_1264 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>23_1265 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>23 ;
  wire \MULSecondStage/Adder6/Madd_n000615_1267 ;
  wire \MULSecondStage/Adder6/Madd_n0006_lut<0>24_1268 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>24 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>25 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>26 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>27 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>28 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>29 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>30 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>1 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>2 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>3 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>4 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>5 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>6 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>7 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>8_1299 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>8 ;
  wire \MULSecondStage/Adder4/Madd_n0006_1301 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>9_1302 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>9 ;
  wire \MULSecondStage/Adder4/Madd_n00061_1304 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>10_1305 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>10 ;
  wire \MULSecondStage/Adder4/Madd_n00062_1307 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>11_1308 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>11 ;
  wire \MULSecondStage/Adder4/Madd_n00063_1310 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>12_1311 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>12 ;
  wire \MULSecondStage/Adder4/Madd_n00064_1313 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>13_1314 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>13 ;
  wire \MULSecondStage/Adder4/Madd_n00065_1316 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>14_1317 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>14 ;
  wire \MULSecondStage/Adder4/Madd_n00066_1319 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>15_1320 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>15 ;
  wire \MULSecondStage/Adder4/Madd_n00067_1322 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>16_1323 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>16 ;
  wire \MULSecondStage/Adder4/Madd_n00068_1325 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>17_1326 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>17 ;
  wire \MULSecondStage/Adder4/Madd_n00069_1328 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>18_1329 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>18 ;
  wire \MULSecondStage/Adder4/Madd_n000610_1331 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>19_1332 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>19 ;
  wire \MULSecondStage/Adder4/Madd_n000611_1334 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>20_1335 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>20 ;
  wire \MULSecondStage/Adder4/Madd_n000612_1337 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>21_1338 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>21 ;
  wire \MULSecondStage/Adder4/Madd_n000613_1340 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>22_1341 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>22 ;
  wire \MULSecondStage/Adder4/Madd_n000614_1343 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>23_1344 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>23 ;
  wire \MULSecondStage/Adder4/Madd_n000615_1346 ;
  wire \MULSecondStage/Adder4/Madd_n0006_lut<0>24_1347 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>24 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>25 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>26 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>27 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>28 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>29 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>30 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>31 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>1 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>2 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>3 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>4 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>5 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>6 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>7 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>8_1379 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>8 ;
  wire \MULThirdStage/Adder2/Madd_n0006_1381 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>9_1382 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>9 ;
  wire \MULThirdStage/Adder2/Madd_n00061_1384 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>10_1385 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>10 ;
  wire \MULThirdStage/Adder2/Madd_n00062_1387 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>11_1388 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>11 ;
  wire \MULThirdStage/Adder2/Madd_n00063_1390 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>12_1391 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>12 ;
  wire \MULThirdStage/Adder2/Madd_n00064_1393 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>13_1394 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>13 ;
  wire \MULThirdStage/Adder2/Madd_n00065_1396 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>14_1397 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>14 ;
  wire \MULThirdStage/Adder2/Madd_n00066_1399 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>15_1400 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>15 ;
  wire \MULThirdStage/Adder2/Madd_n00067_1402 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>16_1403 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>16 ;
  wire \MULThirdStage/Adder2/Madd_n00068_1405 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>17_1406 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>17 ;
  wire \MULThirdStage/Adder2/Madd_n00069_1408 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>18_1409 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>18 ;
  wire \MULThirdStage/Adder2/Madd_n000610_1411 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>19_1412 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>19 ;
  wire \MULThirdStage/Adder2/Madd_n000611_1414 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>20_1415 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>20 ;
  wire \MULThirdStage/Adder2/Madd_n000612_1417 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>21_1418 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>21 ;
  wire \MULThirdStage/Adder2/Madd_n000613_1420 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>22_1421 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>22 ;
  wire \MULThirdStage/Adder2/Madd_n000614_1423 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>23_1424 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>23 ;
  wire \MULThirdStage/Adder2/Madd_n000615_1426 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>24_1427 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>24 ;
  wire \MULThirdStage/Adder2/Madd_n000616_1429 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>25_1430 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>25 ;
  wire \MULThirdStage/Adder2/Madd_n000617_1432 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>26_1433 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>26 ;
  wire \MULThirdStage/Adder2/Madd_n000618_1435 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>27_1436 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>27 ;
  wire \MULThirdStage/Adder2/Madd_n000619_1438 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>28_1439 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>28 ;
  wire \MULThirdStage/Adder2/Madd_n000620_1441 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>29_1442 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>29 ;
  wire \MULThirdStage/Adder2/Madd_n000621_1444 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>30_1445 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>30 ;
  wire \MULThirdStage/Adder2/Madd_n000622_1447 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>31_1448 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>31 ;
  wire \MULThirdStage/Adder2/Madd_n000623_1450 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>32_1451 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>32 ;
  wire \MULThirdStage/Adder2/Madd_n000624_1453 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>33_1454 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>33 ;
  wire \MULThirdStage/Adder2/Madd_n000625_1456 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>34_1457 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>34 ;
  wire \MULThirdStage/Adder2/Madd_n000626_1459 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>35_1460 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>35 ;
  wire \MULThirdStage/Adder2/Madd_n000627_1462 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>36_1463 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>36 ;
  wire \MULThirdStage/Adder2/Madd_n000628_1465 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>37_1466 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>37 ;
  wire \MULThirdStage/Adder2/Madd_n000629_1468 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>38_1469 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>38 ;
  wire \MULThirdStage/Adder2/Madd_n000630_1471 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>39_1472 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>39 ;
  wire \MULThirdStage/Adder2/Madd_n000631_1474 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>40_1475 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>40 ;
  wire \MULThirdStage/Adder2/Madd_n000632_1477 ;
  wire \MULThirdStage/Adder2/Madd_n0006_lut<0>41_1478 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>41 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>42 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>43 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>44 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>45 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>46 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi_1491 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<0>_1492 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<0>_1493 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi1_1494 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<1>_1495 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<1>_1496 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi2_1497 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<2>_1498 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<2>_1499 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi3_1500 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<3>_1501 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<3>_1502 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi4_1503 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<4>_1504 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<4>_1505 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi5_1506 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<5>_1507 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<5>_1508 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi6_1509 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<6>_1510 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<6>_1511 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi7_1512 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<7>_1513 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<7>_1514 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi8_1515 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<8>_1516 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<8>_1517 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi9_1518 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<9>_1519 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<9>_1520 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi10_1521 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<10>_1522 ;
  wire \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<10>_1523 ;
  wire \MDExponent<3>_bdd0 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>_1615 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<6>_1616 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<6>_1617 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<5>_1618 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<5>_1619 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<4>_1620 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<4>_1621 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<3>_1622 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<3>_1623 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<2>_1624 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<2>_1625 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<1>_1626 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<1>_1627 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<0>_1628 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<0>_1629 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<6>_1630 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<6>_1631 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<5>_1632 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<5>_1633 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<4>_1634 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<4>_1635 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<3>_1636 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<3>_1637 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<2>_1638 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<2>_1639 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<1>_1640 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<1>_1641 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<0>_1642 ;
  wire \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<0>_1643 ;
  wire \Stage1/ExponDifference/Sign1 ;
  wire \Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<5> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<6> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<7> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<0> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<1> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<2> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<3> ;
  wire \Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<4> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<5> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<6> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<7> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<0> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<1> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<2> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<3> ;
  wire \Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<4> ;
  wire \Stage2/CalcSticky/StickyBit<0>13_1667 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<26>_1668 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<25>_1669 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<25>_1670 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1671 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1672 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1673 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1674 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1675 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1676 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1677 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1678 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1679 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1680 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1681 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1682 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1683 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1684 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1685 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1686 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1687 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1688 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1689 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1690 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1691 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1692 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1693 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1694 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1695 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1696 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1697 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1698 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1699 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1700 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1701 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1702 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1703 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1704 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1705 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1706 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1707 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1708 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1709 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1710 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1711 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1712 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1713 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1714 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1715 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1716 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<1>_1717 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<1>_1718 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<0>_1719 ;
  wire \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<0>_1720 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1722 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1723 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1724 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1725 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1726 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1727 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1728 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1729 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1730 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1731 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1732 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1733 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1734 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1735 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1736 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1737 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1738 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1739 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1740 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1741 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1742 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1743 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1744 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1745 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1746 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1747 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1748 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1749 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1750 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1751 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1752 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1753 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1754 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1755 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1756 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1757 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1758 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1759 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1760 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1761 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1762 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1763 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1764 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1765 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1766 ;
  wire \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1767 ;
  wire \Stage2/Difference<0>_mmx_out ;
  wire \Stage2/Difference<1>_mmx_out ;
  wire \Stage2/Difference<0>_mmx_out1 ;
  wire \Stage2/Difference<1>_mmx_out1 ;
  wire \Stage2/Difference<1>_mmx_out2 ;
  wire \Stage2/Difference<1>_mmx_out3 ;
  wire \Stage2/Difference<1>_mmx_out4 ;
  wire \Stage2/Difference<1>_mmx_out5 ;
  wire \Stage2/Difference<2>_mmx_out2 ;
  wire \Stage2/Difference<0>_mmx_out12 ;
  wire \Stage2/Difference<1>_mmx_out7 ;
  wire \Stage2/Difference<1>_mmx_out8 ;
  wire \Stage2/Difference<1>_mmx_out9 ;
  wire \Stage2/Difference<2>_mmx_out4 ;
  wire \Stage2/Difference<1>_mmx_out10 ;
  wire \Stage2/Difference<1>_mmx_out11 ;
  wire \Stage2/Difference<1>_mmx_out12 ;
  wire \Stage2/Difference<1>_mmx_out13 ;
  wire \Stage2/Difference<1>_mmx_out14 ;
  wire \Stage2/Difference<2>_mmx_out6 ;
  wire \Stage2/Difference<1>_mmx_out15 ;
  wire \Stage2/Difference<1>_mmx_out16 ;
  wire \Stage2/Difference<2>_mmx_out8 ;
  wire \Stage2/Difference<2>_mmx_out10 ;
  wire \Stage2/Difference<1>_mmx_out17 ;
  wire \Stage2/NDifference<0>_mmx_out8 ;
  wire \Stage2/NDifference<1>_mmx_out9 ;
  wire \Stage2/NDifference<0>_mmx_out9 ;
  wire \Stage2/NDifference<0>_mmx_out10 ;
  wire \Stage2/NDifference<0>_mmx_out11 ;
  wire \Stage2/NDifference<1>_mmx_out13 ;
  wire \Stage2/NDifference<0>_mmx_out14 ;
  wire \Stage2/NDifference<0>_mmx_out15 ;
  wire \Stage2/NDifference<0>_mmx_out16 ;
  wire \Stage2/NDifference<0>_mmx_out17 ;
  wire \Stage2/NDifference<0>_mmx_out18 ;
  wire \Stage2/NDifference<0>_mmx_out19 ;
  wire \Stage2/Difference<1>_mmx_out18 ;
  wire \Stage2/SignOfDifference_mmx_out9 ;
  wire \Stage2/Difference<0>_mmx_out17 ;
  wire \Stage2/SignOfDifference_mmx_out10 ;
  wire \Stage2/Difference<1>_mmx_out19 ;
  wire \Stage2/SignOfDifference_mmx_out14 ;
  wire \Stage2/SignOfDifference_mmx_out15 ;
  wire \Stage2/SignOfDifference_mmx_out16 ;
  wire \Stage2/Difference<1>_mmx_out20 ;
  wire \Stage2/SignOfDifference_mmx_out17 ;
  wire \Stage2/SignOfDifference_mmx_out20 ;
  wire \Stage2/Difference<2>_mmx_out17 ;
  wire \Stage2/SignOfDifference_mmx_out22 ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<26> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<25> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<24> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<23> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<22> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<21> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<20> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<19> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<18> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<17> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<16> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<15> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<14> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<13> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<12> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<11> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<10> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<9> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<8> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<7> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<6> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<5> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<4> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<3> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<2> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<1> ;
  wire \Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<0> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<26> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<25> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<24> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<23> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<22> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<21> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<20> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<19> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<18> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<17> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<16> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<15> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<14> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<13> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<12> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<11> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<10> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<9> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<8> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<7> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<6> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<5> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<4> ;
  wire \Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<3> ;
  wire \Stage2/StickyBit ;
  wire \Stage3/ZerosCounter/Mmux__n0087_B12 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts521 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts312 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts415 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts52 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts411 ;
  wire \Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ;
  wire \Stage3/ZerosCounter/Mmux__n0087_rs_lut[2] ;
  wire \Stage3/ZerosCounter/Mmux__n0087_rs_lut[1] ;
  wire \Stage4/ExponentMux/Mmux_Output83_1944 ;
  wire \Stage4/NormShifts<1>3 ;
  wire \Stage4/ExponentMux/Mmux_Output31 ;
  wire \Stage4/tobeRoundMux/Mmux_Output23111 ;
  wire \Stage4/NormShifts<1>2 ;
  wire \Stage4/tobeRoundMux/Mmux_Output191 ;
  wire \Stage4/tobeRoundMux/Mmux_Output143_1950 ;
  wire \Stage4/tobeRoundMux/Mmux_Output233_1951 ;
  wire \Stage4/tobeRoundMux/Mmux_Output142_1952 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2811 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2131 ;
  wire \Stage4/tobeRoundMux/Mmux_Output184_1955 ;
  wire \Stage4/tobeRoundMux/Mmux_Output1831 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2622_1957 ;
  wire \Stage4/tobeRoundMux/Mmux_Output124 ;
  wire \Stage4/tobeRoundMux/Mmux_Output82_1959 ;
  wire \Stage4/tobeRoundMux/Mmux_Output1211_1960 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2612 ;
  wire \Stage4/tobeRoundMux/Mmux_Output123_1962 ;
  wire \Stage4/tobeRoundMux/Mmux_Output301 ;
  wire \Stage4/tobeRoundMux/Mmux_Output362_1964 ;
  wire \Stage4/tobeRoundMux/Mmux_Output22 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2611 ;
  wire \Stage4/tobeRoundMux/Mmux_Output212_1967 ;
  wire \Stage4/tobeRoundMux/Mmux_Output122_1968 ;
  wire \Stage4/tobeRoundMux/Mmux_Output182_1969 ;
  wire \Stage4/tobeRoundMux/Mmux_Output262_1970 ;
  wire \Stage4/tobeRoundMux/Mmux_Output361 ;
  wire \Stage4/tobeRoundMux/Mmux_Output121_1972 ;
  wire \Stage4/tobeRoundMux/Mmux_Output81_1973 ;
  wire \Stage4/tobeRoundMux/Mmux_Output231 ;
  wire \Stage4/tobeRoundMux/Mmux_Output181_1975 ;
  wire \Stage4/tobeRoundMux/Mmux_Output261_1976 ;
  wire \Stage4/tobeRoundMux/Mmux_Output211_1977 ;
  wire \Stage4/NormShifts<1>_mmx_out3 ;
  wire \Stage4/NormShifts<1>_mmx_out5 ;
  wire \Stage4/NormShifts<1>_mmx_out12 ;
  wire \Stage4/NormShifts<1>_mmx_out14 ;
  wire \Stage4/NormShifts<1>_mmx_out16 ;
  wire \Stage4/NormShifts<1>_mmx_out19 ;
  wire \Stage4/NormShifts<1>_mmx_out20 ;
  wire \MULFirstStage/Byte3Byte3/C11 ;
  wire \MULFirstStage/Byte3Byte3/S12 ;
  wire \MULFirstStage/Byte3Byte3/S13 ;
  wire \MULFirstStage/Byte3Byte3/S26 ;
  wire \MULFirstStage/Byte3Byte3/S35 ;
  wire \MULFirstStage/Byte3Byte3/S27 ;
  wire \MULFirstStage/Byte3Byte3/C23 ;
  wire \MULFirstStage/Byte3Byte3/S24 ;
  wire \MULFirstStage/Byte3Byte3/C22 ;
  wire \MULFirstStage/Byte3Byte3/S34 ;
  wire \MULFirstStage/Byte3Byte3/S25 ;
  wire \MULFirstStage/Byte3Byte3/S22 ;
  wire \MULFirstStage/Byte3Byte3/S23 ;
  wire \MULFirstStage/Byte3Byte3/C21 ;
  wire \MULFirstStage/Byte3Byte3/S33 ;
  wire \MULFirstStage/Byte3Byte3/C32 ;
  wire \MULFirstStage/Byte3Byte3/S21 ;
  wire \MULFirstStage/Byte3Byte3/S32 ;
  wire \MULFirstStage/Byte3Byte3/C31 ;
  wire \MULFirstStage/Byte3Byte3/C25 ;
  wire \MULFirstStage/Byte3Byte3/C24 ;
  wire \MULFirstStage/Byte3Byte3/S11 ;
  wire \MULFirstStage/Byte3Byte3/S36 ;
  wire \MULFirstStage/Byte3Byte3/S29 ;
  wire \MULFirstStage/Byte3Byte3/S28 ;
  wire \MULFirstStage/Byte3Byte3/C27 ;
  wire \MULFirstStage/Byte3Byte3/C36 ;
  wire \MULFirstStage/Byte3Byte3/S37 ;
  wire \MULFirstStage/Byte3Byte3/S211 ;
  wire \MULFirstStage/Byte3Byte3/S210 ;
  wire \MULFirstStage/Byte3Byte3/C29 ;
  wire \MULFirstStage/Byte3Byte3/C13 ;
  wire \MULFirstStage/Byte3Byte3/S14 ;
  wire \MULFirstStage/Byte3Byte3/C12 ;
  wire \MULFirstStage/Byte3Byte3/C37 ;
  wire \MULFirstStage/Byte3Byte3/S38 ;
  wire \MULFirstStage/Byte3Byte3/S213 ;
  wire \MULFirstStage/Byte3Byte3/S212 ;
  wire \MULFirstStage/Byte3Byte3/C211 ;
  wire \MULFirstStage/Byte3Byte3/C15 ;
  wire \MULFirstStage/Byte3Byte3/S16 ;
  wire \MULFirstStage/Byte3Byte3/C14 ;
  wire \MULFirstStage/Byte3Byte3/C38 ;
  wire \MULFirstStage/Byte3Byte3/S39 ;
  wire \MULFirstStage/Byte3Byte3/S214 ;
  wire \MULFirstStage/Byte3Byte3/C213 ;
  wire \MULFirstStage/Byte3Byte3/C16 ;
  wire \MULFirstStage/Byte3Byte3/C39 ;
  wire \MULFirstStage/Byte3Byte3/S310 ;
  wire \MULFirstStage/Byte3Byte3/C310 ;
  wire \MULFirstStage/Byte3Byte3/S15 ;
  wire \MULFirstStage/Byte3Byte3/C41_mand1 ;
  wire \MULFirstStage/Byte3Byte3/X01_mand1_2089 ;
  wire \MULFirstStage/Byte3Byte3/C47 ;
  wire \MULFirstStage/Byte3Byte3/C46 ;
  wire \MULFirstStage/Byte3Byte3/C45 ;
  wire \MULFirstStage/Byte3Byte3/C48 ;
  wire \MULFirstStage/Byte3Byte3/C49 ;
  wire \MULFirstStage/Byte3Byte3/C44 ;
  wire \MULFirstStage/Byte3Byte3/C43 ;
  wire \MULFirstStage/Byte3Byte3/C42 ;
  wire \MULFirstStage/Byte3Byte3/S41 ;
  wire \MULFirstStage/Byte3Byte3/C410 ;
  wire \MULFirstStage/Byte3Byte3/C411 ;
  wire \MULFirstStage/Byte3Byte3/C412 ;
  wire \MULFirstStage/Byte3Byte3/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte3Byte3/X77 ;
  wire \MULFirstStage/Byte3Byte2/C11 ;
  wire \MULFirstStage/Byte3Byte2/S12 ;
  wire \MULFirstStage/Byte3Byte2/S13 ;
  wire \MULFirstStage/Byte3Byte2/S26 ;
  wire \MULFirstStage/Byte3Byte2/S35 ;
  wire \MULFirstStage/Byte3Byte2/S27 ;
  wire \MULFirstStage/Byte3Byte2/C23 ;
  wire \MULFirstStage/Byte3Byte2/S24 ;
  wire \MULFirstStage/Byte3Byte2/C22 ;
  wire \MULFirstStage/Byte3Byte2/S34 ;
  wire \MULFirstStage/Byte3Byte2/S25 ;
  wire \MULFirstStage/Byte3Byte2/S22 ;
  wire \MULFirstStage/Byte3Byte2/S23 ;
  wire \MULFirstStage/Byte3Byte2/C21 ;
  wire \MULFirstStage/Byte3Byte2/S33 ;
  wire \MULFirstStage/Byte3Byte2/C32 ;
  wire \MULFirstStage/Byte3Byte2/S21 ;
  wire \MULFirstStage/Byte3Byte2/S32 ;
  wire \MULFirstStage/Byte3Byte2/C31 ;
  wire \MULFirstStage/Byte3Byte2/C25 ;
  wire \MULFirstStage/Byte3Byte2/C24 ;
  wire \MULFirstStage/Byte3Byte2/S11 ;
  wire \MULFirstStage/Byte3Byte2/S36 ;
  wire \MULFirstStage/Byte3Byte2/S29 ;
  wire \MULFirstStage/Byte3Byte2/S28 ;
  wire \MULFirstStage/Byte3Byte2/C27 ;
  wire \MULFirstStage/Byte3Byte2/C36 ;
  wire \MULFirstStage/Byte3Byte2/S37 ;
  wire \MULFirstStage/Byte3Byte2/S211 ;
  wire \MULFirstStage/Byte3Byte2/S210 ;
  wire \MULFirstStage/Byte3Byte2/C29 ;
  wire \MULFirstStage/Byte3Byte2/C13 ;
  wire \MULFirstStage/Byte3Byte2/S14 ;
  wire \MULFirstStage/Byte3Byte2/C12 ;
  wire \MULFirstStage/Byte3Byte2/C37 ;
  wire \MULFirstStage/Byte3Byte2/S38 ;
  wire \MULFirstStage/Byte3Byte2/S213 ;
  wire \MULFirstStage/Byte3Byte2/S212 ;
  wire \MULFirstStage/Byte3Byte2/C211 ;
  wire \MULFirstStage/Byte3Byte2/C15 ;
  wire \MULFirstStage/Byte3Byte2/S16 ;
  wire \MULFirstStage/Byte3Byte2/C14 ;
  wire \MULFirstStage/Byte3Byte2/C38 ;
  wire \MULFirstStage/Byte3Byte2/S39 ;
  wire \MULFirstStage/Byte3Byte2/S214 ;
  wire \MULFirstStage/Byte3Byte2/C213 ;
  wire \MULFirstStage/Byte3Byte2/C16 ;
  wire \MULFirstStage/Byte3Byte2/C39 ;
  wire \MULFirstStage/Byte3Byte2/S310 ;
  wire \MULFirstStage/Byte3Byte2/C310 ;
  wire \MULFirstStage/Byte3Byte2/S15 ;
  wire \MULFirstStage/Byte3Byte2/C41_mand1 ;
  wire \MULFirstStage/Byte3Byte2/X01_mand1_2183 ;
  wire \MULFirstStage/Byte3Byte2/C47 ;
  wire \MULFirstStage/Byte3Byte2/C46 ;
  wire \MULFirstStage/Byte3Byte2/C45 ;
  wire \MULFirstStage/Byte3Byte2/C48 ;
  wire \MULFirstStage/Byte3Byte2/C49 ;
  wire \MULFirstStage/Byte3Byte2/C44 ;
  wire \MULFirstStage/Byte3Byte2/C43 ;
  wire \MULFirstStage/Byte3Byte2/C42 ;
  wire \MULFirstStage/Byte3Byte2/S41 ;
  wire \MULFirstStage/Byte3Byte2/C410 ;
  wire \MULFirstStage/Byte3Byte2/C411 ;
  wire \MULFirstStage/Byte3Byte2/C412 ;
  wire \MULFirstStage/Byte3Byte2/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte3Byte1/C11 ;
  wire \MULFirstStage/Byte3Byte1/S12 ;
  wire \MULFirstStage/Byte3Byte1/S13 ;
  wire \MULFirstStage/Byte3Byte1/S26 ;
  wire \MULFirstStage/Byte3Byte1/S35 ;
  wire \MULFirstStage/Byte3Byte1/S27 ;
  wire \MULFirstStage/Byte3Byte1/C23 ;
  wire \MULFirstStage/Byte3Byte1/S24 ;
  wire \MULFirstStage/Byte3Byte1/C22 ;
  wire \MULFirstStage/Byte3Byte1/S34 ;
  wire \MULFirstStage/Byte3Byte1/S25 ;
  wire \MULFirstStage/Byte3Byte1/S22 ;
  wire \MULFirstStage/Byte3Byte1/S23 ;
  wire \MULFirstStage/Byte3Byte1/C21 ;
  wire \MULFirstStage/Byte3Byte1/S33 ;
  wire \MULFirstStage/Byte3Byte1/C32 ;
  wire \MULFirstStage/Byte3Byte1/S21 ;
  wire \MULFirstStage/Byte3Byte1/S32 ;
  wire \MULFirstStage/Byte3Byte1/C31 ;
  wire \MULFirstStage/Byte3Byte1/C25 ;
  wire \MULFirstStage/Byte3Byte1/C24 ;
  wire \MULFirstStage/Byte3Byte1/S11 ;
  wire \MULFirstStage/Byte3Byte1/S36 ;
  wire \MULFirstStage/Byte3Byte1/S29 ;
  wire \MULFirstStage/Byte3Byte1/S28 ;
  wire \MULFirstStage/Byte3Byte1/C27 ;
  wire \MULFirstStage/Byte3Byte1/C36 ;
  wire \MULFirstStage/Byte3Byte1/S37 ;
  wire \MULFirstStage/Byte3Byte1/S211 ;
  wire \MULFirstStage/Byte3Byte1/S210 ;
  wire \MULFirstStage/Byte3Byte1/C29 ;
  wire \MULFirstStage/Byte3Byte1/C13 ;
  wire \MULFirstStage/Byte3Byte1/S14 ;
  wire \MULFirstStage/Byte3Byte1/C12 ;
  wire \MULFirstStage/Byte3Byte1/C37 ;
  wire \MULFirstStage/Byte3Byte1/S38 ;
  wire \MULFirstStage/Byte3Byte1/S213 ;
  wire \MULFirstStage/Byte3Byte1/S212 ;
  wire \MULFirstStage/Byte3Byte1/C211 ;
  wire \MULFirstStage/Byte3Byte1/C15 ;
  wire \MULFirstStage/Byte3Byte1/S16 ;
  wire \MULFirstStage/Byte3Byte1/C14 ;
  wire \MULFirstStage/Byte3Byte1/C38 ;
  wire \MULFirstStage/Byte3Byte1/S39 ;
  wire \MULFirstStage/Byte3Byte1/S214 ;
  wire \MULFirstStage/Byte3Byte1/C213 ;
  wire \MULFirstStage/Byte3Byte1/C16 ;
  wire \MULFirstStage/Byte3Byte1/C39 ;
  wire \MULFirstStage/Byte3Byte1/S310 ;
  wire \MULFirstStage/Byte3Byte1/C310 ;
  wire \MULFirstStage/Byte3Byte1/S15 ;
  wire \MULFirstStage/Byte3Byte1/C41_mand1 ;
  wire \MULFirstStage/Byte3Byte1/X01_mand1_2277 ;
  wire \MULFirstStage/Byte3Byte1/C47 ;
  wire \MULFirstStage/Byte3Byte1/C46 ;
  wire \MULFirstStage/Byte3Byte1/C45 ;
  wire \MULFirstStage/Byte3Byte1/C48 ;
  wire \MULFirstStage/Byte3Byte1/C49 ;
  wire \MULFirstStage/Byte3Byte1/C44 ;
  wire \MULFirstStage/Byte3Byte1/C43 ;
  wire \MULFirstStage/Byte3Byte1/C42 ;
  wire \MULFirstStage/Byte3Byte1/S41 ;
  wire \MULFirstStage/Byte3Byte1/C410 ;
  wire \MULFirstStage/Byte3Byte1/C411 ;
  wire \MULFirstStage/Byte3Byte1/C412 ;
  wire \MULFirstStage/Byte3Byte1/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte2Byte3/C11 ;
  wire \MULFirstStage/Byte2Byte3/S12 ;
  wire \MULFirstStage/Byte2Byte3/S13 ;
  wire \MULFirstStage/Byte2Byte3/S26 ;
  wire \MULFirstStage/Byte2Byte3/S35 ;
  wire \MULFirstStage/Byte2Byte3/S27 ;
  wire \MULFirstStage/Byte2Byte3/C23 ;
  wire \MULFirstStage/Byte2Byte3/S24 ;
  wire \MULFirstStage/Byte2Byte3/C22 ;
  wire \MULFirstStage/Byte2Byte3/S34 ;
  wire \MULFirstStage/Byte2Byte3/S25 ;
  wire \MULFirstStage/Byte2Byte3/S22 ;
  wire \MULFirstStage/Byte2Byte3/S23 ;
  wire \MULFirstStage/Byte2Byte3/C21 ;
  wire \MULFirstStage/Byte2Byte3/S33 ;
  wire \MULFirstStage/Byte2Byte3/C32 ;
  wire \MULFirstStage/Byte2Byte3/S21 ;
  wire \MULFirstStage/Byte2Byte3/S32 ;
  wire \MULFirstStage/Byte2Byte3/C31 ;
  wire \MULFirstStage/Byte2Byte3/C25 ;
  wire \MULFirstStage/Byte2Byte3/C24 ;
  wire \MULFirstStage/Byte2Byte3/S11 ;
  wire \MULFirstStage/Byte2Byte3/S36 ;
  wire \MULFirstStage/Byte2Byte3/S29 ;
  wire \MULFirstStage/Byte2Byte3/S28 ;
  wire \MULFirstStage/Byte2Byte3/C27 ;
  wire \MULFirstStage/Byte2Byte3/C36 ;
  wire \MULFirstStage/Byte2Byte3/S37 ;
  wire \MULFirstStage/Byte2Byte3/S211 ;
  wire \MULFirstStage/Byte2Byte3/S210 ;
  wire \MULFirstStage/Byte2Byte3/C29 ;
  wire \MULFirstStage/Byte2Byte3/C13 ;
  wire \MULFirstStage/Byte2Byte3/S14 ;
  wire \MULFirstStage/Byte2Byte3/C12 ;
  wire \MULFirstStage/Byte2Byte3/C37 ;
  wire \MULFirstStage/Byte2Byte3/S38 ;
  wire \MULFirstStage/Byte2Byte3/S213 ;
  wire \MULFirstStage/Byte2Byte3/S212 ;
  wire \MULFirstStage/Byte2Byte3/C211 ;
  wire \MULFirstStage/Byte2Byte3/C15 ;
  wire \MULFirstStage/Byte2Byte3/S16 ;
  wire \MULFirstStage/Byte2Byte3/C14 ;
  wire \MULFirstStage/Byte2Byte3/C38 ;
  wire \MULFirstStage/Byte2Byte3/S39 ;
  wire \MULFirstStage/Byte2Byte3/S214 ;
  wire \MULFirstStage/Byte2Byte3/C213 ;
  wire \MULFirstStage/Byte2Byte3/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte2Byte3/C16 ;
  wire \MULFirstStage/Byte2Byte3/C39 ;
  wire \MULFirstStage/Byte2Byte3/S310 ;
  wire \MULFirstStage/Byte2Byte3/C310 ;
  wire \MULFirstStage/Byte2Byte3/S15 ;
  wire \MULFirstStage/Byte2Byte3/C41_mand1 ;
  wire \MULFirstStage/Byte2Byte3/X01_mand1_2372 ;
  wire \MULFirstStage/Byte2Byte3/C47 ;
  wire \MULFirstStage/Byte2Byte3/C46 ;
  wire \MULFirstStage/Byte2Byte3/C45 ;
  wire \MULFirstStage/Byte2Byte3/C48 ;
  wire \MULFirstStage/Byte2Byte3/C49 ;
  wire \MULFirstStage/Byte2Byte3/C44 ;
  wire \MULFirstStage/Byte2Byte3/C43 ;
  wire \MULFirstStage/Byte2Byte3/C42 ;
  wire \MULFirstStage/Byte2Byte3/S41 ;
  wire \MULFirstStage/Byte2Byte3/C410 ;
  wire \MULFirstStage/Byte2Byte3/C411 ;
  wire \MULFirstStage/Byte2Byte3/C412 ;
  wire \MULFirstStage/Byte2Byte3/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte2Byte2/C11 ;
  wire \MULFirstStage/Byte2Byte2/S12 ;
  wire \MULFirstStage/Byte2Byte2/S13 ;
  wire \MULFirstStage/Byte2Byte2/S26 ;
  wire \MULFirstStage/Byte2Byte2/S35 ;
  wire \MULFirstStage/Byte2Byte2/S27 ;
  wire \MULFirstStage/Byte2Byte2/C23 ;
  wire \MULFirstStage/Byte2Byte2/S24 ;
  wire \MULFirstStage/Byte2Byte2/C22 ;
  wire \MULFirstStage/Byte2Byte2/S34 ;
  wire \MULFirstStage/Byte2Byte2/S25 ;
  wire \MULFirstStage/Byte2Byte2/S22 ;
  wire \MULFirstStage/Byte2Byte2/S23 ;
  wire \MULFirstStage/Byte2Byte2/C21 ;
  wire \MULFirstStage/Byte2Byte2/S33 ;
  wire \MULFirstStage/Byte2Byte2/C32 ;
  wire \MULFirstStage/Byte2Byte2/S21 ;
  wire \MULFirstStage/Byte2Byte2/S32 ;
  wire \MULFirstStage/Byte2Byte2/C31 ;
  wire \MULFirstStage/Byte2Byte2/C25 ;
  wire \MULFirstStage/Byte2Byte2/C24 ;
  wire \MULFirstStage/Byte2Byte2/S11 ;
  wire \MULFirstStage/Byte2Byte2/S36 ;
  wire \MULFirstStage/Byte2Byte2/S29 ;
  wire \MULFirstStage/Byte2Byte2/S28 ;
  wire \MULFirstStage/Byte2Byte2/C27 ;
  wire \MULFirstStage/Byte2Byte2/C36 ;
  wire \MULFirstStage/Byte2Byte2/S37 ;
  wire \MULFirstStage/Byte2Byte2/S211 ;
  wire \MULFirstStage/Byte2Byte2/S210 ;
  wire \MULFirstStage/Byte2Byte2/C29 ;
  wire \MULFirstStage/Byte2Byte2/C13 ;
  wire \MULFirstStage/Byte2Byte2/S14 ;
  wire \MULFirstStage/Byte2Byte2/C12 ;
  wire \MULFirstStage/Byte2Byte2/C37 ;
  wire \MULFirstStage/Byte2Byte2/S38 ;
  wire \MULFirstStage/Byte2Byte2/S213 ;
  wire \MULFirstStage/Byte2Byte2/S212 ;
  wire \MULFirstStage/Byte2Byte2/C211 ;
  wire \MULFirstStage/Byte2Byte2/C15 ;
  wire \MULFirstStage/Byte2Byte2/S16 ;
  wire \MULFirstStage/Byte2Byte2/C14 ;
  wire \MULFirstStage/Byte2Byte2/C38 ;
  wire \MULFirstStage/Byte2Byte2/S39 ;
  wire \MULFirstStage/Byte2Byte2/S214 ;
  wire \MULFirstStage/Byte2Byte2/C213 ;
  wire \MULFirstStage/Byte2Byte2/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte2Byte2/C16 ;
  wire \MULFirstStage/Byte2Byte2/C39 ;
  wire \MULFirstStage/Byte2Byte2/S310 ;
  wire \MULFirstStage/Byte2Byte2/C310 ;
  wire \MULFirstStage/Byte2Byte2/S15 ;
  wire \MULFirstStage/Byte2Byte2/C41_mand1 ;
  wire \MULFirstStage/Byte2Byte2/X01_mand1_2467 ;
  wire \MULFirstStage/Byte2Byte2/C47 ;
  wire \MULFirstStage/Byte2Byte2/C46 ;
  wire \MULFirstStage/Byte2Byte2/C45 ;
  wire \MULFirstStage/Byte2Byte2/C48 ;
  wire \MULFirstStage/Byte2Byte2/C49 ;
  wire \MULFirstStage/Byte2Byte2/C44 ;
  wire \MULFirstStage/Byte2Byte2/C43 ;
  wire \MULFirstStage/Byte2Byte2/C42 ;
  wire \MULFirstStage/Byte2Byte2/S41 ;
  wire \MULFirstStage/Byte2Byte2/C410 ;
  wire \MULFirstStage/Byte2Byte2/C411 ;
  wire \MULFirstStage/Byte2Byte2/C412 ;
  wire \MULFirstStage/Byte2Byte2/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte2Byte1/C11 ;
  wire \MULFirstStage/Byte2Byte1/S12 ;
  wire \MULFirstStage/Byte2Byte1/S13 ;
  wire \MULFirstStage/Byte2Byte1/S26 ;
  wire \MULFirstStage/Byte2Byte1/S35 ;
  wire \MULFirstStage/Byte2Byte1/S27 ;
  wire \MULFirstStage/Byte2Byte1/C23 ;
  wire \MULFirstStage/Byte2Byte1/S24 ;
  wire \MULFirstStage/Byte2Byte1/C22 ;
  wire \MULFirstStage/Byte2Byte1/S34 ;
  wire \MULFirstStage/Byte2Byte1/S25 ;
  wire \MULFirstStage/Byte2Byte1/S22 ;
  wire \MULFirstStage/Byte2Byte1/S23 ;
  wire \MULFirstStage/Byte2Byte1/C21 ;
  wire \MULFirstStage/Byte2Byte1/S33 ;
  wire \MULFirstStage/Byte2Byte1/C32 ;
  wire \MULFirstStage/Byte2Byte1/S21 ;
  wire \MULFirstStage/Byte2Byte1/S32 ;
  wire \MULFirstStage/Byte2Byte1/C31 ;
  wire \MULFirstStage/Byte2Byte1/C25 ;
  wire \MULFirstStage/Byte2Byte1/C24 ;
  wire \MULFirstStage/Byte2Byte1/S11 ;
  wire \MULFirstStage/Byte2Byte1/S36 ;
  wire \MULFirstStage/Byte2Byte1/S29 ;
  wire \MULFirstStage/Byte2Byte1/S28 ;
  wire \MULFirstStage/Byte2Byte1/C27 ;
  wire \MULFirstStage/Byte2Byte1/C36 ;
  wire \MULFirstStage/Byte2Byte1/S37 ;
  wire \MULFirstStage/Byte2Byte1/S211 ;
  wire \MULFirstStage/Byte2Byte1/S210 ;
  wire \MULFirstStage/Byte2Byte1/C29 ;
  wire \MULFirstStage/Byte2Byte1/C13 ;
  wire \MULFirstStage/Byte2Byte1/S14 ;
  wire \MULFirstStage/Byte2Byte1/C12 ;
  wire \MULFirstStage/Byte2Byte1/C37 ;
  wire \MULFirstStage/Byte2Byte1/S38 ;
  wire \MULFirstStage/Byte2Byte1/S213 ;
  wire \MULFirstStage/Byte2Byte1/S212 ;
  wire \MULFirstStage/Byte2Byte1/C211 ;
  wire \MULFirstStage/Byte2Byte1/C15 ;
  wire \MULFirstStage/Byte2Byte1/S16 ;
  wire \MULFirstStage/Byte2Byte1/C14 ;
  wire \MULFirstStage/Byte2Byte1/C38 ;
  wire \MULFirstStage/Byte2Byte1/S39 ;
  wire \MULFirstStage/Byte2Byte1/S214 ;
  wire \MULFirstStage/Byte2Byte1/C213 ;
  wire \MULFirstStage/Byte2Byte1/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte2Byte1/C16 ;
  wire \MULFirstStage/Byte2Byte1/C39 ;
  wire \MULFirstStage/Byte2Byte1/S310 ;
  wire \MULFirstStage/Byte2Byte1/C310 ;
  wire \MULFirstStage/Byte2Byte1/S15 ;
  wire \MULFirstStage/Byte2Byte1/C41_mand1 ;
  wire \MULFirstStage/Byte2Byte1/X01_mand1_2561 ;
  wire \MULFirstStage/Byte2Byte1/C47 ;
  wire \MULFirstStage/Byte2Byte1/C46 ;
  wire \MULFirstStage/Byte2Byte1/C45 ;
  wire \MULFirstStage/Byte2Byte1/C48 ;
  wire \MULFirstStage/Byte2Byte1/C49 ;
  wire \MULFirstStage/Byte2Byte1/C44 ;
  wire \MULFirstStage/Byte2Byte1/C43 ;
  wire \MULFirstStage/Byte2Byte1/C42 ;
  wire \MULFirstStage/Byte2Byte1/S41 ;
  wire \MULFirstStage/Byte2Byte1/C410 ;
  wire \MULFirstStage/Byte2Byte1/C411 ;
  wire \MULFirstStage/Byte2Byte1/C412 ;
  wire \MULFirstStage/Byte2Byte1/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte1Byte3/C11 ;
  wire \MULFirstStage/Byte1Byte3/S12 ;
  wire \MULFirstStage/Byte1Byte3/S13 ;
  wire \MULFirstStage/Byte1Byte3/S26 ;
  wire \MULFirstStage/Byte1Byte3/S35 ;
  wire \MULFirstStage/Byte1Byte3/S27 ;
  wire \MULFirstStage/Byte1Byte3/C23 ;
  wire \MULFirstStage/Byte1Byte3/S24 ;
  wire \MULFirstStage/Byte1Byte3/C22 ;
  wire \MULFirstStage/Byte1Byte3/S34 ;
  wire \MULFirstStage/Byte1Byte3/S25 ;
  wire \MULFirstStage/Byte1Byte3/S22 ;
  wire \MULFirstStage/Byte1Byte3/S23 ;
  wire \MULFirstStage/Byte1Byte3/C21 ;
  wire \MULFirstStage/Byte1Byte3/S33 ;
  wire \MULFirstStage/Byte1Byte3/C32 ;
  wire \MULFirstStage/Byte1Byte3/S21 ;
  wire \MULFirstStage/Byte1Byte3/S32 ;
  wire \MULFirstStage/Byte1Byte3/C31 ;
  wire \MULFirstStage/Byte1Byte3/C25 ;
  wire \MULFirstStage/Byte1Byte3/C24 ;
  wire \MULFirstStage/Byte1Byte3/S11 ;
  wire \MULFirstStage/Byte1Byte3/S36 ;
  wire \MULFirstStage/Byte1Byte3/S29 ;
  wire \MULFirstStage/Byte1Byte3/S28 ;
  wire \MULFirstStage/Byte1Byte3/C27 ;
  wire \MULFirstStage/Byte1Byte3/C36 ;
  wire \MULFirstStage/Byte1Byte3/S37 ;
  wire \MULFirstStage/Byte1Byte3/S211 ;
  wire \MULFirstStage/Byte1Byte3/S210 ;
  wire \MULFirstStage/Byte1Byte3/C29 ;
  wire \MULFirstStage/Byte1Byte3/C13 ;
  wire \MULFirstStage/Byte1Byte3/S14 ;
  wire \MULFirstStage/Byte1Byte3/C12 ;
  wire \MULFirstStage/Byte1Byte3/C37 ;
  wire \MULFirstStage/Byte1Byte3/S38 ;
  wire \MULFirstStage/Byte1Byte3/S213 ;
  wire \MULFirstStage/Byte1Byte3/S212 ;
  wire \MULFirstStage/Byte1Byte3/C211 ;
  wire \MULFirstStage/Byte1Byte3/C15 ;
  wire \MULFirstStage/Byte1Byte3/S16 ;
  wire \MULFirstStage/Byte1Byte3/C14 ;
  wire \MULFirstStage/Byte1Byte3/C38 ;
  wire \MULFirstStage/Byte1Byte3/S39 ;
  wire \MULFirstStage/Byte1Byte3/S214 ;
  wire \MULFirstStage/Byte1Byte3/C213 ;
  wire \MULFirstStage/Byte1Byte3/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte1Byte3/C16 ;
  wire \MULFirstStage/Byte1Byte3/C39 ;
  wire \MULFirstStage/Byte1Byte3/S310 ;
  wire \MULFirstStage/Byte1Byte3/C310 ;
  wire \MULFirstStage/Byte1Byte3/S15 ;
  wire \MULFirstStage/Byte1Byte3/C41_mand1 ;
  wire \MULFirstStage/Byte1Byte3/X01_mand1_2655 ;
  wire \MULFirstStage/Byte1Byte3/C47 ;
  wire \MULFirstStage/Byte1Byte3/C46 ;
  wire \MULFirstStage/Byte1Byte3/C45 ;
  wire \MULFirstStage/Byte1Byte3/C48 ;
  wire \MULFirstStage/Byte1Byte3/C49 ;
  wire \MULFirstStage/Byte1Byte3/C44 ;
  wire \MULFirstStage/Byte1Byte3/C43 ;
  wire \MULFirstStage/Byte1Byte3/C42 ;
  wire \MULFirstStage/Byte1Byte3/S41 ;
  wire \MULFirstStage/Byte1Byte3/C410 ;
  wire \MULFirstStage/Byte1Byte3/C411 ;
  wire \MULFirstStage/Byte1Byte3/C412 ;
  wire \MULFirstStage/Byte1Byte3/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte1Byte2/C11 ;
  wire \MULFirstStage/Byte1Byte2/S12 ;
  wire \MULFirstStage/Byte1Byte2/S13 ;
  wire \MULFirstStage/Byte1Byte2/S26 ;
  wire \MULFirstStage/Byte1Byte2/S35 ;
  wire \MULFirstStage/Byte1Byte2/S27 ;
  wire \MULFirstStage/Byte1Byte2/C23 ;
  wire \MULFirstStage/Byte1Byte2/S24 ;
  wire \MULFirstStage/Byte1Byte2/C22 ;
  wire \MULFirstStage/Byte1Byte2/S34 ;
  wire \MULFirstStage/Byte1Byte2/S25 ;
  wire \MULFirstStage/Byte1Byte2/S22 ;
  wire \MULFirstStage/Byte1Byte2/S23 ;
  wire \MULFirstStage/Byte1Byte2/C21 ;
  wire \MULFirstStage/Byte1Byte2/S33 ;
  wire \MULFirstStage/Byte1Byte2/C32 ;
  wire \MULFirstStage/Byte1Byte2/S21 ;
  wire \MULFirstStage/Byte1Byte2/S32 ;
  wire \MULFirstStage/Byte1Byte2/C31 ;
  wire \MULFirstStage/Byte1Byte2/C25 ;
  wire \MULFirstStage/Byte1Byte2/C24 ;
  wire \MULFirstStage/Byte1Byte2/S11 ;
  wire \MULFirstStage/Byte1Byte2/S36 ;
  wire \MULFirstStage/Byte1Byte2/S29 ;
  wire \MULFirstStage/Byte1Byte2/S28 ;
  wire \MULFirstStage/Byte1Byte2/C27 ;
  wire \MULFirstStage/Byte1Byte2/C36 ;
  wire \MULFirstStage/Byte1Byte2/S37 ;
  wire \MULFirstStage/Byte1Byte2/S211 ;
  wire \MULFirstStage/Byte1Byte2/S210 ;
  wire \MULFirstStage/Byte1Byte2/C29 ;
  wire \MULFirstStage/Byte1Byte2/C13 ;
  wire \MULFirstStage/Byte1Byte2/S14 ;
  wire \MULFirstStage/Byte1Byte2/C12 ;
  wire \MULFirstStage/Byte1Byte2/C37 ;
  wire \MULFirstStage/Byte1Byte2/S38 ;
  wire \MULFirstStage/Byte1Byte2/S213 ;
  wire \MULFirstStage/Byte1Byte2/S212 ;
  wire \MULFirstStage/Byte1Byte2/C211 ;
  wire \MULFirstStage/Byte1Byte2/C15 ;
  wire \MULFirstStage/Byte1Byte2/S16 ;
  wire \MULFirstStage/Byte1Byte2/C14 ;
  wire \MULFirstStage/Byte1Byte2/C38 ;
  wire \MULFirstStage/Byte1Byte2/S39 ;
  wire \MULFirstStage/Byte1Byte2/S214 ;
  wire \MULFirstStage/Byte1Byte2/C213 ;
  wire \MULFirstStage/Byte1Byte2/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte1Byte2/C16 ;
  wire \MULFirstStage/Byte1Byte2/C39 ;
  wire \MULFirstStage/Byte1Byte2/S310 ;
  wire \MULFirstStage/Byte1Byte2/C310 ;
  wire \MULFirstStage/Byte1Byte2/S15 ;
  wire \MULFirstStage/Byte1Byte2/C41_mand1 ;
  wire \MULFirstStage/Byte1Byte2/X01_mand1_2750 ;
  wire \MULFirstStage/Byte1Byte2/C47 ;
  wire \MULFirstStage/Byte1Byte2/C46 ;
  wire \MULFirstStage/Byte1Byte2/C45 ;
  wire \MULFirstStage/Byte1Byte2/C48 ;
  wire \MULFirstStage/Byte1Byte2/C49 ;
  wire \MULFirstStage/Byte1Byte2/C44 ;
  wire \MULFirstStage/Byte1Byte2/C43 ;
  wire \MULFirstStage/Byte1Byte2/C42 ;
  wire \MULFirstStage/Byte1Byte2/S41 ;
  wire \MULFirstStage/Byte1Byte2/C410 ;
  wire \MULFirstStage/Byte1Byte2/C411 ;
  wire \MULFirstStage/Byte1Byte2/C412 ;
  wire \MULFirstStage/Byte1Byte2/A[0]_B[3]_AND_58_o ;
  wire \MULFirstStage/Byte1Byte1/C11 ;
  wire \MULFirstStage/Byte1Byte1/S12 ;
  wire \MULFirstStage/Byte1Byte1/S13 ;
  wire \MULFirstStage/Byte1Byte1/S26 ;
  wire \MULFirstStage/Byte1Byte1/S35 ;
  wire \MULFirstStage/Byte1Byte1/S27 ;
  wire \MULFirstStage/Byte1Byte1/C23 ;
  wire \MULFirstStage/Byte1Byte1/S24 ;
  wire \MULFirstStage/Byte1Byte1/C22 ;
  wire \MULFirstStage/Byte1Byte1/S34 ;
  wire \MULFirstStage/Byte1Byte1/S25 ;
  wire \MULFirstStage/Byte1Byte1/S22 ;
  wire \MULFirstStage/Byte1Byte1/S23 ;
  wire \MULFirstStage/Byte1Byte1/C21 ;
  wire \MULFirstStage/Byte1Byte1/S33 ;
  wire \MULFirstStage/Byte1Byte1/C32 ;
  wire \MULFirstStage/Byte1Byte1/S21 ;
  wire \MULFirstStage/Byte1Byte1/S32 ;
  wire \MULFirstStage/Byte1Byte1/C31 ;
  wire \MULFirstStage/Byte1Byte1/C25 ;
  wire \MULFirstStage/Byte1Byte1/C24 ;
  wire \MULFirstStage/Byte1Byte1/S11 ;
  wire \MULFirstStage/Byte1Byte1/S36 ;
  wire \MULFirstStage/Byte1Byte1/S29 ;
  wire \MULFirstStage/Byte1Byte1/S28 ;
  wire \MULFirstStage/Byte1Byte1/C27 ;
  wire \MULFirstStage/Byte1Byte1/C36 ;
  wire \MULFirstStage/Byte1Byte1/S37 ;
  wire \MULFirstStage/Byte1Byte1/S211 ;
  wire \MULFirstStage/Byte1Byte1/S210 ;
  wire \MULFirstStage/Byte1Byte1/C29 ;
  wire \MULFirstStage/Byte1Byte1/C13 ;
  wire \MULFirstStage/Byte1Byte1/S14 ;
  wire \MULFirstStage/Byte1Byte1/C12 ;
  wire \MULFirstStage/Byte1Byte1/C37 ;
  wire \MULFirstStage/Byte1Byte1/S38 ;
  wire \MULFirstStage/Byte1Byte1/S213 ;
  wire \MULFirstStage/Byte1Byte1/S212 ;
  wire \MULFirstStage/Byte1Byte1/C211 ;
  wire \MULFirstStage/Byte1Byte1/C15 ;
  wire \MULFirstStage/Byte1Byte1/S16 ;
  wire \MULFirstStage/Byte1Byte1/C14 ;
  wire \MULFirstStage/Byte1Byte1/C38 ;
  wire \MULFirstStage/Byte1Byte1/S39 ;
  wire \MULFirstStage/Byte1Byte1/S214 ;
  wire \MULFirstStage/Byte1Byte1/C213 ;
  wire \MULFirstStage/Byte1Byte1/A[7]_B[3]_AND_41_o ;
  wire \MULFirstStage/Byte1Byte1/C16 ;
  wire \MULFirstStage/Byte1Byte1/C39 ;
  wire \MULFirstStage/Byte1Byte1/S310 ;
  wire \MULFirstStage/Byte1Byte1/C310 ;
  wire \MULFirstStage/Byte1Byte1/S15 ;
  wire \MULFirstStage/Byte1Byte1/C41_mand1 ;
  wire \MULFirstStage/Byte1Byte1/X01_mand1_2844 ;
  wire \MULFirstStage/Byte1Byte1/C47 ;
  wire \MULFirstStage/Byte1Byte1/C46 ;
  wire \MULFirstStage/Byte1Byte1/C45 ;
  wire \MULFirstStage/Byte1Byte1/C48 ;
  wire \MULFirstStage/Byte1Byte1/C49 ;
  wire \MULFirstStage/Byte1Byte1/C44 ;
  wire \MULFirstStage/Byte1Byte1/C43 ;
  wire \MULFirstStage/Byte1Byte1/C42 ;
  wire \MULFirstStage/Byte1Byte1/S41 ;
  wire \MULFirstStage/Byte1Byte1/C410 ;
  wire \MULFirstStage/Byte1Byte1/C411 ;
  wire \MULFirstStage/Byte1Byte1/C412 ;
  wire \MULFirstStage/Byte1Byte1/A[0]_B[3]_AND_58_o ;
  wire N0;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire \Stage1/ExponDifference/Sign11_2863 ;
  wire N10;
  wire \Stage2/CalcSticky/StickyBit<0>1211_2865 ;
  wire \Stage2/CalcSticky/StickyBit<0>211_2866 ;
  wire \Stage2/CalcSticky/StickyBit<0>212_2867 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output1 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output11_2869 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output12_2870 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output28 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output27 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output26 ;
  wire N12;
  wire N14;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output23 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output231_2877 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output21 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output211_2879 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output29 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output13 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output131_2882 ;
  wire \Stage2/AlignShifter/Stage5/Mmux_Output132_2883 ;
  wire \Stage2/CalcSticky/StickyBit<0>1_2885 ;
  wire \Stage2/CalcSticky/StickyBit<0>2_2886 ;
  wire \Stage2/CalcSticky/StickyBit<0>3_2887 ;
  wire \Stage2/CalcSticky/StickyBit<0>7 ;
  wire \Stage2/CalcSticky/StickyBit<0>8_2889 ;
  wire \Stage2/CalcSticky/StickyBit<0>9_2890 ;
  wire \Stage2/CalcSticky/StickyBit<0>10_2891 ;
  wire \Stage2/CalcSticky/StickyBit<0>11_2892 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts42 ;
  wire N16;
  wire \Stage3/ZerosCounter/Mmux_Shifts1 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts11_2896 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts12_2897 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts13_2898 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts2 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts21_2900 ;
  wire \Stage3/ZerosCounter/Mmux_Shifts22_2901 ;
  wire N18;
  wire N20;
  wire \Stage4/tobeRoundMux/Mmux_Output29 ;
  wire \Stage4/tobeRoundMux/Mmux_Output291_2905 ;
  wire N22;
  wire \Stage4/tobeRoundMux/Mmux_Output23 ;
  wire \Stage4/tobeRoundMux/Mmux_Output232_2908 ;
  wire \Stage4/tobeRoundMux/Mmux_Output234_2909 ;
  wire \Stage4/tobeRoundMux/Mmux_Output26 ;
  wire \Stage4/tobeRoundMux/Mmux_Output263_2911 ;
  wire \Stage4/tobeRoundMux/Mmux_Output264_2912 ;
  wire \Stage4/tobeRoundMux/Mmux_Output265_2913 ;
  wire N24;
  wire \Stage4/tobeRoundMux/Mmux_Output18 ;
  wire \Stage4/tobeRoundMux/Mmux_Output183_2916 ;
  wire \Stage4/tobeRoundMux/Mmux_Output14 ;
  wire \Stage4/tobeRoundMux/Mmux_Output141_2918 ;
  wire \Stage4/tobeRoundMux/Mmux_Output144_2919 ;
  wire \Stage4/tobeRoundMux/Mmux_Output2312_2920 ;
  wire \Stage4/tobeRoundMux/Mmux_Output34 ;
  wire \Stage4/tobeRoundMux/Mmux_Output341_2922 ;
  wire \Stage4/tobeRoundMux/Mmux_Output10 ;
  wire \Stage4/tobeRoundMux/Mmux_Output101_2924 ;
  wire N26;
  wire \Stage4/tobeRoundMux/Mmux_Output31_2926 ;
  wire N28;
  wire N30;
  wire \Stage4/ExponentMux/Mmux_Output8 ;
  wire \Stage4/ExponentMux/Mmux_Output81_2930 ;
  wire N32;
  wire \Stage4/tobeRoundMux/Mmux_Output8 ;
  wire \Stage4/tobeRoundMux/Mmux_Output16 ;
  wire \Stage4/RoundControlMux/Mmux_Output1 ;
  wire \Stage4/RoundControlMux/Mmux_Output11_2935 ;
  wire \Stage4/RoundControlMux/Mmux_Output12_2936 ;
  wire \Stage4/RoundControlMux/Mmux_Output13_2937 ;
  wire \Stage4/RoundControlMux/Mmux_Output14_2938 ;
  wire \Stage4/RoundControlMux/Mmux_Output15_2939 ;
  wire \Stage4/RoundControlMux/Mmux_Output16_2940 ;
  wire \Stage4/RoundControlMux/Mmux_Output17_2941 ;
  wire \Stage4/RoundControlMux/Mmux_Output18_2942 ;
  wire \Stage4/RoundControlMux/Mmux_Output19_2943 ;
  wire \Stage4/tobeRoundMux/Mmux_Output28 ;
  wire \Stage4/tobeRoundMux/Mmux_Output281_2945 ;
  wire \Stage4/tobeRoundMux/Mmux_Output282_2946 ;
  wire \Stage4/tobeRoundMux/Mmux_Output21 ;
  wire \Stage4/tobeRoundMux/Mmux_Output213_2948 ;
  wire \Stage4/tobeRoundMux/Mmux_Output214_2949 ;
  wire \Stage4/tobeRoundMux/Mmux_Output12 ;
  wire \Stage4/tobeRoundMux/Mmux_Output125 ;
  wire \Stage4/tobeRoundMux/Mmux_Output6 ;
  wire \Stage4/tobeRoundMux/Mmux_Output61_2953 ;
  wire N38;
  wire N40;
  wire N42;
  wire N46;
  wire N48;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_rt_3068 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_0_rt_3069 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_1_rt_3070 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_2_rt_3071 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_3_rt_3072 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_4_rt_3073 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_5_rt_3074 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_6_rt_3075 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_24_rt_3076 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_25_rt_3077 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_26_rt_3078 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_27_rt_3079 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_28_rt_3080 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_29_rt_3081 ;
  wire \MULSecondStage/Adder5/Madd_n0006_cy<0>_30_rt_3082 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_rt_3083 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_0_rt_3084 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_1_rt_3085 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_2_rt_3086 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_3_rt_3087 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_4_rt_3088 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_5_rt_3089 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_6_rt_3090 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_24_rt_3091 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_25_rt_3092 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_26_rt_3093 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_27_rt_3094 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_28_rt_3095 ;
  wire \MULSecondStage/Adder6/Madd_n0006_cy<0>_29_rt_3096 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_rt_3097 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_0_rt_3098 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_1_rt_3099 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_2_rt_3100 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_3_rt_3101 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_4_rt_3102 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_5_rt_3103 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_6_rt_3104 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_24_rt_3105 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_25_rt_3106 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_26_rt_3107 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_27_rt_3108 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_28_rt_3109 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_29_rt_3110 ;
  wire \MULSecondStage/Adder4/Madd_n0006_cy<0>_30_rt_3111 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_rt_3112 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_0_rt_3113 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_1_rt_3114 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_2_rt_3115 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_3_rt_3116 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_4_rt_3117 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_5_rt_3118 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_6_rt_3119 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_41_rt_3120 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_42_rt_3121 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_43_rt_3122 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_44_rt_3123 ;
  wire \MULThirdStage/Adder2/Madd_n0006_cy<0>_45_rt_3124 ;
  wire \Stage3/TwosCompAdder/Madd_n0006_cy<0>_rt_3125 ;
  wire \Stage3/TwosCompAdder/Madd_n0006_cy<1>_rt_3126 ;
  wire \Stage3/TwosCompAdder/Madd_n0006_cy<2>_rt_3127 ;
  wire \Stage5/Rounding/Madd_n0006_cy<1>_rt_3128 ;
  wire \Stage5/Rounding/Madd_n0006_cy<2>_rt_3129 ;
  wire \Stage5/Rounding/Madd_n0006_cy<3>_rt_3130 ;
  wire \Stage5/Rounding/Madd_n0006_cy<4>_rt_3131 ;
  wire \Stage5/Rounding/Madd_n0006_cy<5>_rt_3132 ;
  wire \Stage5/Rounding/Madd_n0006_cy<6>_rt_3133 ;
  wire \Stage5/Rounding/Madd_n0006_cy<7>_rt_3134 ;
  wire \Stage5/Rounding/Madd_n0006_cy<8>_rt_3135 ;
  wire \Stage5/Rounding/Madd_n0006_cy<9>_rt_3136 ;
  wire \Stage5/Rounding/Madd_n0006_cy<10>_rt_3137 ;
  wire \Stage5/Rounding/Madd_n0006_cy<11>_rt_3138 ;
  wire \Stage5/Rounding/Madd_n0006_cy<12>_rt_3139 ;
  wire \Stage5/Rounding/Madd_n0006_cy<13>_rt_3140 ;
  wire \Stage5/Rounding/Madd_n0006_cy<14>_rt_3141 ;
  wire \Stage5/Rounding/Madd_n0006_cy<15>_rt_3142 ;
  wire \Stage5/Rounding/Madd_n0006_cy<16>_rt_3143 ;
  wire \Stage5/Rounding/Madd_n0006_cy<17>_rt_3144 ;
  wire \Stage5/Rounding/Madd_n0006_cy<18>_rt_3145 ;
  wire \Stage5/Rounding/Madd_n0006_cy<19>_rt_3146 ;
  wire \Stage5/Rounding/Madd_n0006_cy<20>_rt_3147 ;
  wire \Stage5/Rounding/Madd_n0006_cy<21>_rt_3148 ;
  wire \Stage5/Rounding/Madd_n0006_cy<22>_rt_3149 ;
  wire \Stage5/Rounding/Madd_n0006_cy<23>_rt_3150 ;
  wire \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>1_3151 ;
  wire N72;
  wire N74;
  wire N76;
  wire N81;
  wire N82;
  wire N83;
  wire N85;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire N101;
  wire N103;
  wire N105;
  wire N107;
  wire N109;
  wire N111;
  wire \SignOfDifference1Reg/Q_0_1_3172 ;
  wire \NDifferenceReg/Q_1_1_3173 ;
  wire \SignOfDifference1Reg/Q_0_2_3174 ;
  wire \NDifferenceReg/Q_0_1_3175 ;
  wire \inputOperand2/Q_16_1_3176 ;
  wire \inputOperand2/Q_8_1_3177 ;
  wire \inputOperand2/Q_0_1_3178 ;
  wire \inputOperand2/Q_18_1_3179 ;
  wire \inputOperand2/Q_11_1_3180 ;
  wire \inputOperand2/Q_3_1_3181 ;
  wire \inputOperand1/Q_22_1_3182 ;
  wire \inputOperand1/Q_14_1_3183 ;
  wire \inputOperand1/Q_6_1_3184 ;
  wire \inputOperand2/Q_10_1_3185 ;
  wire \inputOperand2/Q_2_1_3186 ;
  wire \inputOperand1/Q_15_1_3187 ;
  wire \inputOperand1/Q_7_1_3188 ;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N132;
  wire N133;
  wire N134;
  wire N135;
  wire N136;
  wire N137;
  wire N138;
  wire N139;
  wire N140;
  wire N141;
  wire N142;
  wire N143;
  wire N144;
  wire N145;
  wire N146;
  wire N147;
  wire N148;
  wire N149;
  wire N150;
  wire N151;
  wire N152;
  wire N153;
  wire N154;
  wire N155;
  wire N156;
  wire N157;
  wire N158;
  wire N159;
  wire N160;
  wire N161;
  wire N162;
  wire N163;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N169;
  wire N170;
  wire N171;
  wire N172;
  wire N173;
  wire N174;
  wire \ResultSignReg3/Mshreg_Q_0_3251 ;
  wire \AlgorthimSelReg2/Mshreg_Q_0_3252 ;
  wire \NLW_ResultSignReg3/Mshreg_Q_0_Q15_UNCONNECTED ;
  wire \NLW_AlgorthimSelReg2/Mshreg_Q_0_Q15_UNCONNECTED ;
  wire [0 : 0] \inputOperation/Q ;
  wire [15 : 0] \Result11Reg/Q ;
  wire [15 : 0] \Result12Reg/Q ;
  wire [15 : 0] \Result13Reg/Q ;
  wire [15 : 0] \Result21Reg/Q ;
  wire [15 : 0] \Result22Reg/Q ;
  wire [15 : 0] \Result23Reg/Q ;
  wire [15 : 0] \Result31Reg/Q ;
  wire [15 : 0] \Result32Reg/Q ;
  wire [15 : 0] \Result33Reg/Q ;
  wire [22 : 0] \Mantissa1Reg/Q ;
  wire [22 : 0] \Mantissa2Reg/Q ;
  wire [7 : 0] \Exponent1Reg/Q ;
  wire [7 : 0] \Exponent2Reg/Q ;
  wire [1 : 0] \CompareReg/Q ;
  wire [4 : 0] \DifferenceReg/Q ;
  wire [4 : 0] \NDifferenceReg/Q ;
  wire [7 : 0] \MDExponentReg/Q ;
  wire [32 : 0] \Result1Reg/Q ;
  wire [32 : 0] \Result2Reg/Q ;
  wire [31 : 0] \Result3Reg/Q ;
  wire [26 : 0] \Adder1Reg/Q ;
  wire [26 : 3] \Adder2Reg/Q ;
  wire [7 : 0] \ExponentBaseReg/Q ;
  wire [7 : 0] \MDFinalExponentReg/Q ;
  wire [47 : 0] \MULResultReg/Q ;
  wire [26 : 0] \AdderResultReg/Q ;
  wire [7 : 0] \ResultExponentReg/Q ;
  wire [4 : 0] \NormShiftsReg/Q ;
  wire [23 : 0] \TobeRoundedReg/Q ;
  wire [7 : 0] \ExponentUpdateReq1/Q ;
  wire [22 : 0] \FinalFractionReg/Q ;
  wire [7 : 0] \FinalExponentReg/Q ;
  wire [31 : 0] \inputOperand1/Q ;
  wire [31 : 0] \inputOperand2/Q ;
  wire [1 : 0] Compare;
  wire [4 : 0] Difference;
  wire [4 : 0] NDifference;
  wire [7 : 0] MDExponent;
  wire [32 : 0] Result1;
  wire [32 : 0] Result2;
  wire [31 : 0] Result3;
  wire [7 : 0] ExponentBase;
  wire [26 : 0] Adder1;
  wire [26 : 3] Adder2;
  wire [7 : 0] MDFinalExponent;
  wire [47 : 0] MULResult;
  wire [26 : 0] AdderResult;
  wire [4 : 0] NormShifts;
  wire [7 : 0] ResultExponent;
  wire [23 : 0] TobeRounded;
  wire [7 : 0] ExponentAdderResult1;
  wire [22 : 0] FinalFraction;
  wire [7 : 0] FinalExponent;
  wire [15 : 0] Result11;
  wire [15 : 0] Result12;
  wire [15 : 0] Result13;
  wire [15 : 0] Result21;
  wire [15 : 0] Result22;
  wire [15 : 0] Result23;
  wire [15 : 0] Result31;
  wire [15 : 0] Result32;
  wire [15 : 0] Result33;
  wire [23 : 0] \Stage5/Rounding/n0006 ;
  wire [0 : 0] \MULSecondStage/Adder5/Madd_n0006_cy ;
  wire [0 : 0] \MULSecondStage/Adder6/Madd_n0006_cy ;
  wire [0 : 0] \MULSecondStage/Adder4/Madd_n0006_cy ;
  wire [0 : 0] \MULThirdStage/Adder2/Madd_n0006_cy ;
  wire [26 : 0] \Stage3/TwosCompAdder/Madd_n0006_cy ;
  wire [26 : 3] \Stage3/TwosCompAdder/Madd_n0006_lut ;
  wire [0 : 0] \Stage5/Rounding/Madd_n0006_lut ;
  wire [23 : 0] \Stage5/Rounding/Madd_n0006_cy ;
  wire [0 : 0] \Stage1/ExponDifference/npreDiffer ;
  wire [4 : 1] \Stage1/ExponDifference/preDiffer ;
  wire [7 : 0] \Stage2/FinalMDExponent/Madd_n0006_lut ;
  wire [6 : 0] \Stage2/FinalMDExponent/Madd_n0006_cy ;
  wire [25 : 0] \Stage2/preAligned ;
  wire [22 : 0] \Stage2/swapedOperand2 ;
  wire [3 : 3] \Stage3/ZerosCounter/Mmux__n0087_rs_A ;
  wire [7 : 0] \Stage4/ExponentAdder1/Madd_n0006_lut ;
  wire [6 : 0] \Stage4/ExponentAdder1/Madd_n0006_cy ;
  wire [5 : 4] \Stage4/UpdateExponet ;
  wire [7 : 0] \Stage4/ExponentAdderResult1 ;
  wire [14 : 1] \MULFirstStage/Byte3Byte3/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte3Byte3/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte3Byte2/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte3Byte2/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte3Byte1/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte3Byte1/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte2Byte3/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte2Byte3/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte2Byte2/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte2Byte2/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte2Byte1/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte2Byte1/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte1Byte3/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte1Byte3/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte1Byte2/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte1Byte2/Madd_Result_cy ;
  wire [14 : 1] \MULFirstStage/Byte1Byte1/Madd_Result_lut ;
  wire [13 : 1] \MULFirstStage/Byte1Byte1/Madd_Result_cy ;
  wire [0 : 0] \Stage2/CalcSticky/StickyBit ;
  GND   XST_GND (
    .G(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> )
  );
  VCC   XST_VCC (
    .P(\MULFirstStage/Byte3Byte3/X77 )
  );
  FD   \CompareReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Compare[1]),
    .Q(\CompareReg/Q [1])
  );
  FD   \CompareReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Compare[0]),
    .Q(\CompareReg/Q [0])
  );
  FD   \inputOperation/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Operation_0_IBUF_65),
    .Q(\inputOperation/Q [0])
  );
  FD   \ResultSignReg1/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ResultSign),
    .Q(\ResultSignReg1/Q_0_500 )
  );
  FD   \ADDSignReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ADDSign),
    .Q(\ADDSignReg/Q_0_256 )
  );
  FD   \ExclusiveSignReg2/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\ExclusiveSignReg/Q_0_68 ),
    .Q(\ExclusiveSignReg2/Q_0_255 )
  );
  FD   \ExclusiveSignReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ExclusiveSign),
    .Q(\ExclusiveSignReg/Q_0_68 )
  );
  FD   \RoundControlReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Round),
    .Q(\RoundControlReg/Q_0_525 )
  );
  FD   \AlgorthimSelReg3/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\AlgorthimSelReg2/Q_0_409 ),
    .Q(\AlgorthimSelReg3/Q_0_499 )
  );
  FD   \EffCarryReg1/Q_0  (
    .C(CLK_BUFGP_66),
    .D(EffCarry),
    .Q(\EffCarryReg1/Q_0_493 )
  );
  FD   \EffectivOperationReg2/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\EffectivOperationReg1/Q_0_246 ),
    .Q(\EffectivOperationReg2/Q_0_400 )
  );
  FD   \EffectivOperationReg1/Q_0  (
    .C(CLK_BUFGP_66),
    .D(EffOperation),
    .Q(\EffectivOperationReg1/Q_0_246 )
  );
  FD   \ZeroDifferenceReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ZeroDifference),
    .Q(\ZeroDifferenceReg/Q_0_245 )
  );
  FD   \SignOfDifference1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(SignOfDifference),
    .Q(\SignOfDifference1Reg/Q_0_244 )
  );
  FD   \OperandSign2Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [31]),
    .Q(\OperandSign2Reg/Q_0_231 )
  );
  FD   \OperandSign1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [31]),
    .Q(\OperandSign1Reg/Q_0_230 )
  );
  FD   \NormShiftsReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(NormShifts[4]),
    .Q(\NormShiftsReg/Q [4])
  );
  FD   \NormShiftsReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(NormShifts[3]),
    .Q(\NormShiftsReg/Q [3])
  );
  FD   \NormShiftsReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(NormShifts[2]),
    .Q(\NormShiftsReg/Q [2])
  );
  FD   \NormShiftsReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(NormShifts[1]),
    .Q(\NormShiftsReg/Q [1])
  );
  FD   \NormShiftsReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(NormShifts[0]),
    .Q(\NormShiftsReg/Q [0])
  );
  FD   \NDifferenceReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(NDifference[4]),
    .Q(\NDifferenceReg/Q [4])
  );
  FD   \NDifferenceReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(NDifference[3]),
    .Q(\NDifferenceReg/Q [3])
  );
  FD   \NDifferenceReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(NDifference[2]),
    .Q(\NDifferenceReg/Q [2])
  );
  FD   \NDifferenceReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(NDifference[1]),
    .Q(\NDifferenceReg/Q [1])
  );
  FD   \NDifferenceReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(NDifference[0]),
    .Q(\NDifferenceReg/Q [0])
  );
  FD   \DifferenceReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Difference[4]),
    .Q(\DifferenceReg/Q [4])
  );
  FD   \DifferenceReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Difference[3]),
    .Q(\DifferenceReg/Q [3])
  );
  FD   \DifferenceReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Difference[2]),
    .Q(\DifferenceReg/Q [2])
  );
  FD   \DifferenceReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Difference[1]),
    .Q(\DifferenceReg/Q [1])
  );
  FD   \DifferenceReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Difference[0]),
    .Q(\DifferenceReg/Q [0])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_rt_3068 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy [0])
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_rt_3068 ),
    .O(Result2[0])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_0  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy [0]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_0_rt_3069 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>1 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_0  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy [0]),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_0_rt_3069 ),
    .O(Result2[1])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_1  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>1 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_1_rt_3070 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>2 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_1  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>1 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_1_rt_3070 ),
    .O(Result2[2])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_2  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>2 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_2_rt_3071 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>3 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_2  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>2 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_2_rt_3071 ),
    .O(Result2[3])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_3  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>3 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_3_rt_3072 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>4 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_3  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>3 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_3_rt_3072 ),
    .O(Result2[4])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_4  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>4 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_4_rt_3073 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>5 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_4  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>4 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_4_rt_3073 ),
    .O(Result2[5])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_5  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>5 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_5_rt_3074 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>6 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_5  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>5 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_5_rt_3074 ),
    .O(Result2[6])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_6  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>6 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_6_rt_3075 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>7 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_6  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>6 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_6_rt_3075 ),
    .O(Result2[7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>8  (
    .I0(\Result21Reg/Q [8]),
    .I1(\Result22Reg/Q [0]),
    .I2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>8_1140 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_7  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>7 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>8_1140 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>8 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_7  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>7 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>8_1140 ),
    .O(Result2[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n0006  (
    .I0(\Result21Reg/Q [8]),
    .I1(\Result22Reg/Q [0]),
    .O(\MULSecondStage/Adder5/Madd_n0006_1142 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>9  (
    .I0(\Result21Reg/Q [9]),
    .I1(\Result22Reg/Q [1]),
    .I2(\MULSecondStage/Adder5/Madd_n0006_1142 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>9_1143 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_8  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>8 ),
    .DI(\MULSecondStage/Adder5/Madd_n0006_1142 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>9_1143 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>9 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_8  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>8 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>9_1143 ),
    .O(Result2[9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00061  (
    .I0(\Result21Reg/Q [9]),
    .I1(\Result22Reg/Q [1]),
    .O(\MULSecondStage/Adder5/Madd_n00061_1145 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>10  (
    .I0(\Result21Reg/Q [10]),
    .I1(\Result22Reg/Q [2]),
    .I2(\MULSecondStage/Adder5/Madd_n00061_1145 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>10_1146 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_9  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>9 ),
    .DI(\MULSecondStage/Adder5/Madd_n00061_1145 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>10_1146 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>10 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_9  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>9 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>10_1146 ),
    .O(Result2[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00062  (
    .I0(\Result21Reg/Q [10]),
    .I1(\Result22Reg/Q [2]),
    .O(\MULSecondStage/Adder5/Madd_n00062_1148 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>11  (
    .I0(\Result21Reg/Q [11]),
    .I1(\Result22Reg/Q [3]),
    .I2(\MULSecondStage/Adder5/Madd_n00062_1148 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>11_1149 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_10  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>10 ),
    .DI(\MULSecondStage/Adder5/Madd_n00062_1148 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>11_1149 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>11 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_10  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>10 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>11_1149 ),
    .O(Result2[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00063  (
    .I0(\Result21Reg/Q [11]),
    .I1(\Result22Reg/Q [3]),
    .O(\MULSecondStage/Adder5/Madd_n00063_1151 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>12  (
    .I0(\Result21Reg/Q [12]),
    .I1(\Result22Reg/Q [4]),
    .I2(\MULSecondStage/Adder5/Madd_n00063_1151 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>12_1152 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_11  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>11 ),
    .DI(\MULSecondStage/Adder5/Madd_n00063_1151 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>12_1152 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>12 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_11  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>11 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>12_1152 ),
    .O(Result2[12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00064  (
    .I0(\Result21Reg/Q [12]),
    .I1(\Result22Reg/Q [4]),
    .O(\MULSecondStage/Adder5/Madd_n00064_1154 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>13  (
    .I0(\Result21Reg/Q [13]),
    .I1(\Result22Reg/Q [5]),
    .I2(\MULSecondStage/Adder5/Madd_n00064_1154 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>13_1155 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_12  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>12 ),
    .DI(\MULSecondStage/Adder5/Madd_n00064_1154 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>13_1155 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>13 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_12  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>12 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>13_1155 ),
    .O(Result2[13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00065  (
    .I0(\Result21Reg/Q [13]),
    .I1(\Result22Reg/Q [5]),
    .O(\MULSecondStage/Adder5/Madd_n00065_1157 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>14  (
    .I0(\Result21Reg/Q [14]),
    .I1(\Result22Reg/Q [6]),
    .I2(\MULSecondStage/Adder5/Madd_n00065_1157 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>14_1158 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_13  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>13 ),
    .DI(\MULSecondStage/Adder5/Madd_n00065_1157 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>14_1158 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>14 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_13  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>13 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>14_1158 ),
    .O(Result2[14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00066  (
    .I0(\Result21Reg/Q [14]),
    .I1(\Result22Reg/Q [6]),
    .O(\MULSecondStage/Adder5/Madd_n00066_1160 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>15  (
    .I0(\Result21Reg/Q [15]),
    .I1(\Result22Reg/Q [7]),
    .I2(\MULSecondStage/Adder5/Madd_n00066_1160 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>15_1161 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_14  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>14 ),
    .DI(\MULSecondStage/Adder5/Madd_n00066_1160 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>15_1161 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>15 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_14  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>14 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>15_1161 ),
    .O(Result2[15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00067  (
    .I0(\Result21Reg/Q [15]),
    .I1(\Result22Reg/Q [7]),
    .O(\MULSecondStage/Adder5/Madd_n00067_1163 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>16  (
    .I0(\Result22Reg/Q [8]),
    .I1(\Result23Reg/Q [0]),
    .I2(\MULSecondStage/Adder5/Madd_n00067_1163 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>16_1164 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_15  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>15 ),
    .DI(\MULSecondStage/Adder5/Madd_n00067_1163 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>16_1164 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>16 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_15  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>15 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>16_1164 ),
    .O(Result2[16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00068  (
    .I0(\Result22Reg/Q [8]),
    .I1(\Result23Reg/Q [0]),
    .O(\MULSecondStage/Adder5/Madd_n00068_1166 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>17  (
    .I0(\Result22Reg/Q [9]),
    .I1(\Result23Reg/Q [1]),
    .I2(\MULSecondStage/Adder5/Madd_n00068_1166 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>17_1167 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_16  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>16 ),
    .DI(\MULSecondStage/Adder5/Madd_n00068_1166 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>17_1167 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>17 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_16  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>16 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>17_1167 ),
    .O(Result2[17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n00069  (
    .I0(\Result22Reg/Q [9]),
    .I1(\Result23Reg/Q [1]),
    .O(\MULSecondStage/Adder5/Madd_n00069_1169 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>18  (
    .I0(\Result22Reg/Q [10]),
    .I1(\Result23Reg/Q [2]),
    .I2(\MULSecondStage/Adder5/Madd_n00069_1169 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>18_1170 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_17  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>17 ),
    .DI(\MULSecondStage/Adder5/Madd_n00069_1169 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>18_1170 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>18 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_17  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>17 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>18_1170 ),
    .O(Result2[18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000610  (
    .I0(\Result22Reg/Q [10]),
    .I1(\Result23Reg/Q [2]),
    .O(\MULSecondStage/Adder5/Madd_n000610_1172 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>19  (
    .I0(\Result22Reg/Q [11]),
    .I1(\Result23Reg/Q [3]),
    .I2(\MULSecondStage/Adder5/Madd_n000610_1172 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>19_1173 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_18  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>18 ),
    .DI(\MULSecondStage/Adder5/Madd_n000610_1172 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>19_1173 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>19 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_18  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>18 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>19_1173 ),
    .O(Result2[19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000611  (
    .I0(\Result22Reg/Q [11]),
    .I1(\Result23Reg/Q [3]),
    .O(\MULSecondStage/Adder5/Madd_n000611_1175 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>20  (
    .I0(\Result22Reg/Q [12]),
    .I1(\Result23Reg/Q [4]),
    .I2(\MULSecondStage/Adder5/Madd_n000611_1175 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>20_1176 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_19  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>19 ),
    .DI(\MULSecondStage/Adder5/Madd_n000611_1175 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>20_1176 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>20 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_19  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>19 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>20_1176 ),
    .O(Result2[20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000612  (
    .I0(\Result22Reg/Q [12]),
    .I1(\Result23Reg/Q [4]),
    .O(\MULSecondStage/Adder5/Madd_n000612_1178 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>21  (
    .I0(\Result22Reg/Q [13]),
    .I1(\Result23Reg/Q [5]),
    .I2(\MULSecondStage/Adder5/Madd_n000612_1178 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>21_1179 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_20  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>20 ),
    .DI(\MULSecondStage/Adder5/Madd_n000612_1178 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>21_1179 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>21 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_20  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>20 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>21_1179 ),
    .O(Result2[21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000613  (
    .I0(\Result22Reg/Q [13]),
    .I1(\Result23Reg/Q [5]),
    .O(\MULSecondStage/Adder5/Madd_n000613_1181 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>22  (
    .I0(\Result22Reg/Q [14]),
    .I1(\Result23Reg/Q [6]),
    .I2(\MULSecondStage/Adder5/Madd_n000613_1181 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>22_1182 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_21  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>21 ),
    .DI(\MULSecondStage/Adder5/Madd_n000613_1181 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>22_1182 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>22 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_21  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>21 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>22_1182 ),
    .O(Result2[22])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000614  (
    .I0(\Result22Reg/Q [14]),
    .I1(\Result23Reg/Q [6]),
    .O(\MULSecondStage/Adder5/Madd_n000614_1184 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>23  (
    .I0(\Result22Reg/Q [15]),
    .I1(\Result23Reg/Q [7]),
    .I2(\MULSecondStage/Adder5/Madd_n000614_1184 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>23_1185 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_22  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>22 ),
    .DI(\MULSecondStage/Adder5/Madd_n000614_1184 ),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>23_1185 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>23 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_22  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>22 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>23_1185 ),
    .O(Result2[23])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder5/Madd_n000615  (
    .I0(\Result22Reg/Q [15]),
    .I1(\Result23Reg/Q [7]),
    .O(\MULSecondStage/Adder5/Madd_n000615_1187 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \MULSecondStage/Adder5/Madd_n0006_lut<0>24  (
    .I0(\MULSecondStage/Adder5/Madd_n000615_1187 ),
    .I1(\Result23Reg/Q [8]),
    .O(\MULSecondStage/Adder5/Madd_n0006_lut<0>24_1188 )
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_23  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>23 ),
    .DI(\Result23Reg/Q [8]),
    .S(\MULSecondStage/Adder5/Madd_n0006_lut<0>24_1188 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>24 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_23  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>23 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_lut<0>24_1188 ),
    .O(Result2[24])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_24  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>24 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_24_rt_3076 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>25 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_24  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>24 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_24_rt_3076 ),
    .O(Result2[25])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_25  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>25 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_25_rt_3077 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>26 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_25  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>25 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_25_rt_3077 ),
    .O(Result2[26])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_26  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>26 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_26_rt_3078 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>27 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_26  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>26 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_26_rt_3078 ),
    .O(Result2[27])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_27  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>27 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_27_rt_3079 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>28 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_27  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>27 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_27_rt_3079 ),
    .O(Result2[28])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_28  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>28 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_28_rt_3080 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>29 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_28  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>28 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_28_rt_3080 ),
    .O(Result2[29])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_29  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>29 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_29_rt_3081 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>30 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_29  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>29 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_29_rt_3081 ),
    .O(Result2[30])
  );
  MUXCY   \MULSecondStage/Adder5/Madd_n0006_cy<0>_30  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>30 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder5/Madd_n0006_cy<0>_30_rt_3082 ),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>31 )
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_30  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>30 ),
    .LI(\MULSecondStage/Adder5/Madd_n0006_cy<0>_30_rt_3082 ),
    .O(Result2[31])
  );
  XORCY   \MULSecondStage/Adder5/Madd_n0006_xor<0>_31  (
    .CI(\MULSecondStage/Adder5/Madd_n0006_cy<0>31 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(Result2[32])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_rt_3083 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy [0])
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_rt_3083 ),
    .O(Result3[0])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_0  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy [0]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_0_rt_3084 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>1 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_0  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy [0]),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_0_rt_3084 ),
    .O(Result3[1])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_1  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>1 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_1_rt_3085 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>2 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_1  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>1 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_1_rt_3085 ),
    .O(Result3[2])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_2  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>2 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_2_rt_3086 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>3 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_2  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>2 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_2_rt_3086 ),
    .O(Result3[3])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_3  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>3 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_3_rt_3087 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>4 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_3  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>3 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_3_rt_3087 ),
    .O(Result3[4])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_4  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>4 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_4_rt_3088 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>5 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_4  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>4 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_4_rt_3088 ),
    .O(Result3[5])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_5  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>5 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_5_rt_3089 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>6 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_5  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>5 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_5_rt_3089 ),
    .O(Result3[6])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_6  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>6 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_6_rt_3090 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>7 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_6  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>6 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_6_rt_3090 ),
    .O(Result3[7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>8  (
    .I0(\Result31Reg/Q [8]),
    .I1(\Result32Reg/Q [0]),
    .I2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>8_1220 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_7  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>7 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>8_1220 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>8 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_7  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>7 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>8_1220 ),
    .O(Result3[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n0006  (
    .I0(\Result31Reg/Q [8]),
    .I1(\Result32Reg/Q [0]),
    .O(\MULSecondStage/Adder6/Madd_n0006_1222 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>9  (
    .I0(\Result31Reg/Q [9]),
    .I1(\Result32Reg/Q [1]),
    .I2(\MULSecondStage/Adder6/Madd_n0006_1222 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>9_1223 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_8  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>8 ),
    .DI(\MULSecondStage/Adder6/Madd_n0006_1222 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>9_1223 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>9 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_8  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>8 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>9_1223 ),
    .O(Result3[9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00061  (
    .I0(\Result31Reg/Q [9]),
    .I1(\Result32Reg/Q [1]),
    .O(\MULSecondStage/Adder6/Madd_n00061_1225 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>10  (
    .I0(\Result31Reg/Q [10]),
    .I1(\Result32Reg/Q [2]),
    .I2(\MULSecondStage/Adder6/Madd_n00061_1225 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>10_1226 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_9  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>9 ),
    .DI(\MULSecondStage/Adder6/Madd_n00061_1225 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>10_1226 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>10 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_9  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>9 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>10_1226 ),
    .O(Result3[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00062  (
    .I0(\Result31Reg/Q [10]),
    .I1(\Result32Reg/Q [2]),
    .O(\MULSecondStage/Adder6/Madd_n00062_1228 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>11  (
    .I0(\Result31Reg/Q [11]),
    .I1(\Result32Reg/Q [3]),
    .I2(\MULSecondStage/Adder6/Madd_n00062_1228 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>11_1229 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_10  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>10 ),
    .DI(\MULSecondStage/Adder6/Madd_n00062_1228 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>11_1229 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>11 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_10  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>10 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>11_1229 ),
    .O(Result3[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00063  (
    .I0(\Result31Reg/Q [11]),
    .I1(\Result32Reg/Q [3]),
    .O(\MULSecondStage/Adder6/Madd_n00063_1231 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>12  (
    .I0(\Result31Reg/Q [12]),
    .I1(\Result32Reg/Q [4]),
    .I2(\MULSecondStage/Adder6/Madd_n00063_1231 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>12_1232 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_11  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>11 ),
    .DI(\MULSecondStage/Adder6/Madd_n00063_1231 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>12_1232 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>12 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_11  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>11 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>12_1232 ),
    .O(Result3[12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00064  (
    .I0(\Result31Reg/Q [12]),
    .I1(\Result32Reg/Q [4]),
    .O(\MULSecondStage/Adder6/Madd_n00064_1234 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>13  (
    .I0(\Result31Reg/Q [13]),
    .I1(\Result32Reg/Q [5]),
    .I2(\MULSecondStage/Adder6/Madd_n00064_1234 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>13_1235 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_12  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>12 ),
    .DI(\MULSecondStage/Adder6/Madd_n00064_1234 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>13_1235 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>13 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_12  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>12 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>13_1235 ),
    .O(Result3[13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00065  (
    .I0(\Result31Reg/Q [13]),
    .I1(\Result32Reg/Q [5]),
    .O(\MULSecondStage/Adder6/Madd_n00065_1237 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>14  (
    .I0(\Result31Reg/Q [14]),
    .I1(\Result32Reg/Q [6]),
    .I2(\MULSecondStage/Adder6/Madd_n00065_1237 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>14_1238 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_13  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>13 ),
    .DI(\MULSecondStage/Adder6/Madd_n00065_1237 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>14_1238 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>14 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_13  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>13 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>14_1238 ),
    .O(Result3[14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00066  (
    .I0(\Result31Reg/Q [14]),
    .I1(\Result32Reg/Q [6]),
    .O(\MULSecondStage/Adder6/Madd_n00066_1240 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>15  (
    .I0(\Result31Reg/Q [15]),
    .I1(\Result32Reg/Q [7]),
    .I2(\MULSecondStage/Adder6/Madd_n00066_1240 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>15_1241 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_14  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>14 ),
    .DI(\MULSecondStage/Adder6/Madd_n00066_1240 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>15_1241 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>15 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_14  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>14 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>15_1241 ),
    .O(Result3[15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00067  (
    .I0(\Result31Reg/Q [15]),
    .I1(\Result32Reg/Q [7]),
    .O(\MULSecondStage/Adder6/Madd_n00067_1243 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>16  (
    .I0(\Result32Reg/Q [8]),
    .I1(\Result33Reg/Q [0]),
    .I2(\MULSecondStage/Adder6/Madd_n00067_1243 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>16_1244 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_15  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>15 ),
    .DI(\MULSecondStage/Adder6/Madd_n00067_1243 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>16_1244 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>16 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_15  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>15 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>16_1244 ),
    .O(Result3[16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00068  (
    .I0(\Result32Reg/Q [8]),
    .I1(\Result33Reg/Q [0]),
    .O(\MULSecondStage/Adder6/Madd_n00068_1246 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>17  (
    .I0(\Result32Reg/Q [9]),
    .I1(\Result33Reg/Q [1]),
    .I2(\MULSecondStage/Adder6/Madd_n00068_1246 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>17_1247 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_16  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>16 ),
    .DI(\MULSecondStage/Adder6/Madd_n00068_1246 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>17_1247 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>17 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_16  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>16 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>17_1247 ),
    .O(Result3[17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n00069  (
    .I0(\Result32Reg/Q [9]),
    .I1(\Result33Reg/Q [1]),
    .O(\MULSecondStage/Adder6/Madd_n00069_1249 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>18  (
    .I0(\Result32Reg/Q [10]),
    .I1(\Result33Reg/Q [2]),
    .I2(\MULSecondStage/Adder6/Madd_n00069_1249 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>18_1250 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_17  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>17 ),
    .DI(\MULSecondStage/Adder6/Madd_n00069_1249 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>18_1250 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>18 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_17  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>17 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>18_1250 ),
    .O(Result3[18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000610  (
    .I0(\Result32Reg/Q [10]),
    .I1(\Result33Reg/Q [2]),
    .O(\MULSecondStage/Adder6/Madd_n000610_1252 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>19  (
    .I0(\Result32Reg/Q [11]),
    .I1(\Result33Reg/Q [3]),
    .I2(\MULSecondStage/Adder6/Madd_n000610_1252 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>19_1253 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_18  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>18 ),
    .DI(\MULSecondStage/Adder6/Madd_n000610_1252 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>19_1253 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>19 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_18  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>18 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>19_1253 ),
    .O(Result3[19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000611  (
    .I0(\Result32Reg/Q [11]),
    .I1(\Result33Reg/Q [3]),
    .O(\MULSecondStage/Adder6/Madd_n000611_1255 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>20  (
    .I0(\Result32Reg/Q [12]),
    .I1(\Result33Reg/Q [4]),
    .I2(\MULSecondStage/Adder6/Madd_n000611_1255 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>20_1256 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_19  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>19 ),
    .DI(\MULSecondStage/Adder6/Madd_n000611_1255 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>20_1256 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>20 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_19  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>19 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>20_1256 ),
    .O(Result3[20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000612  (
    .I0(\Result32Reg/Q [12]),
    .I1(\Result33Reg/Q [4]),
    .O(\MULSecondStage/Adder6/Madd_n000612_1258 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>21  (
    .I0(\Result32Reg/Q [13]),
    .I1(\Result33Reg/Q [5]),
    .I2(\MULSecondStage/Adder6/Madd_n000612_1258 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>21_1259 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_20  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>20 ),
    .DI(\MULSecondStage/Adder6/Madd_n000612_1258 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>21_1259 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>21 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_20  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>20 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>21_1259 ),
    .O(Result3[21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000613  (
    .I0(\Result32Reg/Q [13]),
    .I1(\Result33Reg/Q [5]),
    .O(\MULSecondStage/Adder6/Madd_n000613_1261 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>22  (
    .I0(\Result32Reg/Q [14]),
    .I1(\Result33Reg/Q [6]),
    .I2(\MULSecondStage/Adder6/Madd_n000613_1261 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>22_1262 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_21  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>21 ),
    .DI(\MULSecondStage/Adder6/Madd_n000613_1261 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>22_1262 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>22 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_21  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>21 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>22_1262 ),
    .O(Result3[22])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000614  (
    .I0(\Result32Reg/Q [14]),
    .I1(\Result33Reg/Q [6]),
    .O(\MULSecondStage/Adder6/Madd_n000614_1264 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>23  (
    .I0(\Result32Reg/Q [15]),
    .I1(\Result33Reg/Q [7]),
    .I2(\MULSecondStage/Adder6/Madd_n000614_1264 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>23_1265 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_22  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>22 ),
    .DI(\MULSecondStage/Adder6/Madd_n000614_1264 ),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>23_1265 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>23 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_22  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>22 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>23_1265 ),
    .O(Result3[23])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder6/Madd_n000615  (
    .I0(\Result32Reg/Q [15]),
    .I1(\Result33Reg/Q [7]),
    .O(\MULSecondStage/Adder6/Madd_n000615_1267 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \MULSecondStage/Adder6/Madd_n0006_lut<0>24  (
    .I0(\MULSecondStage/Adder6/Madd_n000615_1267 ),
    .I1(\Result33Reg/Q [8]),
    .O(\MULSecondStage/Adder6/Madd_n0006_lut<0>24_1268 )
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_23  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>23 ),
    .DI(\Result33Reg/Q [8]),
    .S(\MULSecondStage/Adder6/Madd_n0006_lut<0>24_1268 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>24 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_23  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>23 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_lut<0>24_1268 ),
    .O(Result3[24])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_24  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>24 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_24_rt_3091 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>25 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_24  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>24 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_24_rt_3091 ),
    .O(Result3[25])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_25  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>25 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_25_rt_3092 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>26 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_25  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>25 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_25_rt_3092 ),
    .O(Result3[26])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_26  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>26 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_26_rt_3093 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>27 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_26  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>26 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_26_rt_3093 ),
    .O(Result3[27])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_27  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>27 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_27_rt_3094 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>28 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_27  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>27 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_27_rt_3094 ),
    .O(Result3[28])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_28  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>28 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_28_rt_3095 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>29 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_28  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>28 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_28_rt_3095 ),
    .O(Result3[29])
  );
  MUXCY   \MULSecondStage/Adder6/Madd_n0006_cy<0>_29  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>29 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder6/Madd_n0006_cy<0>_29_rt_3096 ),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>30 )
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_29  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>29 ),
    .LI(\MULSecondStage/Adder6/Madd_n0006_cy<0>_29_rt_3096 ),
    .O(Result3[30])
  );
  XORCY   \MULSecondStage/Adder6/Madd_n0006_xor<0>_30  (
    .CI(\MULSecondStage/Adder6/Madd_n0006_cy<0>30 ),
    .LI(\Result33Reg/Q [15]),
    .O(Result3[31])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_rt_3097 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy [0])
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_rt_3097 ),
    .O(Result1[0])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_0  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy [0]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_0_rt_3098 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>1 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_0  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy [0]),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_0_rt_3098 ),
    .O(Result1[1])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_1  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>1 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_1_rt_3099 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>2 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_1  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>1 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_1_rt_3099 ),
    .O(Result1[2])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_2  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>2 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_2_rt_3100 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>3 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_2  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>2 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_2_rt_3100 ),
    .O(Result1[3])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_3  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>3 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_3_rt_3101 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>4 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_3  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>3 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_3_rt_3101 ),
    .O(Result1[4])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_4  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>4 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_4_rt_3102 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>5 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_4  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>4 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_4_rt_3102 ),
    .O(Result1[5])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_5  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>5 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_5_rt_3103 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>6 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_5  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>5 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_5_rt_3103 ),
    .O(Result1[6])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_6  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>6 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_6_rt_3104 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>7 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_6  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>6 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_6_rt_3104 ),
    .O(Result1[7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>8  (
    .I0(\Result11Reg/Q [8]),
    .I1(\Result12Reg/Q [0]),
    .I2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>8_1299 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_7  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>7 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>8_1299 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>8 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_7  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>7 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>8_1299 ),
    .O(Result1[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n0006  (
    .I0(\Result11Reg/Q [8]),
    .I1(\Result12Reg/Q [0]),
    .O(\MULSecondStage/Adder4/Madd_n0006_1301 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>9  (
    .I0(\Result11Reg/Q [9]),
    .I1(\Result12Reg/Q [1]),
    .I2(\MULSecondStage/Adder4/Madd_n0006_1301 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>9_1302 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_8  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>8 ),
    .DI(\MULSecondStage/Adder4/Madd_n0006_1301 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>9_1302 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>9 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_8  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>8 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>9_1302 ),
    .O(Result1[9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00061  (
    .I0(\Result11Reg/Q [9]),
    .I1(\Result12Reg/Q [1]),
    .O(\MULSecondStage/Adder4/Madd_n00061_1304 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>10  (
    .I0(\Result11Reg/Q [10]),
    .I1(\Result12Reg/Q [2]),
    .I2(\MULSecondStage/Adder4/Madd_n00061_1304 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>10_1305 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_9  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>9 ),
    .DI(\MULSecondStage/Adder4/Madd_n00061_1304 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>10_1305 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>10 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_9  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>9 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>10_1305 ),
    .O(Result1[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00062  (
    .I0(\Result11Reg/Q [10]),
    .I1(\Result12Reg/Q [2]),
    .O(\MULSecondStage/Adder4/Madd_n00062_1307 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>11  (
    .I0(\Result11Reg/Q [11]),
    .I1(\Result12Reg/Q [3]),
    .I2(\MULSecondStage/Adder4/Madd_n00062_1307 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>11_1308 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_10  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>10 ),
    .DI(\MULSecondStage/Adder4/Madd_n00062_1307 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>11_1308 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>11 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_10  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>10 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>11_1308 ),
    .O(Result1[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00063  (
    .I0(\Result11Reg/Q [11]),
    .I1(\Result12Reg/Q [3]),
    .O(\MULSecondStage/Adder4/Madd_n00063_1310 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>12  (
    .I0(\Result11Reg/Q [12]),
    .I1(\Result12Reg/Q [4]),
    .I2(\MULSecondStage/Adder4/Madd_n00063_1310 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>12_1311 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_11  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>11 ),
    .DI(\MULSecondStage/Adder4/Madd_n00063_1310 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>12_1311 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>12 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_11  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>11 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>12_1311 ),
    .O(Result1[12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00064  (
    .I0(\Result11Reg/Q [12]),
    .I1(\Result12Reg/Q [4]),
    .O(\MULSecondStage/Adder4/Madd_n00064_1313 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>13  (
    .I0(\Result11Reg/Q [13]),
    .I1(\Result12Reg/Q [5]),
    .I2(\MULSecondStage/Adder4/Madd_n00064_1313 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>13_1314 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_12  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>12 ),
    .DI(\MULSecondStage/Adder4/Madd_n00064_1313 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>13_1314 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>13 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_12  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>12 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>13_1314 ),
    .O(Result1[13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00065  (
    .I0(\Result11Reg/Q [13]),
    .I1(\Result12Reg/Q [5]),
    .O(\MULSecondStage/Adder4/Madd_n00065_1316 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>14  (
    .I0(\Result11Reg/Q [14]),
    .I1(\Result12Reg/Q [6]),
    .I2(\MULSecondStage/Adder4/Madd_n00065_1316 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>14_1317 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_13  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>13 ),
    .DI(\MULSecondStage/Adder4/Madd_n00065_1316 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>14_1317 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>14 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_13  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>13 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>14_1317 ),
    .O(Result1[14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00066  (
    .I0(\Result11Reg/Q [14]),
    .I1(\Result12Reg/Q [6]),
    .O(\MULSecondStage/Adder4/Madd_n00066_1319 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>15  (
    .I0(\Result11Reg/Q [15]),
    .I1(\Result12Reg/Q [7]),
    .I2(\MULSecondStage/Adder4/Madd_n00066_1319 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>15_1320 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_14  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>14 ),
    .DI(\MULSecondStage/Adder4/Madd_n00066_1319 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>15_1320 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>15 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_14  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>14 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>15_1320 ),
    .O(Result1[15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00067  (
    .I0(\Result11Reg/Q [15]),
    .I1(\Result12Reg/Q [7]),
    .O(\MULSecondStage/Adder4/Madd_n00067_1322 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>16  (
    .I0(\Result12Reg/Q [8]),
    .I1(\Result13Reg/Q [0]),
    .I2(\MULSecondStage/Adder4/Madd_n00067_1322 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>16_1323 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_15  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>15 ),
    .DI(\MULSecondStage/Adder4/Madd_n00067_1322 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>16_1323 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>16 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_15  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>15 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>16_1323 ),
    .O(Result1[16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00068  (
    .I0(\Result12Reg/Q [8]),
    .I1(\Result13Reg/Q [0]),
    .O(\MULSecondStage/Adder4/Madd_n00068_1325 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>17  (
    .I0(\Result12Reg/Q [9]),
    .I1(\Result13Reg/Q [1]),
    .I2(\MULSecondStage/Adder4/Madd_n00068_1325 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>17_1326 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_16  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>16 ),
    .DI(\MULSecondStage/Adder4/Madd_n00068_1325 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>17_1326 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>17 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_16  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>16 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>17_1326 ),
    .O(Result1[17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n00069  (
    .I0(\Result12Reg/Q [9]),
    .I1(\Result13Reg/Q [1]),
    .O(\MULSecondStage/Adder4/Madd_n00069_1328 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>18  (
    .I0(\Result12Reg/Q [10]),
    .I1(\Result13Reg/Q [2]),
    .I2(\MULSecondStage/Adder4/Madd_n00069_1328 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>18_1329 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_17  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>17 ),
    .DI(\MULSecondStage/Adder4/Madd_n00069_1328 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>18_1329 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>18 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_17  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>17 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>18_1329 ),
    .O(Result1[18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000610  (
    .I0(\Result12Reg/Q [10]),
    .I1(\Result13Reg/Q [2]),
    .O(\MULSecondStage/Adder4/Madd_n000610_1331 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>19  (
    .I0(\Result12Reg/Q [11]),
    .I1(\Result13Reg/Q [3]),
    .I2(\MULSecondStage/Adder4/Madd_n000610_1331 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>19_1332 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_18  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>18 ),
    .DI(\MULSecondStage/Adder4/Madd_n000610_1331 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>19_1332 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>19 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_18  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>18 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>19_1332 ),
    .O(Result1[19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000611  (
    .I0(\Result12Reg/Q [11]),
    .I1(\Result13Reg/Q [3]),
    .O(\MULSecondStage/Adder4/Madd_n000611_1334 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>20  (
    .I0(\Result12Reg/Q [12]),
    .I1(\Result13Reg/Q [4]),
    .I2(\MULSecondStage/Adder4/Madd_n000611_1334 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>20_1335 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_19  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>19 ),
    .DI(\MULSecondStage/Adder4/Madd_n000611_1334 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>20_1335 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>20 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_19  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>19 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>20_1335 ),
    .O(Result1[20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000612  (
    .I0(\Result12Reg/Q [12]),
    .I1(\Result13Reg/Q [4]),
    .O(\MULSecondStage/Adder4/Madd_n000612_1337 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>21  (
    .I0(\Result12Reg/Q [13]),
    .I1(\Result13Reg/Q [5]),
    .I2(\MULSecondStage/Adder4/Madd_n000612_1337 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>21_1338 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_20  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>20 ),
    .DI(\MULSecondStage/Adder4/Madd_n000612_1337 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>21_1338 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>21 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_20  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>20 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>21_1338 ),
    .O(Result1[21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000613  (
    .I0(\Result12Reg/Q [13]),
    .I1(\Result13Reg/Q [5]),
    .O(\MULSecondStage/Adder4/Madd_n000613_1340 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>22  (
    .I0(\Result12Reg/Q [14]),
    .I1(\Result13Reg/Q [6]),
    .I2(\MULSecondStage/Adder4/Madd_n000613_1340 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>22_1341 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_21  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>21 ),
    .DI(\MULSecondStage/Adder4/Madd_n000613_1340 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>22_1341 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>22 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_21  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>21 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>22_1341 ),
    .O(Result1[22])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000614  (
    .I0(\Result12Reg/Q [14]),
    .I1(\Result13Reg/Q [6]),
    .O(\MULSecondStage/Adder4/Madd_n000614_1343 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>23  (
    .I0(\Result12Reg/Q [15]),
    .I1(\Result13Reg/Q [7]),
    .I2(\MULSecondStage/Adder4/Madd_n000614_1343 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>23_1344 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_22  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>22 ),
    .DI(\MULSecondStage/Adder4/Madd_n000614_1343 ),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>23_1344 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>23 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_22  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>22 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>23_1344 ),
    .O(Result1[23])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULSecondStage/Adder4/Madd_n000615  (
    .I0(\Result12Reg/Q [15]),
    .I1(\Result13Reg/Q [7]),
    .O(\MULSecondStage/Adder4/Madd_n000615_1346 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \MULSecondStage/Adder4/Madd_n0006_lut<0>24  (
    .I0(\MULSecondStage/Adder4/Madd_n000615_1346 ),
    .I1(\Result13Reg/Q [8]),
    .O(\MULSecondStage/Adder4/Madd_n0006_lut<0>24_1347 )
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_23  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>23 ),
    .DI(\Result13Reg/Q [8]),
    .S(\MULSecondStage/Adder4/Madd_n0006_lut<0>24_1347 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>24 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_23  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>23 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_lut<0>24_1347 ),
    .O(Result1[24])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_24  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>24 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_24_rt_3105 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>25 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_24  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>24 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_24_rt_3105 ),
    .O(Result1[25])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_25  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>25 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_25_rt_3106 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>26 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_25  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>25 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_25_rt_3106 ),
    .O(Result1[26])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_26  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>26 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_26_rt_3107 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>27 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_26  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>26 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_26_rt_3107 ),
    .O(Result1[27])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_27  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>27 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_27_rt_3108 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>28 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_27  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>27 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_27_rt_3108 ),
    .O(Result1[28])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_28  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>28 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_28_rt_3109 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>29 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_28  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>28 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_28_rt_3109 ),
    .O(Result1[29])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_29  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>29 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_29_rt_3110 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>30 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_29  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>29 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_29_rt_3110 ),
    .O(Result1[30])
  );
  MUXCY   \MULSecondStage/Adder4/Madd_n0006_cy<0>_30  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>30 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULSecondStage/Adder4/Madd_n0006_cy<0>_30_rt_3111 ),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>31 )
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_30  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>30 ),
    .LI(\MULSecondStage/Adder4/Madd_n0006_cy<0>_30_rt_3111 ),
    .O(Result1[31])
  );
  XORCY   \MULSecondStage/Adder4/Madd_n0006_xor<0>_31  (
    .CI(\MULSecondStage/Adder4/Madd_n0006_cy<0>31 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(Result1[32])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_rt_3112 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy [0])
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_rt_3112 ),
    .O(MULResult[0])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_0  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy [0]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_0_rt_3113 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>1 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_0  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy [0]),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_0_rt_3113 ),
    .O(MULResult[1])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_1  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>1 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_1_rt_3114 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>2 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_1  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>1 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_1_rt_3114 ),
    .O(MULResult[2])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_2  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>2 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_2_rt_3115 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>3 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_2  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>2 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_2_rt_3115 ),
    .O(MULResult[3])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_3  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>3 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_3_rt_3116 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>4 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_3  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>3 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_3_rt_3116 ),
    .O(MULResult[4])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_4  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>4 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_4_rt_3117 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>5 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_4  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>4 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_4_rt_3117 ),
    .O(MULResult[5])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_5  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>5 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_5_rt_3118 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>6 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_5  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>5 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_5_rt_3118 ),
    .O(MULResult[6])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_6  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>6 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_6_rt_3119 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>7 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_6  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>6 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_6_rt_3119 ),
    .O(MULResult[7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>8  (
    .I0(\Result1Reg/Q [8]),
    .I1(\Result2Reg/Q [0]),
    .I2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>8_1379 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_7  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>7 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>8_1379 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>8 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_7  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>7 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>8_1379 ),
    .O(MULResult[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n0006  (
    .I0(\Result1Reg/Q [8]),
    .I1(\Result2Reg/Q [0]),
    .O(\MULThirdStage/Adder2/Madd_n0006_1381 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>9  (
    .I0(\Result1Reg/Q [9]),
    .I1(\Result2Reg/Q [1]),
    .I2(\MULThirdStage/Adder2/Madd_n0006_1381 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>9_1382 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_8  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>8 ),
    .DI(\MULThirdStage/Adder2/Madd_n0006_1381 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>9_1382 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>9 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_8  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>8 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>9_1382 ),
    .O(MULResult[9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00061  (
    .I0(\Result1Reg/Q [9]),
    .I1(\Result2Reg/Q [1]),
    .O(\MULThirdStage/Adder2/Madd_n00061_1384 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>10  (
    .I0(\Result1Reg/Q [10]),
    .I1(\Result2Reg/Q [2]),
    .I2(\MULThirdStage/Adder2/Madd_n00061_1384 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>10_1385 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_9  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>9 ),
    .DI(\MULThirdStage/Adder2/Madd_n00061_1384 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>10_1385 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>10 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_9  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>9 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>10_1385 ),
    .O(MULResult[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00062  (
    .I0(\Result1Reg/Q [10]),
    .I1(\Result2Reg/Q [2]),
    .O(\MULThirdStage/Adder2/Madd_n00062_1387 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>11  (
    .I0(\Result1Reg/Q [11]),
    .I1(\Result2Reg/Q [3]),
    .I2(\MULThirdStage/Adder2/Madd_n00062_1387 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>11_1388 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_10  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>10 ),
    .DI(\MULThirdStage/Adder2/Madd_n00062_1387 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>11_1388 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>11 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_10  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>10 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>11_1388 ),
    .O(MULResult[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00063  (
    .I0(\Result1Reg/Q [11]),
    .I1(\Result2Reg/Q [3]),
    .O(\MULThirdStage/Adder2/Madd_n00063_1390 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>12  (
    .I0(\Result1Reg/Q [12]),
    .I1(\Result2Reg/Q [4]),
    .I2(\MULThirdStage/Adder2/Madd_n00063_1390 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>12_1391 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_11  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>11 ),
    .DI(\MULThirdStage/Adder2/Madd_n00063_1390 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>12_1391 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>12 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_11  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>11 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>12_1391 ),
    .O(MULResult[12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00064  (
    .I0(\Result1Reg/Q [12]),
    .I1(\Result2Reg/Q [4]),
    .O(\MULThirdStage/Adder2/Madd_n00064_1393 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>13  (
    .I0(\Result1Reg/Q [13]),
    .I1(\Result2Reg/Q [5]),
    .I2(\MULThirdStage/Adder2/Madd_n00064_1393 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>13_1394 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_12  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>12 ),
    .DI(\MULThirdStage/Adder2/Madd_n00064_1393 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>13_1394 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>13 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_12  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>12 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>13_1394 ),
    .O(MULResult[13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00065  (
    .I0(\Result1Reg/Q [13]),
    .I1(\Result2Reg/Q [5]),
    .O(\MULThirdStage/Adder2/Madd_n00065_1396 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>14  (
    .I0(\Result1Reg/Q [14]),
    .I1(\Result2Reg/Q [6]),
    .I2(\MULThirdStage/Adder2/Madd_n00065_1396 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>14_1397 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_13  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>13 ),
    .DI(\MULThirdStage/Adder2/Madd_n00065_1396 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>14_1397 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>14 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_13  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>13 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>14_1397 ),
    .O(MULResult[14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00066  (
    .I0(\Result1Reg/Q [14]),
    .I1(\Result2Reg/Q [6]),
    .O(\MULThirdStage/Adder2/Madd_n00066_1399 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>15  (
    .I0(\Result1Reg/Q [15]),
    .I1(\Result2Reg/Q [7]),
    .I2(\MULThirdStage/Adder2/Madd_n00066_1399 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>15_1400 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_14  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>14 ),
    .DI(\MULThirdStage/Adder2/Madd_n00066_1399 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>15_1400 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>15 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_14  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>14 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>15_1400 ),
    .O(MULResult[15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n00067  (
    .I0(\Result1Reg/Q [15]),
    .I1(\Result2Reg/Q [7]),
    .O(\MULThirdStage/Adder2/Madd_n00067_1402 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>16  (
    .I0(\Result1Reg/Q [16]),
    .I1(\Result2Reg/Q [8]),
    .I2(\Result3Reg/Q [0]),
    .I3(\MULThirdStage/Adder2/Madd_n00067_1402 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>16_1403 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_15  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>15 ),
    .DI(\MULThirdStage/Adder2/Madd_n00067_1402 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>16_1403 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>16 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_15  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>15 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>16_1403 ),
    .O(MULResult[16])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n00068  (
    .I0(\Result1Reg/Q [16]),
    .I1(\Result2Reg/Q [8]),
    .I2(\Result3Reg/Q [0]),
    .O(\MULThirdStage/Adder2/Madd_n00068_1405 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>17  (
    .I0(\Result1Reg/Q [17]),
    .I1(\Result2Reg/Q [9]),
    .I2(\Result3Reg/Q [1]),
    .I3(\MULThirdStage/Adder2/Madd_n00068_1405 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>17_1406 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_16  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>16 ),
    .DI(\MULThirdStage/Adder2/Madd_n00068_1405 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>17_1406 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>17 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_16  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>16 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>17_1406 ),
    .O(MULResult[17])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n00069  (
    .I0(\Result1Reg/Q [17]),
    .I1(\Result2Reg/Q [9]),
    .I2(\Result3Reg/Q [1]),
    .O(\MULThirdStage/Adder2/Madd_n00069_1408 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>18  (
    .I0(\Result1Reg/Q [18]),
    .I1(\Result2Reg/Q [10]),
    .I2(\Result3Reg/Q [2]),
    .I3(\MULThirdStage/Adder2/Madd_n00069_1408 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>18_1409 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_17  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>17 ),
    .DI(\MULThirdStage/Adder2/Madd_n00069_1408 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>18_1409 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>18 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_17  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>17 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>18_1409 ),
    .O(MULResult[18])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000610  (
    .I0(\Result1Reg/Q [18]),
    .I1(\Result2Reg/Q [10]),
    .I2(\Result3Reg/Q [2]),
    .O(\MULThirdStage/Adder2/Madd_n000610_1411 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>19  (
    .I0(\Result1Reg/Q [19]),
    .I1(\Result2Reg/Q [11]),
    .I2(\Result3Reg/Q [3]),
    .I3(\MULThirdStage/Adder2/Madd_n000610_1411 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>19_1412 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_18  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>18 ),
    .DI(\MULThirdStage/Adder2/Madd_n000610_1411 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>19_1412 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>19 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_18  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>18 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>19_1412 ),
    .O(MULResult[19])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000611  (
    .I0(\Result1Reg/Q [19]),
    .I1(\Result2Reg/Q [11]),
    .I2(\Result3Reg/Q [3]),
    .O(\MULThirdStage/Adder2/Madd_n000611_1414 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>20  (
    .I0(\Result1Reg/Q [20]),
    .I1(\Result2Reg/Q [12]),
    .I2(\Result3Reg/Q [4]),
    .I3(\MULThirdStage/Adder2/Madd_n000611_1414 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>20_1415 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_19  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>19 ),
    .DI(\MULThirdStage/Adder2/Madd_n000611_1414 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>20_1415 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>20 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_19  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>19 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>20_1415 ),
    .O(MULResult[20])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000612  (
    .I0(\Result1Reg/Q [20]),
    .I1(\Result2Reg/Q [12]),
    .I2(\Result3Reg/Q [4]),
    .O(\MULThirdStage/Adder2/Madd_n000612_1417 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>21  (
    .I0(\Result1Reg/Q [21]),
    .I1(\Result2Reg/Q [13]),
    .I2(\Result3Reg/Q [5]),
    .I3(\MULThirdStage/Adder2/Madd_n000612_1417 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>21_1418 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_20  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>20 ),
    .DI(\MULThirdStage/Adder2/Madd_n000612_1417 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>21_1418 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>21 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_20  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>20 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>21_1418 ),
    .O(MULResult[21])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000613  (
    .I0(\Result1Reg/Q [21]),
    .I1(\Result2Reg/Q [13]),
    .I2(\Result3Reg/Q [5]),
    .O(\MULThirdStage/Adder2/Madd_n000613_1420 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>22  (
    .I0(\Result1Reg/Q [22]),
    .I1(\Result2Reg/Q [14]),
    .I2(\Result3Reg/Q [6]),
    .I3(\MULThirdStage/Adder2/Madd_n000613_1420 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>22_1421 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_21  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>21 ),
    .DI(\MULThirdStage/Adder2/Madd_n000613_1420 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>22_1421 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>22 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_21  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>21 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>22_1421 ),
    .O(MULResult[22])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000614  (
    .I0(\Result1Reg/Q [22]),
    .I1(\Result2Reg/Q [14]),
    .I2(\Result3Reg/Q [6]),
    .O(\MULThirdStage/Adder2/Madd_n000614_1423 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>23  (
    .I0(\Result1Reg/Q [23]),
    .I1(\Result2Reg/Q [15]),
    .I2(\Result3Reg/Q [7]),
    .I3(\MULThirdStage/Adder2/Madd_n000614_1423 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>23_1424 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_22  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>22 ),
    .DI(\MULThirdStage/Adder2/Madd_n000614_1423 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>23_1424 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>23 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_22  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>22 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>23_1424 ),
    .O(MULResult[23])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000615  (
    .I0(\Result1Reg/Q [23]),
    .I1(\Result2Reg/Q [15]),
    .I2(\Result3Reg/Q [7]),
    .O(\MULThirdStage/Adder2/Madd_n000615_1426 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>24  (
    .I0(\Result1Reg/Q [24]),
    .I1(\Result2Reg/Q [16]),
    .I2(\Result3Reg/Q [8]),
    .I3(\MULThirdStage/Adder2/Madd_n000615_1426 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>24_1427 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_23  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>23 ),
    .DI(\MULThirdStage/Adder2/Madd_n000615_1426 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>24_1427 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>24 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_23  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>23 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>24_1427 ),
    .O(MULResult[24])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000616  (
    .I0(\Result1Reg/Q [24]),
    .I1(\Result2Reg/Q [16]),
    .I2(\Result3Reg/Q [8]),
    .O(\MULThirdStage/Adder2/Madd_n000616_1429 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>25  (
    .I0(\Result1Reg/Q [25]),
    .I1(\Result2Reg/Q [17]),
    .I2(\Result3Reg/Q [9]),
    .I3(\MULThirdStage/Adder2/Madd_n000616_1429 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>25_1430 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_24  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>24 ),
    .DI(\MULThirdStage/Adder2/Madd_n000616_1429 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>25_1430 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>25 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_24  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>24 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>25_1430 ),
    .O(MULResult[25])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000617  (
    .I0(\Result1Reg/Q [25]),
    .I1(\Result2Reg/Q [17]),
    .I2(\Result3Reg/Q [9]),
    .O(\MULThirdStage/Adder2/Madd_n000617_1432 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>26  (
    .I0(\Result1Reg/Q [26]),
    .I1(\Result2Reg/Q [18]),
    .I2(\Result3Reg/Q [10]),
    .I3(\MULThirdStage/Adder2/Madd_n000617_1432 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>26_1433 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_25  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>25 ),
    .DI(\MULThirdStage/Adder2/Madd_n000617_1432 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>26_1433 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>26 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_25  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>25 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>26_1433 ),
    .O(MULResult[26])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000618  (
    .I0(\Result1Reg/Q [26]),
    .I1(\Result2Reg/Q [18]),
    .I2(\Result3Reg/Q [10]),
    .O(\MULThirdStage/Adder2/Madd_n000618_1435 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>27  (
    .I0(\Result1Reg/Q [27]),
    .I1(\Result2Reg/Q [19]),
    .I2(\Result3Reg/Q [11]),
    .I3(\MULThirdStage/Adder2/Madd_n000618_1435 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>27_1436 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_26  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>26 ),
    .DI(\MULThirdStage/Adder2/Madd_n000618_1435 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>27_1436 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>27 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_26  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>26 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>27_1436 ),
    .O(MULResult[27])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000619  (
    .I0(\Result1Reg/Q [27]),
    .I1(\Result2Reg/Q [19]),
    .I2(\Result3Reg/Q [11]),
    .O(\MULThirdStage/Adder2/Madd_n000619_1438 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>28  (
    .I0(\Result1Reg/Q [28]),
    .I1(\Result2Reg/Q [20]),
    .I2(\Result3Reg/Q [12]),
    .I3(\MULThirdStage/Adder2/Madd_n000619_1438 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>28_1439 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_27  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>27 ),
    .DI(\MULThirdStage/Adder2/Madd_n000619_1438 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>28_1439 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>28 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_27  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>27 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>28_1439 ),
    .O(MULResult[28])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000620  (
    .I0(\Result1Reg/Q [28]),
    .I1(\Result2Reg/Q [20]),
    .I2(\Result3Reg/Q [12]),
    .O(\MULThirdStage/Adder2/Madd_n000620_1441 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>29  (
    .I0(\Result1Reg/Q [29]),
    .I1(\Result2Reg/Q [21]),
    .I2(\Result3Reg/Q [13]),
    .I3(\MULThirdStage/Adder2/Madd_n000620_1441 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>29_1442 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_28  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>28 ),
    .DI(\MULThirdStage/Adder2/Madd_n000620_1441 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>29_1442 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>29 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_28  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>28 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>29_1442 ),
    .O(MULResult[29])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000621  (
    .I0(\Result1Reg/Q [29]),
    .I1(\Result2Reg/Q [21]),
    .I2(\Result3Reg/Q [13]),
    .O(\MULThirdStage/Adder2/Madd_n000621_1444 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>30  (
    .I0(\Result1Reg/Q [30]),
    .I1(\Result2Reg/Q [22]),
    .I2(\Result3Reg/Q [14]),
    .I3(\MULThirdStage/Adder2/Madd_n000621_1444 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>30_1445 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_29  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>29 ),
    .DI(\MULThirdStage/Adder2/Madd_n000621_1444 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>30_1445 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>30 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_29  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>29 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>30_1445 ),
    .O(MULResult[30])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000622  (
    .I0(\Result1Reg/Q [30]),
    .I1(\Result2Reg/Q [22]),
    .I2(\Result3Reg/Q [14]),
    .O(\MULThirdStage/Adder2/Madd_n000622_1447 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>31  (
    .I0(\Result1Reg/Q [31]),
    .I1(\Result2Reg/Q [23]),
    .I2(\Result3Reg/Q [15]),
    .I3(\MULThirdStage/Adder2/Madd_n000622_1447 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>31_1448 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_30  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>30 ),
    .DI(\MULThirdStage/Adder2/Madd_n000622_1447 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>31_1448 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>31 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_30  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>30 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>31_1448 ),
    .O(MULResult[31])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000623  (
    .I0(\Result1Reg/Q [31]),
    .I1(\Result2Reg/Q [23]),
    .I2(\Result3Reg/Q [15]),
    .O(\MULThirdStage/Adder2/Madd_n000623_1450 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>32  (
    .I0(\Result1Reg/Q [32]),
    .I1(\Result2Reg/Q [24]),
    .I2(\Result3Reg/Q [16]),
    .I3(\MULThirdStage/Adder2/Madd_n000623_1450 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>32_1451 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_31  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>31 ),
    .DI(\MULThirdStage/Adder2/Madd_n000623_1450 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>32_1451 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>32 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_31  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>31 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>32_1451 ),
    .O(MULResult[32])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULThirdStage/Adder2/Madd_n000624  (
    .I0(\Result1Reg/Q [32]),
    .I1(\Result2Reg/Q [24]),
    .I2(\Result3Reg/Q [16]),
    .O(\MULThirdStage/Adder2/Madd_n000624_1453 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>33  (
    .I0(\Result2Reg/Q [25]),
    .I1(\Result3Reg/Q [17]),
    .I2(\MULThirdStage/Adder2/Madd_n000624_1453 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>33_1454 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_32  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>32 ),
    .DI(\MULThirdStage/Adder2/Madd_n000624_1453 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>33_1454 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>33 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_32  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>32 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>33_1454 ),
    .O(MULResult[33])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000625  (
    .I0(\Result2Reg/Q [25]),
    .I1(\Result3Reg/Q [17]),
    .O(\MULThirdStage/Adder2/Madd_n000625_1456 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>34  (
    .I0(\Result2Reg/Q [26]),
    .I1(\Result3Reg/Q [18]),
    .I2(\MULThirdStage/Adder2/Madd_n000625_1456 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>34_1457 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_33  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>33 ),
    .DI(\MULThirdStage/Adder2/Madd_n000625_1456 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>34_1457 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>34 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_33  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>33 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>34_1457 ),
    .O(MULResult[34])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000626  (
    .I0(\Result2Reg/Q [26]),
    .I1(\Result3Reg/Q [18]),
    .O(\MULThirdStage/Adder2/Madd_n000626_1459 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>35  (
    .I0(\Result2Reg/Q [27]),
    .I1(\Result3Reg/Q [19]),
    .I2(\MULThirdStage/Adder2/Madd_n000626_1459 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>35_1460 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_34  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>34 ),
    .DI(\MULThirdStage/Adder2/Madd_n000626_1459 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>35_1460 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>35 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_34  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>34 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>35_1460 ),
    .O(MULResult[35])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000627  (
    .I0(\Result2Reg/Q [27]),
    .I1(\Result3Reg/Q [19]),
    .O(\MULThirdStage/Adder2/Madd_n000627_1462 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>36  (
    .I0(\Result2Reg/Q [28]),
    .I1(\Result3Reg/Q [20]),
    .I2(\MULThirdStage/Adder2/Madd_n000627_1462 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>36_1463 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_35  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>35 ),
    .DI(\MULThirdStage/Adder2/Madd_n000627_1462 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>36_1463 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>36 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_35  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>35 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>36_1463 ),
    .O(MULResult[36])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000628  (
    .I0(\Result2Reg/Q [28]),
    .I1(\Result3Reg/Q [20]),
    .O(\MULThirdStage/Adder2/Madd_n000628_1465 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>37  (
    .I0(\Result2Reg/Q [29]),
    .I1(\Result3Reg/Q [21]),
    .I2(\MULThirdStage/Adder2/Madd_n000628_1465 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>37_1466 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_36  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>36 ),
    .DI(\MULThirdStage/Adder2/Madd_n000628_1465 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>37_1466 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>37 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_36  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>36 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>37_1466 ),
    .O(MULResult[37])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000629  (
    .I0(\Result2Reg/Q [29]),
    .I1(\Result3Reg/Q [21]),
    .O(\MULThirdStage/Adder2/Madd_n000629_1468 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>38  (
    .I0(\Result2Reg/Q [30]),
    .I1(\Result3Reg/Q [22]),
    .I2(\MULThirdStage/Adder2/Madd_n000629_1468 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>38_1469 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_37  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>37 ),
    .DI(\MULThirdStage/Adder2/Madd_n000629_1468 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>38_1469 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>38 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_37  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>37 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>38_1469 ),
    .O(MULResult[38])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000630  (
    .I0(\Result2Reg/Q [30]),
    .I1(\Result3Reg/Q [22]),
    .O(\MULThirdStage/Adder2/Madd_n000630_1471 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>39  (
    .I0(\Result2Reg/Q [31]),
    .I1(\Result3Reg/Q [23]),
    .I2(\MULThirdStage/Adder2/Madd_n000630_1471 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>39_1472 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_38  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>38 ),
    .DI(\MULThirdStage/Adder2/Madd_n000630_1471 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>39_1472 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>39 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_38  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>38 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>39_1472 ),
    .O(MULResult[39])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000631  (
    .I0(\Result2Reg/Q [31]),
    .I1(\Result3Reg/Q [23]),
    .O(\MULThirdStage/Adder2/Madd_n000631_1474 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>40  (
    .I0(\Result2Reg/Q [32]),
    .I1(\Result3Reg/Q [24]),
    .I2(\MULThirdStage/Adder2/Madd_n000631_1474 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>40_1475 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_39  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>39 ),
    .DI(\MULThirdStage/Adder2/Madd_n000631_1474 ),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>40_1475 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>40 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_39  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>39 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>40_1475 ),
    .O(MULResult[40])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULThirdStage/Adder2/Madd_n000632  (
    .I0(\Result2Reg/Q [32]),
    .I1(\Result3Reg/Q [24]),
    .O(\MULThirdStage/Adder2/Madd_n000632_1477 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \MULThirdStage/Adder2/Madd_n0006_lut<0>41  (
    .I0(\MULThirdStage/Adder2/Madd_n000632_1477 ),
    .I1(\Result3Reg/Q [25]),
    .O(\MULThirdStage/Adder2/Madd_n0006_lut<0>41_1478 )
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_40  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>40 ),
    .DI(\Result3Reg/Q [25]),
    .S(\MULThirdStage/Adder2/Madd_n0006_lut<0>41_1478 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>41 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_40  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>40 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_lut<0>41_1478 ),
    .O(MULResult[41])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_41  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>41 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_41_rt_3120 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>42 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_41  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>41 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_41_rt_3120 ),
    .O(MULResult[42])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_42  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>42 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_42_rt_3121 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>43 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_42  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>42 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_42_rt_3121 ),
    .O(MULResult[43])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_43  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>43 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_43_rt_3122 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>44 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_43  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>43 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_43_rt_3122 ),
    .O(MULResult[44])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_44  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>44 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_44_rt_3123 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>45 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_44  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>44 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_44_rt_3123 ),
    .O(MULResult[45])
  );
  MUXCY   \MULThirdStage/Adder2/Madd_n0006_cy<0>_45  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>45 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\MULThirdStage/Adder2/Madd_n0006_cy<0>_45_rt_3124 ),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>46 )
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_45  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>45 ),
    .LI(\MULThirdStage/Adder2/Madd_n0006_cy<0>_45_rt_3124 ),
    .O(MULResult[46])
  );
  XORCY   \MULThirdStage/Adder2/Madd_n0006_xor<0>_46  (
    .CI(\MULThirdStage/Adder2/Madd_n0006_cy<0>46 ),
    .LI(\Result3Reg/Q [31]),
    .O(MULResult[47])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [0]),
    .I3(\inputOperand2/Q [1]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi_1491 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<0>  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [1]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<0>_1492 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi_1491 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<0>_1492 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<0>_1493 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand2/Q [2]),
    .I3(\inputOperand2/Q [3]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi1_1494 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<1>  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand2/Q [3]),
    .I3(\inputOperand1/Q [3]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<1>_1495 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<1>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<0>_1493 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi1_1494 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<1>_1495 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<1>_1496 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi2  (
    .I0(\inputOperand1/Q [5]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand2/Q [4]),
    .I3(\inputOperand2/Q [5]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi2_1497 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<2>  (
    .I0(\inputOperand2/Q [4]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [5]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<2>_1498 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<2>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<1>_1496 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi2_1497 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<2>_1498 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<2>_1499 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi3  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [7]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi3_1500 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<3>  (
    .I0(\inputOperand2/Q [6]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [7]),
    .I3(\inputOperand1/Q [7]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<3>_1501 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<3>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<2>_1499 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi3_1500 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<3>_1501 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<3>_1502 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi4  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [8]),
    .I3(\inputOperand2/Q [9]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi4_1503 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<4>  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [9]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<4>_1504 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<4>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<3>_1502 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi4_1503 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<4>_1504 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<4>_1505 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi5  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand2/Q [10]),
    .I3(\inputOperand2/Q [11]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi5_1506 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<5>  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand2/Q [11]),
    .I3(\inputOperand1/Q [11]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<5>_1507 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<5>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<4>_1505 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi5_1506 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<5>_1507 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<5>_1508 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi6  (
    .I0(\inputOperand1/Q [13]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand2/Q [12]),
    .I3(\inputOperand2/Q [13]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi6_1509 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<6>  (
    .I0(\inputOperand2/Q [12]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [13]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<6>_1510 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<6>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<5>_1508 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi6_1509 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<6>_1510 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<6>_1511 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi7  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [15]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi7_1512 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<7>  (
    .I0(\inputOperand2/Q [14]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [15]),
    .I3(\inputOperand1/Q [15]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<7>_1513 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<7>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<6>_1511 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi7_1512 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<7>_1513 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<7>_1514 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi8  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [16]),
    .I3(\inputOperand2/Q [17]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi8_1515 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<8>  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [17]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<8>_1516 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<8>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<7>_1514 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi8_1515 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<8>_1516 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<8>_1517 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi9  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand2/Q [18]),
    .I3(\inputOperand2/Q [19]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi9_1518 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<9>  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand2/Q [19]),
    .I3(\inputOperand1/Q [19]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<9>_1519 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<9>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<8>_1517 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi9_1518 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<9>_1519 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<9>_1520 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi10  (
    .I0(\inputOperand1/Q [21]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand2/Q [21]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi10_1521 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<10>  (
    .I0(\inputOperand2/Q [20]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [21]),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<10>_1522 )
  );
  MUXCY   \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<10>  (
    .CI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<9>_1520 ),
    .DI(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lutdi10_1521 ),
    .S(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_lut<10>_1522 ),
    .O(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<10>_1523 )
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\Adder1Reg/Q [0]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_cy<0>_rt_3125 ),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [0])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_cy<0>_rt_3125 ),
    .O(AdderResult[0])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<1>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [0]),
    .DI(\Adder1Reg/Q [1]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_cy<1>_rt_3126 ),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [1])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<1>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [0]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_cy<1>_rt_3126 ),
    .O(AdderResult[1])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<2>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [1]),
    .DI(\Adder1Reg/Q [2]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_cy<2>_rt_3127 ),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [2])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<2>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [1]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_cy<2>_rt_3127 ),
    .O(AdderResult[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<3>  (
    .I0(\Adder1Reg/Q [3]),
    .I1(\Adder2Reg/Q [3]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [3])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<3>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [2]),
    .DI(\Adder1Reg/Q [3]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [3]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [3])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<3>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [2]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [3]),
    .O(AdderResult[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<4>  (
    .I0(\Adder1Reg/Q [4]),
    .I1(\Adder2Reg/Q [4]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [4])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<4>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [3]),
    .DI(\Adder1Reg/Q [4]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [4]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [4])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<4>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [3]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [4]),
    .O(AdderResult[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<5>  (
    .I0(\Adder1Reg/Q [5]),
    .I1(\Adder2Reg/Q [5]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [5])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<5>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [4]),
    .DI(\Adder1Reg/Q [5]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [5]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [5])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<5>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [4]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [5]),
    .O(AdderResult[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<6>  (
    .I0(\Adder1Reg/Q [6]),
    .I1(\Adder2Reg/Q [6]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [6])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<6>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [5]),
    .DI(\Adder1Reg/Q [6]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [6]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [6])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<6>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [5]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [6]),
    .O(AdderResult[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<7>  (
    .I0(\Adder1Reg/Q [7]),
    .I1(\Adder2Reg/Q [7]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [7])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<7>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [6]),
    .DI(\Adder1Reg/Q [7]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [7]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [7])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<7>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [6]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [7]),
    .O(AdderResult[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<8>  (
    .I0(\Adder1Reg/Q [8]),
    .I1(\Adder2Reg/Q [8]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [8])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<8>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [7]),
    .DI(\Adder1Reg/Q [8]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [8]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [8])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<8>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [7]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [8]),
    .O(AdderResult[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<9>  (
    .I0(\Adder1Reg/Q [9]),
    .I1(\Adder2Reg/Q [9]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [9])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<9>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [8]),
    .DI(\Adder1Reg/Q [9]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [9]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [9])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<9>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [8]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [9]),
    .O(AdderResult[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<10>  (
    .I0(\Adder1Reg/Q [10]),
    .I1(\Adder2Reg/Q [10]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [10])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<10>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [9]),
    .DI(\Adder1Reg/Q [10]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [10]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [10])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<10>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [9]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [10]),
    .O(AdderResult[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<11>  (
    .I0(\Adder1Reg/Q [11]),
    .I1(\Adder2Reg/Q [11]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [11])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<11>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [10]),
    .DI(\Adder1Reg/Q [11]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [11]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [11])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<11>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [10]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [11]),
    .O(AdderResult[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<12>  (
    .I0(\Adder1Reg/Q [12]),
    .I1(\Adder2Reg/Q [12]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [12])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<12>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [11]),
    .DI(\Adder1Reg/Q [12]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [12]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [12])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<12>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [11]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [12]),
    .O(AdderResult[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<13>  (
    .I0(\Adder1Reg/Q [13]),
    .I1(\Adder2Reg/Q [13]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [13])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<13>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [12]),
    .DI(\Adder1Reg/Q [13]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [13]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [13])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<13>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [12]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [13]),
    .O(AdderResult[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<14>  (
    .I0(\Adder1Reg/Q [14]),
    .I1(\Adder2Reg/Q [14]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [14])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<14>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [13]),
    .DI(\Adder1Reg/Q [14]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [14]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [14])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<14>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [13]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [14]),
    .O(AdderResult[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<15>  (
    .I0(\Adder1Reg/Q [15]),
    .I1(\Adder2Reg/Q [15]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [15])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<15>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [14]),
    .DI(\Adder1Reg/Q [15]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [15]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [15])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<15>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [14]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [15]),
    .O(AdderResult[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<16>  (
    .I0(\Adder1Reg/Q [16]),
    .I1(\Adder2Reg/Q [16]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [16])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<16>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [15]),
    .DI(\Adder1Reg/Q [16]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [16]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [16])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<16>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [15]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [16]),
    .O(AdderResult[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<17>  (
    .I0(\Adder1Reg/Q [17]),
    .I1(\Adder2Reg/Q [17]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [17])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<17>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [16]),
    .DI(\Adder1Reg/Q [17]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [17]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [17])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<17>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [16]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [17]),
    .O(AdderResult[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<18>  (
    .I0(\Adder1Reg/Q [18]),
    .I1(\Adder2Reg/Q [18]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [18])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<18>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [17]),
    .DI(\Adder1Reg/Q [18]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [18]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [18])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<18>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [17]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [18]),
    .O(AdderResult[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<19>  (
    .I0(\Adder1Reg/Q [19]),
    .I1(\Adder2Reg/Q [19]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [19])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<19>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [18]),
    .DI(\Adder1Reg/Q [19]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [19]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [19])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<19>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [18]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [19]),
    .O(AdderResult[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<20>  (
    .I0(\Adder1Reg/Q [20]),
    .I1(\Adder2Reg/Q [20]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [20])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<20>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [19]),
    .DI(\Adder1Reg/Q [20]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [20]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [20])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<20>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [19]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [20]),
    .O(AdderResult[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<21>  (
    .I0(\Adder1Reg/Q [21]),
    .I1(\Adder2Reg/Q [21]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [21])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<21>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [20]),
    .DI(\Adder1Reg/Q [21]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [21]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [21])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<21>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [20]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [21]),
    .O(AdderResult[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<22>  (
    .I0(\Adder1Reg/Q [22]),
    .I1(\Adder2Reg/Q [22]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [22])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<22>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [21]),
    .DI(\Adder1Reg/Q [22]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [22]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [22])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<22>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [21]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [22]),
    .O(AdderResult[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<23>  (
    .I0(\Adder1Reg/Q [23]),
    .I1(\Adder2Reg/Q [23]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [23])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<23>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [22]),
    .DI(\Adder1Reg/Q [23]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [23]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [23])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<23>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [22]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [23]),
    .O(AdderResult[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<24>  (
    .I0(\Adder1Reg/Q [24]),
    .I1(\Adder2Reg/Q [24]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [24])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<24>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [23]),
    .DI(\Adder1Reg/Q [24]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [24]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [24])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<24>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [23]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [24]),
    .O(AdderResult[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<25>  (
    .I0(\Adder1Reg/Q [25]),
    .I1(\Adder2Reg/Q [25]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [25])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<25>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [24]),
    .DI(\Adder1Reg/Q [25]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [25]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [25])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<25>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [24]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [25]),
    .O(AdderResult[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage3/TwosCompAdder/Madd_n0006_lut<26>  (
    .I0(\Adder1Reg/Q [26]),
    .I1(\Adder2Reg/Q [26]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_lut [26])
  );
  MUXCY   \Stage3/TwosCompAdder/Madd_n0006_cy<26>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [25]),
    .DI(\Adder1Reg/Q [26]),
    .S(\Stage3/TwosCompAdder/Madd_n0006_lut [26]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy [26])
  );
  XORCY   \Stage3/TwosCompAdder/Madd_n0006_xor<26>  (
    .CI(\Stage3/TwosCompAdder/Madd_n0006_cy [25]),
    .LI(\Stage3/TwosCompAdder/Madd_n0006_lut [26]),
    .O(AdderResult[26])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte3Byte3/X77 ),
    .S(\Stage5/Rounding/Madd_n0006_lut [0]),
    .O(\Stage5/Rounding/Madd_n0006_cy [0])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\Stage5/Rounding/Madd_n0006_lut [0]),
    .O(\Stage5/Rounding/n0006 [0])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<1>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [0]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<1>_rt_3128 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [1])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<1>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [0]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<1>_rt_3128 ),
    .O(\Stage5/Rounding/n0006 [1])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<2>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [1]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<2>_rt_3129 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [2])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<2>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [1]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<2>_rt_3129 ),
    .O(\Stage5/Rounding/n0006 [2])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<3>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [2]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<3>_rt_3130 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [3])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<3>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [2]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<3>_rt_3130 ),
    .O(\Stage5/Rounding/n0006 [3])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<4>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [3]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<4>_rt_3131 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [4])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<4>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [3]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<4>_rt_3131 ),
    .O(\Stage5/Rounding/n0006 [4])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<5>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [4]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<5>_rt_3132 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [5])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<5>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [4]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<5>_rt_3132 ),
    .O(\Stage5/Rounding/n0006 [5])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<6>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [5]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<6>_rt_3133 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [6])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<6>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [5]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<6>_rt_3133 ),
    .O(\Stage5/Rounding/n0006 [6])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<7>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [6]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<7>_rt_3134 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [7])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<7>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [6]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<7>_rt_3134 ),
    .O(\Stage5/Rounding/n0006 [7])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<8>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [7]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<8>_rt_3135 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [8])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<8>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [7]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<8>_rt_3135 ),
    .O(\Stage5/Rounding/n0006 [8])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<9>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [8]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<9>_rt_3136 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [9])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<9>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [8]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<9>_rt_3136 ),
    .O(\Stage5/Rounding/n0006 [9])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<10>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [9]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<10>_rt_3137 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [10])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<10>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [9]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<10>_rt_3137 ),
    .O(\Stage5/Rounding/n0006 [10])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<11>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [10]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<11>_rt_3138 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [11])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<11>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [10]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<11>_rt_3138 ),
    .O(\Stage5/Rounding/n0006 [11])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<12>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [11]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<12>_rt_3139 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [12])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<12>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [11]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<12>_rt_3139 ),
    .O(\Stage5/Rounding/n0006 [12])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<13>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [12]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<13>_rt_3140 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [13])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<13>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [12]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<13>_rt_3140 ),
    .O(\Stage5/Rounding/n0006 [13])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<14>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [13]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<14>_rt_3141 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [14])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<14>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [13]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<14>_rt_3141 ),
    .O(\Stage5/Rounding/n0006 [14])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<15>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [14]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<15>_rt_3142 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [15])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<15>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [14]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<15>_rt_3142 ),
    .O(\Stage5/Rounding/n0006 [15])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<16>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [15]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<16>_rt_3143 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [16])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<16>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [15]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<16>_rt_3143 ),
    .O(\Stage5/Rounding/n0006 [16])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<17>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [16]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<17>_rt_3144 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [17])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<17>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [16]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<17>_rt_3144 ),
    .O(\Stage5/Rounding/n0006 [17])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<18>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [17]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<18>_rt_3145 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [18])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<18>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [17]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<18>_rt_3145 ),
    .O(\Stage5/Rounding/n0006 [18])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<19>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [18]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<19>_rt_3146 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [19])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<19>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [18]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<19>_rt_3146 ),
    .O(\Stage5/Rounding/n0006 [19])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<20>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [19]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<20>_rt_3147 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [20])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<20>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [19]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<20>_rt_3147 ),
    .O(\Stage5/Rounding/n0006 [20])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<21>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [20]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<21>_rt_3148 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [21])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<21>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [20]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<21>_rt_3148 ),
    .O(\Stage5/Rounding/n0006 [21])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<22>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [21]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<22>_rt_3149 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [22])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<22>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [21]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<22>_rt_3149 ),
    .O(\Stage5/Rounding/n0006 [22])
  );
  MUXCY   \Stage5/Rounding/Madd_n0006_cy<23>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [22]),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage5/Rounding/Madd_n0006_cy<23>_rt_3150 ),
    .O(\Stage5/Rounding/Madd_n0006_cy [23])
  );
  XORCY   \Stage5/Rounding/Madd_n0006_xor<23>  (
    .CI(\Stage5/Rounding/Madd_n0006_cy [22]),
    .LI(\Stage5/Rounding/Madd_n0006_cy<23>_rt_3150 ),
    .O(\Stage5/Rounding/n0006 [23])
  );
  FD   \Result3Reg/Q_31  (
    .C(CLK_BUFGP_66),
    .D(Result3[31]),
    .Q(\Result3Reg/Q [31])
  );
  FD   \Result3Reg/Q_30  (
    .C(CLK_BUFGP_66),
    .D(Result3[30]),
    .Q(\Result3Reg/Q [30])
  );
  FD   \Result3Reg/Q_29  (
    .C(CLK_BUFGP_66),
    .D(Result3[29]),
    .Q(\Result3Reg/Q [29])
  );
  FD   \Result3Reg/Q_28  (
    .C(CLK_BUFGP_66),
    .D(Result3[28]),
    .Q(\Result3Reg/Q [28])
  );
  FD   \Result3Reg/Q_27  (
    .C(CLK_BUFGP_66),
    .D(Result3[27]),
    .Q(\Result3Reg/Q [27])
  );
  FD   \Result3Reg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Result3[26]),
    .Q(\Result3Reg/Q [26])
  );
  FD   \Result3Reg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Result3[25]),
    .Q(\Result3Reg/Q [25])
  );
  FD   \Result3Reg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Result3[24]),
    .Q(\Result3Reg/Q [24])
  );
  FD   \Result3Reg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Result3[23]),
    .Q(\Result3Reg/Q [23])
  );
  FD   \Result3Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Result3[22]),
    .Q(\Result3Reg/Q [22])
  );
  FD   \Result3Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Result3[21]),
    .Q(\Result3Reg/Q [21])
  );
  FD   \Result3Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Result3[20]),
    .Q(\Result3Reg/Q [20])
  );
  FD   \Result3Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Result3[19]),
    .Q(\Result3Reg/Q [19])
  );
  FD   \Result3Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Result3[18]),
    .Q(\Result3Reg/Q [18])
  );
  FD   \Result3Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Result3[17]),
    .Q(\Result3Reg/Q [17])
  );
  FD   \Result3Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Result3[16]),
    .Q(\Result3Reg/Q [16])
  );
  FD   \Result3Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result3[15]),
    .Q(\Result3Reg/Q [15])
  );
  FD   \Result3Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result3[14]),
    .Q(\Result3Reg/Q [14])
  );
  FD   \Result3Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result3[13]),
    .Q(\Result3Reg/Q [13])
  );
  FD   \Result3Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result3[12]),
    .Q(\Result3Reg/Q [12])
  );
  FD   \Result3Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result3[11]),
    .Q(\Result3Reg/Q [11])
  );
  FD   \Result3Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result3[10]),
    .Q(\Result3Reg/Q [10])
  );
  FD   \Result3Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result3[9]),
    .Q(\Result3Reg/Q [9])
  );
  FD   \Result3Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result3[8]),
    .Q(\Result3Reg/Q [8])
  );
  FD   \Result3Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result3[7]),
    .Q(\Result3Reg/Q [7])
  );
  FD   \Result3Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result3[6]),
    .Q(\Result3Reg/Q [6])
  );
  FD   \Result3Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result3[5]),
    .Q(\Result3Reg/Q [5])
  );
  FD   \Result3Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result3[4]),
    .Q(\Result3Reg/Q [4])
  );
  FD   \Result3Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result3[3]),
    .Q(\Result3Reg/Q [3])
  );
  FD   \Result3Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result3[2]),
    .Q(\Result3Reg/Q [2])
  );
  FD   \Result3Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result3[1]),
    .Q(\Result3Reg/Q [1])
  );
  FD   \Result3Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result3[0]),
    .Q(\Result3Reg/Q [0])
  );
  FD   \inputOperand2/Q_31  (
    .C(CLK_BUFGP_66),
    .D(Operand2_31_IBUF_32),
    .Q(\inputOperand2/Q [31])
  );
  FD   \inputOperand2/Q_30  (
    .C(CLK_BUFGP_66),
    .D(Operand2_30_IBUF_33),
    .Q(\inputOperand2/Q [30])
  );
  FD   \inputOperand2/Q_29  (
    .C(CLK_BUFGP_66),
    .D(Operand2_29_IBUF_34),
    .Q(\inputOperand2/Q [29])
  );
  FD   \inputOperand2/Q_28  (
    .C(CLK_BUFGP_66),
    .D(Operand2_28_IBUF_35),
    .Q(\inputOperand2/Q [28])
  );
  FD   \inputOperand2/Q_27  (
    .C(CLK_BUFGP_66),
    .D(Operand2_27_IBUF_36),
    .Q(\inputOperand2/Q [27])
  );
  FD   \inputOperand2/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Operand2_26_IBUF_37),
    .Q(\inputOperand2/Q [26])
  );
  FD   \inputOperand2/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Operand2_25_IBUF_38),
    .Q(\inputOperand2/Q [25])
  );
  FD   \inputOperand2/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Operand2_24_IBUF_39),
    .Q(\inputOperand2/Q [24])
  );
  FD   \inputOperand2/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Operand2_23_IBUF_40),
    .Q(\inputOperand2/Q [23])
  );
  FD   \inputOperand2/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Operand2_22_IBUF_41),
    .Q(\inputOperand2/Q [22])
  );
  FD   \inputOperand2/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Operand2_21_IBUF_42),
    .Q(\inputOperand2/Q [21])
  );
  FD   \inputOperand2/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Operand2_20_IBUF_43),
    .Q(\inputOperand2/Q [20])
  );
  FD   \inputOperand2/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Operand2_19_IBUF_44),
    .Q(\inputOperand2/Q [19])
  );
  FD   \inputOperand2/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Operand2_18_IBUF_45),
    .Q(\inputOperand2/Q [18])
  );
  FD   \inputOperand2/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Operand2_17_IBUF_46),
    .Q(\inputOperand2/Q [17])
  );
  FD   \inputOperand2/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Operand2_16_IBUF_47),
    .Q(\inputOperand2/Q [16])
  );
  FD   \inputOperand2/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Operand2_15_IBUF_48),
    .Q(\inputOperand2/Q [15])
  );
  FD   \inputOperand2/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Operand2_14_IBUF_49),
    .Q(\inputOperand2/Q [14])
  );
  FD   \inputOperand2/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Operand2_13_IBUF_50),
    .Q(\inputOperand2/Q [13])
  );
  FD   \inputOperand2/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Operand2_12_IBUF_51),
    .Q(\inputOperand2/Q [12])
  );
  FD   \inputOperand2/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Operand2_11_IBUF_52),
    .Q(\inputOperand2/Q [11])
  );
  FD   \inputOperand2/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Operand2_10_IBUF_53),
    .Q(\inputOperand2/Q [10])
  );
  FD   \inputOperand2/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Operand2_9_IBUF_54),
    .Q(\inputOperand2/Q [9])
  );
  FD   \inputOperand2/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Operand2_8_IBUF_55),
    .Q(\inputOperand2/Q [8])
  );
  FD   \inputOperand2/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Operand2_7_IBUF_56),
    .Q(\inputOperand2/Q [7])
  );
  FD   \inputOperand2/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Operand2_6_IBUF_57),
    .Q(\inputOperand2/Q [6])
  );
  FD   \inputOperand2/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Operand2_5_IBUF_58),
    .Q(\inputOperand2/Q [5])
  );
  FD   \inputOperand2/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Operand2_4_IBUF_59),
    .Q(\inputOperand2/Q [4])
  );
  FD   \inputOperand2/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Operand2_3_IBUF_60),
    .Q(\inputOperand2/Q [3])
  );
  FD   \inputOperand2/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Operand2_2_IBUF_61),
    .Q(\inputOperand2/Q [2])
  );
  FD   \inputOperand2/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_1_IBUF_62),
    .Q(\inputOperand2/Q [1])
  );
  FD   \inputOperand2/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Operand2_0_IBUF_63),
    .Q(\inputOperand2/Q [0])
  );
  FD   \inputOperand1/Q_31  (
    .C(CLK_BUFGP_66),
    .D(Operand1_31_IBUF_0),
    .Q(\inputOperand1/Q [31])
  );
  FD   \inputOperand1/Q_30  (
    .C(CLK_BUFGP_66),
    .D(Operand1_30_IBUF_1),
    .Q(\inputOperand1/Q [30])
  );
  FD   \inputOperand1/Q_29  (
    .C(CLK_BUFGP_66),
    .D(Operand1_29_IBUF_2),
    .Q(\inputOperand1/Q [29])
  );
  FD   \inputOperand1/Q_28  (
    .C(CLK_BUFGP_66),
    .D(Operand1_28_IBUF_3),
    .Q(\inputOperand1/Q [28])
  );
  FD   \inputOperand1/Q_27  (
    .C(CLK_BUFGP_66),
    .D(Operand1_27_IBUF_4),
    .Q(\inputOperand1/Q [27])
  );
  FD   \inputOperand1/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Operand1_26_IBUF_5),
    .Q(\inputOperand1/Q [26])
  );
  FD   \inputOperand1/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Operand1_25_IBUF_6),
    .Q(\inputOperand1/Q [25])
  );
  FD   \inputOperand1/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Operand1_24_IBUF_7),
    .Q(\inputOperand1/Q [24])
  );
  FD   \inputOperand1/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Operand1_23_IBUF_8),
    .Q(\inputOperand1/Q [23])
  );
  FD   \inputOperand1/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Operand1_22_IBUF_9),
    .Q(\inputOperand1/Q [22])
  );
  FD   \inputOperand1/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Operand1_21_IBUF_10),
    .Q(\inputOperand1/Q [21])
  );
  FD   \inputOperand1/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Operand1_20_IBUF_11),
    .Q(\inputOperand1/Q [20])
  );
  FD   \inputOperand1/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Operand1_19_IBUF_12),
    .Q(\inputOperand1/Q [19])
  );
  FD   \inputOperand1/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Operand1_18_IBUF_13),
    .Q(\inputOperand1/Q [18])
  );
  FD   \inputOperand1/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Operand1_17_IBUF_14),
    .Q(\inputOperand1/Q [17])
  );
  FD   \inputOperand1/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Operand1_16_IBUF_15),
    .Q(\inputOperand1/Q [16])
  );
  FD   \inputOperand1/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Operand1_15_IBUF_16),
    .Q(\inputOperand1/Q [15])
  );
  FD   \inputOperand1/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Operand1_14_IBUF_17),
    .Q(\inputOperand1/Q [14])
  );
  FD   \inputOperand1/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Operand1_13_IBUF_18),
    .Q(\inputOperand1/Q [13])
  );
  FD   \inputOperand1/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Operand1_12_IBUF_19),
    .Q(\inputOperand1/Q [12])
  );
  FD   \inputOperand1/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Operand1_11_IBUF_20),
    .Q(\inputOperand1/Q [11])
  );
  FD   \inputOperand1/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Operand1_10_IBUF_21),
    .Q(\inputOperand1/Q [10])
  );
  FD   \inputOperand1/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Operand1_9_IBUF_22),
    .Q(\inputOperand1/Q [9])
  );
  FD   \inputOperand1/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Operand1_8_IBUF_23),
    .Q(\inputOperand1/Q [8])
  );
  FD   \inputOperand1/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Operand1_7_IBUF_24),
    .Q(\inputOperand1/Q [7])
  );
  FD   \inputOperand1/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Operand1_6_IBUF_25),
    .Q(\inputOperand1/Q [6])
  );
  FD   \inputOperand1/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Operand1_5_IBUF_26),
    .Q(\inputOperand1/Q [5])
  );
  FD   \inputOperand1/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Operand1_4_IBUF_27),
    .Q(\inputOperand1/Q [4])
  );
  FD   \inputOperand1/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Operand1_3_IBUF_28),
    .Q(\inputOperand1/Q [3])
  );
  FD   \inputOperand1/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Operand1_2_IBUF_29),
    .Q(\inputOperand1/Q [2])
  );
  FD   \inputOperand1/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_1_IBUF_30),
    .Q(\inputOperand1/Q [1])
  );
  FD   \inputOperand1/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Operand1_0_IBUF_31),
    .Q(\inputOperand1/Q [0])
  );
  FD   \Result33Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result33[15]),
    .Q(\Result33Reg/Q [15])
  );
  FD   \Result33Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result33[14]),
    .Q(\Result33Reg/Q [14])
  );
  FD   \Result33Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result33[13]),
    .Q(\Result33Reg/Q [13])
  );
  FD   \Result33Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result33[12]),
    .Q(\Result33Reg/Q [12])
  );
  FD   \Result33Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result33[11]),
    .Q(\Result33Reg/Q [11])
  );
  FD   \Result33Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result33[10]),
    .Q(\Result33Reg/Q [10])
  );
  FD   \Result33Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result33[9]),
    .Q(\Result33Reg/Q [9])
  );
  FD   \Result33Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result33[8]),
    .Q(\Result33Reg/Q [8])
  );
  FD   \Result33Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result33[7]),
    .Q(\Result33Reg/Q [7])
  );
  FD   \Result33Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result33[6]),
    .Q(\Result33Reg/Q [6])
  );
  FD   \Result33Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result33[5]),
    .Q(\Result33Reg/Q [5])
  );
  FD   \Result33Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result33[4]),
    .Q(\Result33Reg/Q [4])
  );
  FD   \Result33Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result33[3]),
    .Q(\Result33Reg/Q [3])
  );
  FD   \Result33Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result33[2]),
    .Q(\Result33Reg/Q [2])
  );
  FD   \Result33Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result33[1]),
    .Q(\Result33Reg/Q [1])
  );
  FD   \Result33Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result33[0]),
    .Q(\Result33Reg/Q [0])
  );
  FD   \Result32Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result32[15]),
    .Q(\Result32Reg/Q [15])
  );
  FD   \Result32Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result32[14]),
    .Q(\Result32Reg/Q [14])
  );
  FD   \Result32Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result32[13]),
    .Q(\Result32Reg/Q [13])
  );
  FD   \Result32Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result32[12]),
    .Q(\Result32Reg/Q [12])
  );
  FD   \Result32Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result32[11]),
    .Q(\Result32Reg/Q [11])
  );
  FD   \Result32Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result32[10]),
    .Q(\Result32Reg/Q [10])
  );
  FD   \Result32Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result32[9]),
    .Q(\Result32Reg/Q [9])
  );
  FD   \Result32Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result32[8]),
    .Q(\Result32Reg/Q [8])
  );
  FD   \Result32Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result32[7]),
    .Q(\Result32Reg/Q [7])
  );
  FD   \Result32Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result32[6]),
    .Q(\Result32Reg/Q [6])
  );
  FD   \Result32Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result32[5]),
    .Q(\Result32Reg/Q [5])
  );
  FD   \Result32Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result32[4]),
    .Q(\Result32Reg/Q [4])
  );
  FD   \Result32Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result32[3]),
    .Q(\Result32Reg/Q [3])
  );
  FD   \Result32Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result32[2]),
    .Q(\Result32Reg/Q [2])
  );
  FD   \Result32Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result32[1]),
    .Q(\Result32Reg/Q [1])
  );
  FD   \Result32Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result32[0]),
    .Q(\Result32Reg/Q [0])
  );
  FD   \Result31Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result31[15]),
    .Q(\Result31Reg/Q [15])
  );
  FD   \Result31Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result31[14]),
    .Q(\Result31Reg/Q [14])
  );
  FD   \Result31Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result31[13]),
    .Q(\Result31Reg/Q [13])
  );
  FD   \Result31Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result31[12]),
    .Q(\Result31Reg/Q [12])
  );
  FD   \Result31Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result31[11]),
    .Q(\Result31Reg/Q [11])
  );
  FD   \Result31Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result31[10]),
    .Q(\Result31Reg/Q [10])
  );
  FD   \Result31Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result31[9]),
    .Q(\Result31Reg/Q [9])
  );
  FD   \Result31Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result31[8]),
    .Q(\Result31Reg/Q [8])
  );
  FD   \Result31Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result31[7]),
    .Q(\Result31Reg/Q [7])
  );
  FD   \Result31Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result31[6]),
    .Q(\Result31Reg/Q [6])
  );
  FD   \Result31Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result31[5]),
    .Q(\Result31Reg/Q [5])
  );
  FD   \Result31Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result31[4]),
    .Q(\Result31Reg/Q [4])
  );
  FD   \Result31Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result31[3]),
    .Q(\Result31Reg/Q [3])
  );
  FD   \Result31Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result31[2]),
    .Q(\Result31Reg/Q [2])
  );
  FD   \Result31Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result31[1]),
    .Q(\Result31Reg/Q [1])
  );
  FD   \Result31Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result31[0]),
    .Q(\Result31Reg/Q [0])
  );
  FD   \Result23Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result23[15]),
    .Q(\Result23Reg/Q [15])
  );
  FD   \Result23Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result23[14]),
    .Q(\Result23Reg/Q [14])
  );
  FD   \Result23Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result23[13]),
    .Q(\Result23Reg/Q [13])
  );
  FD   \Result23Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result23[12]),
    .Q(\Result23Reg/Q [12])
  );
  FD   \Result23Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result23[11]),
    .Q(\Result23Reg/Q [11])
  );
  FD   \Result23Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result23[10]),
    .Q(\Result23Reg/Q [10])
  );
  FD   \Result23Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result23[9]),
    .Q(\Result23Reg/Q [9])
  );
  FD   \Result23Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result23[8]),
    .Q(\Result23Reg/Q [8])
  );
  FD   \Result23Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result23[7]),
    .Q(\Result23Reg/Q [7])
  );
  FD   \Result23Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result23[6]),
    .Q(\Result23Reg/Q [6])
  );
  FD   \Result23Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result23[5]),
    .Q(\Result23Reg/Q [5])
  );
  FD   \Result23Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result23[4]),
    .Q(\Result23Reg/Q [4])
  );
  FD   \Result23Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result23[3]),
    .Q(\Result23Reg/Q [3])
  );
  FD   \Result23Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result23[2]),
    .Q(\Result23Reg/Q [2])
  );
  FD   \Result23Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result23[1]),
    .Q(\Result23Reg/Q [1])
  );
  FD   \Result23Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result23[0]),
    .Q(\Result23Reg/Q [0])
  );
  FD   \Result22Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result22[15]),
    .Q(\Result22Reg/Q [15])
  );
  FD   \Result22Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result22[14]),
    .Q(\Result22Reg/Q [14])
  );
  FD   \Result22Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result22[13]),
    .Q(\Result22Reg/Q [13])
  );
  FD   \Result22Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result22[12]),
    .Q(\Result22Reg/Q [12])
  );
  FD   \Result22Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result22[11]),
    .Q(\Result22Reg/Q [11])
  );
  FD   \Result22Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result22[10]),
    .Q(\Result22Reg/Q [10])
  );
  FD   \Result22Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result22[9]),
    .Q(\Result22Reg/Q [9])
  );
  FD   \Result22Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result22[8]),
    .Q(\Result22Reg/Q [8])
  );
  FD   \Result22Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result22[7]),
    .Q(\Result22Reg/Q [7])
  );
  FD   \Result22Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result22[6]),
    .Q(\Result22Reg/Q [6])
  );
  FD   \Result22Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result22[5]),
    .Q(\Result22Reg/Q [5])
  );
  FD   \Result22Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result22[4]),
    .Q(\Result22Reg/Q [4])
  );
  FD   \Result22Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result22[3]),
    .Q(\Result22Reg/Q [3])
  );
  FD   \Result22Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result22[2]),
    .Q(\Result22Reg/Q [2])
  );
  FD   \Result22Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result22[1]),
    .Q(\Result22Reg/Q [1])
  );
  FD   \Result22Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result22[0]),
    .Q(\Result22Reg/Q [0])
  );
  FD   \Result21Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result21[15]),
    .Q(\Result21Reg/Q [15])
  );
  FD   \Result21Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result21[14]),
    .Q(\Result21Reg/Q [14])
  );
  FD   \Result21Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result21[13]),
    .Q(\Result21Reg/Q [13])
  );
  FD   \Result21Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result21[12]),
    .Q(\Result21Reg/Q [12])
  );
  FD   \Result21Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result21[11]),
    .Q(\Result21Reg/Q [11])
  );
  FD   \Result21Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result21[10]),
    .Q(\Result21Reg/Q [10])
  );
  FD   \Result21Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result21[9]),
    .Q(\Result21Reg/Q [9])
  );
  FD   \Result21Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result21[8]),
    .Q(\Result21Reg/Q [8])
  );
  FD   \Result21Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result21[7]),
    .Q(\Result21Reg/Q [7])
  );
  FD   \Result21Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result21[6]),
    .Q(\Result21Reg/Q [6])
  );
  FD   \Result21Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result21[5]),
    .Q(\Result21Reg/Q [5])
  );
  FD   \Result21Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result21[4]),
    .Q(\Result21Reg/Q [4])
  );
  FD   \Result21Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result21[3]),
    .Q(\Result21Reg/Q [3])
  );
  FD   \Result21Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result21[2]),
    .Q(\Result21Reg/Q [2])
  );
  FD   \Result21Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result21[1]),
    .Q(\Result21Reg/Q [1])
  );
  FD   \Result21Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result21[0]),
    .Q(\Result21Reg/Q [0])
  );
  FD   \Result13Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result13[15]),
    .Q(\Result13Reg/Q [15])
  );
  FD   \Result13Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result13[14]),
    .Q(\Result13Reg/Q [14])
  );
  FD   \Result13Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result13[13]),
    .Q(\Result13Reg/Q [13])
  );
  FD   \Result13Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result13[12]),
    .Q(\Result13Reg/Q [12])
  );
  FD   \Result13Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result13[11]),
    .Q(\Result13Reg/Q [11])
  );
  FD   \Result13Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result13[10]),
    .Q(\Result13Reg/Q [10])
  );
  FD   \Result13Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result13[9]),
    .Q(\Result13Reg/Q [9])
  );
  FD   \Result13Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result13[8]),
    .Q(\Result13Reg/Q [8])
  );
  FD   \Result13Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result13[7]),
    .Q(\Result13Reg/Q [7])
  );
  FD   \Result13Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result13[6]),
    .Q(\Result13Reg/Q [6])
  );
  FD   \Result13Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result13[5]),
    .Q(\Result13Reg/Q [5])
  );
  FD   \Result13Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result13[4]),
    .Q(\Result13Reg/Q [4])
  );
  FD   \Result13Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result13[3]),
    .Q(\Result13Reg/Q [3])
  );
  FD   \Result13Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result13[2]),
    .Q(\Result13Reg/Q [2])
  );
  FD   \Result13Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result13[1]),
    .Q(\Result13Reg/Q [1])
  );
  FD   \Result13Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result13[0]),
    .Q(\Result13Reg/Q [0])
  );
  FD   \Result12Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result12[15]),
    .Q(\Result12Reg/Q [15])
  );
  FD   \Result12Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result12[14]),
    .Q(\Result12Reg/Q [14])
  );
  FD   \Result12Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result12[13]),
    .Q(\Result12Reg/Q [13])
  );
  FD   \Result12Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result12[12]),
    .Q(\Result12Reg/Q [12])
  );
  FD   \Result12Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result12[11]),
    .Q(\Result12Reg/Q [11])
  );
  FD   \Result12Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result12[10]),
    .Q(\Result12Reg/Q [10])
  );
  FD   \Result12Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result12[9]),
    .Q(\Result12Reg/Q [9])
  );
  FD   \Result12Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result12[8]),
    .Q(\Result12Reg/Q [8])
  );
  FD   \Result12Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result12[7]),
    .Q(\Result12Reg/Q [7])
  );
  FD   \Result12Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result12[6]),
    .Q(\Result12Reg/Q [6])
  );
  FD   \Result12Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result12[5]),
    .Q(\Result12Reg/Q [5])
  );
  FD   \Result12Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result12[4]),
    .Q(\Result12Reg/Q [4])
  );
  FD   \Result12Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result12[3]),
    .Q(\Result12Reg/Q [3])
  );
  FD   \Result12Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result12[2]),
    .Q(\Result12Reg/Q [2])
  );
  FD   \Result12Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result12[1]),
    .Q(\Result12Reg/Q [1])
  );
  FD   \Result12Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result12[0]),
    .Q(\Result12Reg/Q [0])
  );
  FD   \Result11Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result11[15]),
    .Q(\Result11Reg/Q [15])
  );
  FD   \Result11Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result11[14]),
    .Q(\Result11Reg/Q [14])
  );
  FD   \Result11Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result11[13]),
    .Q(\Result11Reg/Q [13])
  );
  FD   \Result11Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result11[12]),
    .Q(\Result11Reg/Q [12])
  );
  FD   \Result11Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result11[11]),
    .Q(\Result11Reg/Q [11])
  );
  FD   \Result11Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result11[10]),
    .Q(\Result11Reg/Q [10])
  );
  FD   \Result11Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result11[9]),
    .Q(\Result11Reg/Q [9])
  );
  FD   \Result11Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result11[8]),
    .Q(\Result11Reg/Q [8])
  );
  FD   \Result11Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result11[7]),
    .Q(\Result11Reg/Q [7])
  );
  FD   \Result11Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result11[6]),
    .Q(\Result11Reg/Q [6])
  );
  FD   \Result11Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result11[5]),
    .Q(\Result11Reg/Q [5])
  );
  FD   \Result11Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result11[4]),
    .Q(\Result11Reg/Q [4])
  );
  FD   \Result11Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result11[3]),
    .Q(\Result11Reg/Q [3])
  );
  FD   \Result11Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result11[2]),
    .Q(\Result11Reg/Q [2])
  );
  FD   \Result11Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result11[1]),
    .Q(\Result11Reg/Q [1])
  );
  FD   \Result11Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result11[0]),
    .Q(\Result11Reg/Q [0])
  );
  FD   \TobeRoundedReg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[23]),
    .Q(\TobeRoundedReg/Q [23])
  );
  FD   \TobeRoundedReg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[22]),
    .Q(\TobeRoundedReg/Q [22])
  );
  FD   \TobeRoundedReg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[21]),
    .Q(\TobeRoundedReg/Q [21])
  );
  FD   \TobeRoundedReg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[20]),
    .Q(\TobeRoundedReg/Q [20])
  );
  FD   \TobeRoundedReg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[19]),
    .Q(\TobeRoundedReg/Q [19])
  );
  FD   \TobeRoundedReg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[18]),
    .Q(\TobeRoundedReg/Q [18])
  );
  FD   \TobeRoundedReg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[17]),
    .Q(\TobeRoundedReg/Q [17])
  );
  FD   \TobeRoundedReg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[16]),
    .Q(\TobeRoundedReg/Q [16])
  );
  FD   \TobeRoundedReg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[15]),
    .Q(\TobeRoundedReg/Q [15])
  );
  FD   \TobeRoundedReg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[14]),
    .Q(\TobeRoundedReg/Q [14])
  );
  FD   \TobeRoundedReg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[13]),
    .Q(\TobeRoundedReg/Q [13])
  );
  FD   \TobeRoundedReg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[12]),
    .Q(\TobeRoundedReg/Q [12])
  );
  FD   \TobeRoundedReg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[11]),
    .Q(\TobeRoundedReg/Q [11])
  );
  FD   \TobeRoundedReg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[10]),
    .Q(\TobeRoundedReg/Q [10])
  );
  FD   \TobeRoundedReg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[9]),
    .Q(\TobeRoundedReg/Q [9])
  );
  FD   \TobeRoundedReg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[8]),
    .Q(\TobeRoundedReg/Q [8])
  );
  FD   \TobeRoundedReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[7]),
    .Q(\TobeRoundedReg/Q [7])
  );
  FD   \TobeRoundedReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[6]),
    .Q(\TobeRoundedReg/Q [6])
  );
  FD   \TobeRoundedReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[5]),
    .Q(\TobeRoundedReg/Q [5])
  );
  FD   \TobeRoundedReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[4]),
    .Q(\TobeRoundedReg/Q [4])
  );
  FD   \TobeRoundedReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[3]),
    .Q(\TobeRoundedReg/Q [3])
  );
  FD   \TobeRoundedReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[2]),
    .Q(\TobeRoundedReg/Q [2])
  );
  FD   \TobeRoundedReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[1]),
    .Q(\TobeRoundedReg/Q [1])
  );
  FD   \TobeRoundedReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(TobeRounded[0]),
    .Q(\TobeRoundedReg/Q [0])
  );
  FD   \Mantissa2Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [22]),
    .Q(\Mantissa2Reg/Q [22])
  );
  FD   \Mantissa2Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [21]),
    .Q(\Mantissa2Reg/Q [21])
  );
  FD   \Mantissa2Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [20]),
    .Q(\Mantissa2Reg/Q [20])
  );
  FD   \Mantissa2Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [19]),
    .Q(\Mantissa2Reg/Q [19])
  );
  FD   \Mantissa2Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [18]),
    .Q(\Mantissa2Reg/Q [18])
  );
  FD   \Mantissa2Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [17]),
    .Q(\Mantissa2Reg/Q [17])
  );
  FD   \Mantissa2Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [16]),
    .Q(\Mantissa2Reg/Q [16])
  );
  FD   \Mantissa2Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [15]),
    .Q(\Mantissa2Reg/Q [15])
  );
  FD   \Mantissa2Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [14]),
    .Q(\Mantissa2Reg/Q [14])
  );
  FD   \Mantissa2Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [13]),
    .Q(\Mantissa2Reg/Q [13])
  );
  FD   \Mantissa2Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [12]),
    .Q(\Mantissa2Reg/Q [12])
  );
  FD   \Mantissa2Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [11]),
    .Q(\Mantissa2Reg/Q [11])
  );
  FD   \Mantissa2Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [10]),
    .Q(\Mantissa2Reg/Q [10])
  );
  FD   \Mantissa2Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [9]),
    .Q(\Mantissa2Reg/Q [9])
  );
  FD   \Mantissa2Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [8]),
    .Q(\Mantissa2Reg/Q [8])
  );
  FD   \Mantissa2Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [7]),
    .Q(\Mantissa2Reg/Q [7])
  );
  FD   \Mantissa2Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [6]),
    .Q(\Mantissa2Reg/Q [6])
  );
  FD   \Mantissa2Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [5]),
    .Q(\Mantissa2Reg/Q [5])
  );
  FD   \Mantissa2Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [4]),
    .Q(\Mantissa2Reg/Q [4])
  );
  FD   \Mantissa2Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [3]),
    .Q(\Mantissa2Reg/Q [3])
  );
  FD   \Mantissa2Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [2]),
    .Q(\Mantissa2Reg/Q [2])
  );
  FD   \Mantissa2Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [1]),
    .Q(\Mantissa2Reg/Q [1])
  );
  FD   \Mantissa2Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [0]),
    .Q(\Mantissa2Reg/Q [0])
  );
  FD   \Mantissa1Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [22]),
    .Q(\Mantissa1Reg/Q [22])
  );
  FD   \Mantissa1Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [21]),
    .Q(\Mantissa1Reg/Q [21])
  );
  FD   \Mantissa1Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [20]),
    .Q(\Mantissa1Reg/Q [20])
  );
  FD   \Mantissa1Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [19]),
    .Q(\Mantissa1Reg/Q [19])
  );
  FD   \Mantissa1Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [18]),
    .Q(\Mantissa1Reg/Q [18])
  );
  FD   \Mantissa1Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [17]),
    .Q(\Mantissa1Reg/Q [17])
  );
  FD   \Mantissa1Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [16]),
    .Q(\Mantissa1Reg/Q [16])
  );
  FD   \Mantissa1Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [15]),
    .Q(\Mantissa1Reg/Q [15])
  );
  FD   \Mantissa1Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [14]),
    .Q(\Mantissa1Reg/Q [14])
  );
  FD   \Mantissa1Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [13]),
    .Q(\Mantissa1Reg/Q [13])
  );
  FD   \Mantissa1Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [12]),
    .Q(\Mantissa1Reg/Q [12])
  );
  FD   \Mantissa1Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [11]),
    .Q(\Mantissa1Reg/Q [11])
  );
  FD   \Mantissa1Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [10]),
    .Q(\Mantissa1Reg/Q [10])
  );
  FD   \Mantissa1Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [9]),
    .Q(\Mantissa1Reg/Q [9])
  );
  FD   \Mantissa1Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [8]),
    .Q(\Mantissa1Reg/Q [8])
  );
  FD   \Mantissa1Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [7]),
    .Q(\Mantissa1Reg/Q [7])
  );
  FD   \Mantissa1Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [6]),
    .Q(\Mantissa1Reg/Q [6])
  );
  FD   \Mantissa1Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [5]),
    .Q(\Mantissa1Reg/Q [5])
  );
  FD   \Mantissa1Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [4]),
    .Q(\Mantissa1Reg/Q [4])
  );
  FD   \Mantissa1Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [3]),
    .Q(\Mantissa1Reg/Q [3])
  );
  FD   \Mantissa1Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [2]),
    .Q(\Mantissa1Reg/Q [2])
  );
  FD   \Mantissa1Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [1]),
    .Q(\Mantissa1Reg/Q [1])
  );
  FD   \Mantissa1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [0]),
    .Q(\Mantissa1Reg/Q [0])
  );
  FD   \FinalExponentReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[7]),
    .Q(\FinalExponentReg/Q [7])
  );
  FD   \FinalExponentReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[6]),
    .Q(\FinalExponentReg/Q [6])
  );
  FD   \FinalExponentReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[5]),
    .Q(\FinalExponentReg/Q [5])
  );
  FD   \FinalExponentReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[4]),
    .Q(\FinalExponentReg/Q [4])
  );
  FD   \FinalExponentReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[3]),
    .Q(\FinalExponentReg/Q [3])
  );
  FD   \FinalExponentReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[2]),
    .Q(\FinalExponentReg/Q [2])
  );
  FD   \FinalExponentReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[1]),
    .Q(\FinalExponentReg/Q [1])
  );
  FD   \FinalExponentReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(FinalExponent[0]),
    .Q(\FinalExponentReg/Q [0])
  );
  FD   \ExponentUpdateReq1/Q_7  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[7]),
    .Q(\ExponentUpdateReq1/Q [7])
  );
  FD   \ExponentUpdateReq1/Q_6  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[6]),
    .Q(\ExponentUpdateReq1/Q [6])
  );
  FD   \ExponentUpdateReq1/Q_5  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[5]),
    .Q(\ExponentUpdateReq1/Q [5])
  );
  FD   \ExponentUpdateReq1/Q_4  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[4]),
    .Q(\ExponentUpdateReq1/Q [4])
  );
  FD   \ExponentUpdateReq1/Q_3  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[3]),
    .Q(\ExponentUpdateReq1/Q [3])
  );
  FD   \ExponentUpdateReq1/Q_2  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[2]),
    .Q(\ExponentUpdateReq1/Q [2])
  );
  FD   \ExponentUpdateReq1/Q_1  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[1]),
    .Q(\ExponentUpdateReq1/Q [1])
  );
  FD   \ExponentUpdateReq1/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ExponentAdderResult1[0]),
    .Q(\ExponentUpdateReq1/Q [0])
  );
  FD   \ResultExponentReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[7]),
    .Q(\ResultExponentReg/Q [7])
  );
  FD   \ResultExponentReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[6]),
    .Q(\ResultExponentReg/Q [6])
  );
  FD   \ResultExponentReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[5]),
    .Q(\ResultExponentReg/Q [5])
  );
  FD   \ResultExponentReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[4]),
    .Q(\ResultExponentReg/Q [4])
  );
  FD   \ResultExponentReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[3]),
    .Q(\ResultExponentReg/Q [3])
  );
  FD   \ResultExponentReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[2]),
    .Q(\ResultExponentReg/Q [2])
  );
  FD   \ResultExponentReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[1]),
    .Q(\ResultExponentReg/Q [1])
  );
  FD   \ResultExponentReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ResultExponent[0]),
    .Q(\ResultExponentReg/Q [0])
  );
  FD   \MDFinalExponentReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[7]),
    .Q(\MDFinalExponentReg/Q [7])
  );
  FD   \MDFinalExponentReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[6]),
    .Q(\MDFinalExponentReg/Q [6])
  );
  FD   \MDFinalExponentReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[5]),
    .Q(\MDFinalExponentReg/Q [5])
  );
  FD   \MDFinalExponentReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[4]),
    .Q(\MDFinalExponentReg/Q [4])
  );
  FD   \MDFinalExponentReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[3]),
    .Q(\MDFinalExponentReg/Q [3])
  );
  FD   \MDFinalExponentReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[2]),
    .Q(\MDFinalExponentReg/Q [2])
  );
  FD   \MDFinalExponentReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[1]),
    .Q(\MDFinalExponentReg/Q [1])
  );
  FD   \MDFinalExponentReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(MDFinalExponent[0]),
    .Q(\MDFinalExponentReg/Q [0])
  );
  FD   \ExponentBaseReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[7]),
    .Q(\ExponentBaseReg/Q [7])
  );
  FD   \ExponentBaseReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[6]),
    .Q(\ExponentBaseReg/Q [6])
  );
  FD   \ExponentBaseReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[5]),
    .Q(\ExponentBaseReg/Q [5])
  );
  FD   \ExponentBaseReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[4]),
    .Q(\ExponentBaseReg/Q [4])
  );
  FD   \ExponentBaseReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[3]),
    .Q(\ExponentBaseReg/Q [3])
  );
  FD   \ExponentBaseReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[2]),
    .Q(\ExponentBaseReg/Q [2])
  );
  FD   \ExponentBaseReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[1]),
    .Q(\ExponentBaseReg/Q [1])
  );
  FD   \ExponentBaseReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(ExponentBase[0]),
    .Q(\ExponentBaseReg/Q [0])
  );
  FD   \MDExponentReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[7]),
    .Q(\MDExponentReg/Q [7])
  );
  FD   \MDExponentReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[6]),
    .Q(\MDExponentReg/Q [6])
  );
  FD   \MDExponentReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[5]),
    .Q(\MDExponentReg/Q [5])
  );
  FD   \MDExponentReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[4]),
    .Q(\MDExponentReg/Q [4])
  );
  FD   \MDExponentReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[3]),
    .Q(\MDExponentReg/Q [3])
  );
  FD   \MDExponentReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[2]),
    .Q(\MDExponentReg/Q [2])
  );
  FD   \MDExponentReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[1]),
    .Q(\MDExponentReg/Q [1])
  );
  FD   \MDExponentReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(MDExponent[0]),
    .Q(\MDExponentReg/Q [0])
  );
  FD   \Exponent2Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [30]),
    .Q(\Exponent2Reg/Q [7])
  );
  FD   \Exponent2Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [29]),
    .Q(\Exponent2Reg/Q [6])
  );
  FD   \Exponent2Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [28]),
    .Q(\Exponent2Reg/Q [5])
  );
  FD   \Exponent2Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [27]),
    .Q(\Exponent2Reg/Q [4])
  );
  FD   \Exponent2Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [26]),
    .Q(\Exponent2Reg/Q [3])
  );
  FD   \Exponent2Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [25]),
    .Q(\Exponent2Reg/Q [2])
  );
  FD   \Exponent2Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [24]),
    .Q(\Exponent2Reg/Q [1])
  );
  FD   \Exponent2Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand2/Q [23]),
    .Q(\Exponent2Reg/Q [0])
  );
  FD   \Exponent1Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [30]),
    .Q(\Exponent1Reg/Q [7])
  );
  FD   \Exponent1Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [29]),
    .Q(\Exponent1Reg/Q [6])
  );
  FD   \Exponent1Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [28]),
    .Q(\Exponent1Reg/Q [5])
  );
  FD   \Exponent1Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [27]),
    .Q(\Exponent1Reg/Q [4])
  );
  FD   \Exponent1Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [26]),
    .Q(\Exponent1Reg/Q [3])
  );
  FD   \Exponent1Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [25]),
    .Q(\Exponent1Reg/Q [2])
  );
  FD   \Exponent1Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [24]),
    .Q(\Exponent1Reg/Q [1])
  );
  FD   \Exponent1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(\inputOperand1/Q [23]),
    .Q(\Exponent1Reg/Q [0])
  );
  FD   \Result2Reg/Q_32  (
    .C(CLK_BUFGP_66),
    .D(Result2[32]),
    .Q(\Result2Reg/Q [32])
  );
  FD   \Result2Reg/Q_31  (
    .C(CLK_BUFGP_66),
    .D(Result2[31]),
    .Q(\Result2Reg/Q [31])
  );
  FD   \Result2Reg/Q_30  (
    .C(CLK_BUFGP_66),
    .D(Result2[30]),
    .Q(\Result2Reg/Q [30])
  );
  FD   \Result2Reg/Q_29  (
    .C(CLK_BUFGP_66),
    .D(Result2[29]),
    .Q(\Result2Reg/Q [29])
  );
  FD   \Result2Reg/Q_28  (
    .C(CLK_BUFGP_66),
    .D(Result2[28]),
    .Q(\Result2Reg/Q [28])
  );
  FD   \Result2Reg/Q_27  (
    .C(CLK_BUFGP_66),
    .D(Result2[27]),
    .Q(\Result2Reg/Q [27])
  );
  FD   \Result2Reg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Result2[26]),
    .Q(\Result2Reg/Q [26])
  );
  FD   \Result2Reg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Result2[25]),
    .Q(\Result2Reg/Q [25])
  );
  FD   \Result2Reg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Result2[24]),
    .Q(\Result2Reg/Q [24])
  );
  FD   \Result2Reg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Result2[23]),
    .Q(\Result2Reg/Q [23])
  );
  FD   \Result2Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Result2[22]),
    .Q(\Result2Reg/Q [22])
  );
  FD   \Result2Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Result2[21]),
    .Q(\Result2Reg/Q [21])
  );
  FD   \Result2Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Result2[20]),
    .Q(\Result2Reg/Q [20])
  );
  FD   \Result2Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Result2[19]),
    .Q(\Result2Reg/Q [19])
  );
  FD   \Result2Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Result2[18]),
    .Q(\Result2Reg/Q [18])
  );
  FD   \Result2Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Result2[17]),
    .Q(\Result2Reg/Q [17])
  );
  FD   \Result2Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Result2[16]),
    .Q(\Result2Reg/Q [16])
  );
  FD   \Result2Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result2[15]),
    .Q(\Result2Reg/Q [15])
  );
  FD   \Result2Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result2[14]),
    .Q(\Result2Reg/Q [14])
  );
  FD   \Result2Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result2[13]),
    .Q(\Result2Reg/Q [13])
  );
  FD   \Result2Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result2[12]),
    .Q(\Result2Reg/Q [12])
  );
  FD   \Result2Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result2[11]),
    .Q(\Result2Reg/Q [11])
  );
  FD   \Result2Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result2[10]),
    .Q(\Result2Reg/Q [10])
  );
  FD   \Result2Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result2[9]),
    .Q(\Result2Reg/Q [9])
  );
  FD   \Result2Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result2[8]),
    .Q(\Result2Reg/Q [8])
  );
  FD   \Result2Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result2[7]),
    .Q(\Result2Reg/Q [7])
  );
  FD   \Result2Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result2[6]),
    .Q(\Result2Reg/Q [6])
  );
  FD   \Result2Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result2[5]),
    .Q(\Result2Reg/Q [5])
  );
  FD   \Result2Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result2[4]),
    .Q(\Result2Reg/Q [4])
  );
  FD   \Result2Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result2[3]),
    .Q(\Result2Reg/Q [3])
  );
  FD   \Result2Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result2[2]),
    .Q(\Result2Reg/Q [2])
  );
  FD   \Result2Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result2[1]),
    .Q(\Result2Reg/Q [1])
  );
  FD   \Result2Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result2[0]),
    .Q(\Result2Reg/Q [0])
  );
  FD   \Result1Reg/Q_32  (
    .C(CLK_BUFGP_66),
    .D(Result1[32]),
    .Q(\Result1Reg/Q [32])
  );
  FD   \Result1Reg/Q_31  (
    .C(CLK_BUFGP_66),
    .D(Result1[31]),
    .Q(\Result1Reg/Q [31])
  );
  FD   \Result1Reg/Q_30  (
    .C(CLK_BUFGP_66),
    .D(Result1[30]),
    .Q(\Result1Reg/Q [30])
  );
  FD   \Result1Reg/Q_29  (
    .C(CLK_BUFGP_66),
    .D(Result1[29]),
    .Q(\Result1Reg/Q [29])
  );
  FD   \Result1Reg/Q_28  (
    .C(CLK_BUFGP_66),
    .D(Result1[28]),
    .Q(\Result1Reg/Q [28])
  );
  FD   \Result1Reg/Q_27  (
    .C(CLK_BUFGP_66),
    .D(Result1[27]),
    .Q(\Result1Reg/Q [27])
  );
  FD   \Result1Reg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Result1[26]),
    .Q(\Result1Reg/Q [26])
  );
  FD   \Result1Reg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Result1[25]),
    .Q(\Result1Reg/Q [25])
  );
  FD   \Result1Reg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Result1[24]),
    .Q(\Result1Reg/Q [24])
  );
  FD   \Result1Reg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Result1[23]),
    .Q(\Result1Reg/Q [23])
  );
  FD   \Result1Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Result1[22]),
    .Q(\Result1Reg/Q [22])
  );
  FD   \Result1Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Result1[21]),
    .Q(\Result1Reg/Q [21])
  );
  FD   \Result1Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Result1[20]),
    .Q(\Result1Reg/Q [20])
  );
  FD   \Result1Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Result1[19]),
    .Q(\Result1Reg/Q [19])
  );
  FD   \Result1Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Result1[18]),
    .Q(\Result1Reg/Q [18])
  );
  FD   \Result1Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Result1[17]),
    .Q(\Result1Reg/Q [17])
  );
  FD   \Result1Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Result1[16]),
    .Q(\Result1Reg/Q [16])
  );
  FD   \Result1Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Result1[15]),
    .Q(\Result1Reg/Q [15])
  );
  FD   \Result1Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Result1[14]),
    .Q(\Result1Reg/Q [14])
  );
  FD   \Result1Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Result1[13]),
    .Q(\Result1Reg/Q [13])
  );
  FD   \Result1Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Result1[12]),
    .Q(\Result1Reg/Q [12])
  );
  FD   \Result1Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Result1[11]),
    .Q(\Result1Reg/Q [11])
  );
  FD   \Result1Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Result1[10]),
    .Q(\Result1Reg/Q [10])
  );
  FD   \Result1Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Result1[9]),
    .Q(\Result1Reg/Q [9])
  );
  FD   \Result1Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Result1[8]),
    .Q(\Result1Reg/Q [8])
  );
  FD   \Result1Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Result1[7]),
    .Q(\Result1Reg/Q [7])
  );
  FD   \Result1Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Result1[6]),
    .Q(\Result1Reg/Q [6])
  );
  FD   \Result1Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Result1[5]),
    .Q(\Result1Reg/Q [5])
  );
  FD   \Result1Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Result1[4]),
    .Q(\Result1Reg/Q [4])
  );
  FD   \Result1Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Result1[3]),
    .Q(\Result1Reg/Q [3])
  );
  FD   \Result1Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Result1[2]),
    .Q(\Result1Reg/Q [2])
  );
  FD   \Result1Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Result1[1]),
    .Q(\Result1Reg/Q [1])
  );
  FD   \Result1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Result1[0]),
    .Q(\Result1Reg/Q [0])
  );
  FD   \AdderResultReg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[26]),
    .Q(\AdderResultReg/Q [26])
  );
  FD   \AdderResultReg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[25]),
    .Q(\AdderResultReg/Q [25])
  );
  FD   \AdderResultReg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[24]),
    .Q(\AdderResultReg/Q [24])
  );
  FD   \AdderResultReg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[23]),
    .Q(\AdderResultReg/Q [23])
  );
  FD   \AdderResultReg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[22]),
    .Q(\AdderResultReg/Q [22])
  );
  FD   \AdderResultReg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[21]),
    .Q(\AdderResultReg/Q [21])
  );
  FD   \AdderResultReg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[20]),
    .Q(\AdderResultReg/Q [20])
  );
  FD   \AdderResultReg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[19]),
    .Q(\AdderResultReg/Q [19])
  );
  FD   \AdderResultReg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[18]),
    .Q(\AdderResultReg/Q [18])
  );
  FD   \AdderResultReg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[17]),
    .Q(\AdderResultReg/Q [17])
  );
  FD   \AdderResultReg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[16]),
    .Q(\AdderResultReg/Q [16])
  );
  FD   \AdderResultReg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[15]),
    .Q(\AdderResultReg/Q [15])
  );
  FD   \AdderResultReg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[14]),
    .Q(\AdderResultReg/Q [14])
  );
  FD   \AdderResultReg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[13]),
    .Q(\AdderResultReg/Q [13])
  );
  FD   \AdderResultReg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[12]),
    .Q(\AdderResultReg/Q [12])
  );
  FD   \AdderResultReg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[11]),
    .Q(\AdderResultReg/Q [11])
  );
  FD   \AdderResultReg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[10]),
    .Q(\AdderResultReg/Q [10])
  );
  FD   \AdderResultReg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[9]),
    .Q(\AdderResultReg/Q [9])
  );
  FD   \AdderResultReg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[8]),
    .Q(\AdderResultReg/Q [8])
  );
  FD   \AdderResultReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[7]),
    .Q(\AdderResultReg/Q [7])
  );
  FD   \AdderResultReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[6]),
    .Q(\AdderResultReg/Q [6])
  );
  FD   \AdderResultReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[5]),
    .Q(\AdderResultReg/Q [5])
  );
  FD   \AdderResultReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[4]),
    .Q(\AdderResultReg/Q [4])
  );
  FD   \AdderResultReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[3]),
    .Q(\AdderResultReg/Q [3])
  );
  FD   \AdderResultReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[2]),
    .Q(\AdderResultReg/Q [2])
  );
  FD   \AdderResultReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[1]),
    .Q(\AdderResultReg/Q [1])
  );
  FD   \AdderResultReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(AdderResult[0]),
    .Q(\AdderResultReg/Q [0])
  );
  FD   \Adder2Reg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Adder2[26]),
    .Q(\Adder2Reg/Q [26])
  );
  FD   \Adder2Reg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Adder2[25]),
    .Q(\Adder2Reg/Q [25])
  );
  FD   \Adder2Reg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Adder2[24]),
    .Q(\Adder2Reg/Q [24])
  );
  FD   \Adder2Reg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Adder2[23]),
    .Q(\Adder2Reg/Q [23])
  );
  FD   \Adder2Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Adder2[22]),
    .Q(\Adder2Reg/Q [22])
  );
  FD   \Adder2Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Adder2[21]),
    .Q(\Adder2Reg/Q [21])
  );
  FD   \Adder2Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Adder2[20]),
    .Q(\Adder2Reg/Q [20])
  );
  FD   \Adder2Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Adder2[19]),
    .Q(\Adder2Reg/Q [19])
  );
  FD   \Adder2Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Adder2[18]),
    .Q(\Adder2Reg/Q [18])
  );
  FD   \Adder2Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Adder2[17]),
    .Q(\Adder2Reg/Q [17])
  );
  FD   \Adder2Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Adder2[16]),
    .Q(\Adder2Reg/Q [16])
  );
  FD   \Adder2Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Adder2[15]),
    .Q(\Adder2Reg/Q [15])
  );
  FD   \Adder2Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Adder2[14]),
    .Q(\Adder2Reg/Q [14])
  );
  FD   \Adder2Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Adder2[13]),
    .Q(\Adder2Reg/Q [13])
  );
  FD   \Adder2Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Adder2[12]),
    .Q(\Adder2Reg/Q [12])
  );
  FD   \Adder2Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Adder2[11]),
    .Q(\Adder2Reg/Q [11])
  );
  FD   \Adder2Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Adder2[10]),
    .Q(\Adder2Reg/Q [10])
  );
  FD   \Adder2Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Adder2[9]),
    .Q(\Adder2Reg/Q [9])
  );
  FD   \Adder2Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Adder2[8]),
    .Q(\Adder2Reg/Q [8])
  );
  FD   \Adder2Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Adder2[7]),
    .Q(\Adder2Reg/Q [7])
  );
  FD   \Adder2Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Adder2[6]),
    .Q(\Adder2Reg/Q [6])
  );
  FD   \Adder2Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Adder2[5]),
    .Q(\Adder2Reg/Q [5])
  );
  FD   \Adder2Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Adder2[4]),
    .Q(\Adder2Reg/Q [4])
  );
  FD   \Adder2Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Adder2[3]),
    .Q(\Adder2Reg/Q [3])
  );
  FD   \Adder1Reg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(Adder1[26]),
    .Q(\Adder1Reg/Q [26])
  );
  FD   \Adder1Reg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(Adder1[25]),
    .Q(\Adder1Reg/Q [25])
  );
  FD   \Adder1Reg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(Adder1[24]),
    .Q(\Adder1Reg/Q [24])
  );
  FD   \Adder1Reg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(Adder1[23]),
    .Q(\Adder1Reg/Q [23])
  );
  FD   \Adder1Reg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(Adder1[22]),
    .Q(\Adder1Reg/Q [22])
  );
  FD   \Adder1Reg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(Adder1[21]),
    .Q(\Adder1Reg/Q [21])
  );
  FD   \Adder1Reg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(Adder1[20]),
    .Q(\Adder1Reg/Q [20])
  );
  FD   \Adder1Reg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(Adder1[19]),
    .Q(\Adder1Reg/Q [19])
  );
  FD   \Adder1Reg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(Adder1[18]),
    .Q(\Adder1Reg/Q [18])
  );
  FD   \Adder1Reg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(Adder1[17]),
    .Q(\Adder1Reg/Q [17])
  );
  FD   \Adder1Reg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(Adder1[16]),
    .Q(\Adder1Reg/Q [16])
  );
  FD   \Adder1Reg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(Adder1[15]),
    .Q(\Adder1Reg/Q [15])
  );
  FD   \Adder1Reg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(Adder1[14]),
    .Q(\Adder1Reg/Q [14])
  );
  FD   \Adder1Reg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(Adder1[13]),
    .Q(\Adder1Reg/Q [13])
  );
  FD   \Adder1Reg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(Adder1[12]),
    .Q(\Adder1Reg/Q [12])
  );
  FD   \Adder1Reg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(Adder1[11]),
    .Q(\Adder1Reg/Q [11])
  );
  FD   \Adder1Reg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(Adder1[10]),
    .Q(\Adder1Reg/Q [10])
  );
  FD   \Adder1Reg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(Adder1[9]),
    .Q(\Adder1Reg/Q [9])
  );
  FD   \Adder1Reg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(Adder1[8]),
    .Q(\Adder1Reg/Q [8])
  );
  FD   \Adder1Reg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(Adder1[7]),
    .Q(\Adder1Reg/Q [7])
  );
  FD   \Adder1Reg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(Adder1[6]),
    .Q(\Adder1Reg/Q [6])
  );
  FD   \Adder1Reg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(Adder1[5]),
    .Q(\Adder1Reg/Q [5])
  );
  FD   \Adder1Reg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(Adder1[4]),
    .Q(\Adder1Reg/Q [4])
  );
  FD   \Adder1Reg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(Adder1[3]),
    .Q(\Adder1Reg/Q [3])
  );
  FD   \Adder1Reg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(Adder1[2]),
    .Q(\Adder1Reg/Q [2])
  );
  FD   \Adder1Reg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(Adder1[1]),
    .Q(\Adder1Reg/Q [1])
  );
  FD   \Adder1Reg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(Adder1[0]),
    .Q(\Adder1Reg/Q [0])
  );
  FD   \MULResultReg/Q_47  (
    .C(CLK_BUFGP_66),
    .D(MULResult[47]),
    .Q(\MULResultReg/Q [47])
  );
  FD   \MULResultReg/Q_46  (
    .C(CLK_BUFGP_66),
    .D(MULResult[46]),
    .Q(\MULResultReg/Q [46])
  );
  FD   \MULResultReg/Q_45  (
    .C(CLK_BUFGP_66),
    .D(MULResult[45]),
    .Q(\MULResultReg/Q [45])
  );
  FD   \MULResultReg/Q_44  (
    .C(CLK_BUFGP_66),
    .D(MULResult[44]),
    .Q(\MULResultReg/Q [44])
  );
  FD   \MULResultReg/Q_43  (
    .C(CLK_BUFGP_66),
    .D(MULResult[43]),
    .Q(\MULResultReg/Q [43])
  );
  FD   \MULResultReg/Q_42  (
    .C(CLK_BUFGP_66),
    .D(MULResult[42]),
    .Q(\MULResultReg/Q [42])
  );
  FD   \MULResultReg/Q_41  (
    .C(CLK_BUFGP_66),
    .D(MULResult[41]),
    .Q(\MULResultReg/Q [41])
  );
  FD   \MULResultReg/Q_40  (
    .C(CLK_BUFGP_66),
    .D(MULResult[40]),
    .Q(\MULResultReg/Q [40])
  );
  FD   \MULResultReg/Q_39  (
    .C(CLK_BUFGP_66),
    .D(MULResult[39]),
    .Q(\MULResultReg/Q [39])
  );
  FD   \MULResultReg/Q_38  (
    .C(CLK_BUFGP_66),
    .D(MULResult[38]),
    .Q(\MULResultReg/Q [38])
  );
  FD   \MULResultReg/Q_37  (
    .C(CLK_BUFGP_66),
    .D(MULResult[37]),
    .Q(\MULResultReg/Q [37])
  );
  FD   \MULResultReg/Q_36  (
    .C(CLK_BUFGP_66),
    .D(MULResult[36]),
    .Q(\MULResultReg/Q [36])
  );
  FD   \MULResultReg/Q_35  (
    .C(CLK_BUFGP_66),
    .D(MULResult[35]),
    .Q(\MULResultReg/Q [35])
  );
  FD   \MULResultReg/Q_34  (
    .C(CLK_BUFGP_66),
    .D(MULResult[34]),
    .Q(\MULResultReg/Q [34])
  );
  FD   \MULResultReg/Q_33  (
    .C(CLK_BUFGP_66),
    .D(MULResult[33]),
    .Q(\MULResultReg/Q [33])
  );
  FD   \MULResultReg/Q_32  (
    .C(CLK_BUFGP_66),
    .D(MULResult[32]),
    .Q(\MULResultReg/Q [32])
  );
  FD   \MULResultReg/Q_31  (
    .C(CLK_BUFGP_66),
    .D(MULResult[31]),
    .Q(\MULResultReg/Q [31])
  );
  FD   \MULResultReg/Q_30  (
    .C(CLK_BUFGP_66),
    .D(MULResult[30]),
    .Q(\MULResultReg/Q [30])
  );
  FD   \MULResultReg/Q_29  (
    .C(CLK_BUFGP_66),
    .D(MULResult[29]),
    .Q(\MULResultReg/Q [29])
  );
  FD   \MULResultReg/Q_28  (
    .C(CLK_BUFGP_66),
    .D(MULResult[28]),
    .Q(\MULResultReg/Q [28])
  );
  FD   \MULResultReg/Q_27  (
    .C(CLK_BUFGP_66),
    .D(MULResult[27]),
    .Q(\MULResultReg/Q [27])
  );
  FD   \MULResultReg/Q_26  (
    .C(CLK_BUFGP_66),
    .D(MULResult[26]),
    .Q(\MULResultReg/Q [26])
  );
  FD   \MULResultReg/Q_25  (
    .C(CLK_BUFGP_66),
    .D(MULResult[25]),
    .Q(\MULResultReg/Q [25])
  );
  FD   \MULResultReg/Q_24  (
    .C(CLK_BUFGP_66),
    .D(MULResult[24]),
    .Q(\MULResultReg/Q [24])
  );
  FD   \MULResultReg/Q_23  (
    .C(CLK_BUFGP_66),
    .D(MULResult[23]),
    .Q(\MULResultReg/Q [23])
  );
  FD   \MULResultReg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(MULResult[22]),
    .Q(\MULResultReg/Q [22])
  );
  FD   \MULResultReg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(MULResult[21]),
    .Q(\MULResultReg/Q [21])
  );
  FD   \MULResultReg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(MULResult[20]),
    .Q(\MULResultReg/Q [20])
  );
  FD   \MULResultReg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(MULResult[19]),
    .Q(\MULResultReg/Q [19])
  );
  FD   \MULResultReg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(MULResult[18]),
    .Q(\MULResultReg/Q [18])
  );
  FD   \MULResultReg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(MULResult[17]),
    .Q(\MULResultReg/Q [17])
  );
  FD   \MULResultReg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(MULResult[16]),
    .Q(\MULResultReg/Q [16])
  );
  FD   \MULResultReg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(MULResult[15]),
    .Q(\MULResultReg/Q [15])
  );
  FD   \MULResultReg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(MULResult[14]),
    .Q(\MULResultReg/Q [14])
  );
  FD   \MULResultReg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(MULResult[13]),
    .Q(\MULResultReg/Q [13])
  );
  FD   \MULResultReg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(MULResult[12]),
    .Q(\MULResultReg/Q [12])
  );
  FD   \MULResultReg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(MULResult[11]),
    .Q(\MULResultReg/Q [11])
  );
  FD   \MULResultReg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(MULResult[10]),
    .Q(\MULResultReg/Q [10])
  );
  FD   \MULResultReg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(MULResult[9]),
    .Q(\MULResultReg/Q [9])
  );
  FD   \MULResultReg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(MULResult[8]),
    .Q(\MULResultReg/Q [8])
  );
  FD   \MULResultReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(MULResult[7]),
    .Q(\MULResultReg/Q [7])
  );
  FD   \MULResultReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(MULResult[6]),
    .Q(\MULResultReg/Q [6])
  );
  FD   \MULResultReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(MULResult[5]),
    .Q(\MULResultReg/Q [5])
  );
  FD   \MULResultReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(MULResult[4]),
    .Q(\MULResultReg/Q [4])
  );
  FD   \MULResultReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(MULResult[3]),
    .Q(\MULResultReg/Q [3])
  );
  FD   \MULResultReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(MULResult[2]),
    .Q(\MULResultReg/Q [2])
  );
  FD   \MULResultReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(MULResult[1]),
    .Q(\MULResultReg/Q [1])
  );
  FD   \MULResultReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(MULResult[0]),
    .Q(\MULResultReg/Q [0])
  );
  FD   \FinalFractionReg/Q_22  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[22]),
    .Q(\FinalFractionReg/Q [22])
  );
  FD   \FinalFractionReg/Q_21  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[21]),
    .Q(\FinalFractionReg/Q [21])
  );
  FD   \FinalFractionReg/Q_20  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[20]),
    .Q(\FinalFractionReg/Q [20])
  );
  FD   \FinalFractionReg/Q_19  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[19]),
    .Q(\FinalFractionReg/Q [19])
  );
  FD   \FinalFractionReg/Q_18  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[18]),
    .Q(\FinalFractionReg/Q [18])
  );
  FD   \FinalFractionReg/Q_17  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[17]),
    .Q(\FinalFractionReg/Q [17])
  );
  FD   \FinalFractionReg/Q_16  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[16]),
    .Q(\FinalFractionReg/Q [16])
  );
  FD   \FinalFractionReg/Q_15  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[15]),
    .Q(\FinalFractionReg/Q [15])
  );
  FD   \FinalFractionReg/Q_14  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[14]),
    .Q(\FinalFractionReg/Q [14])
  );
  FD   \FinalFractionReg/Q_13  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[13]),
    .Q(\FinalFractionReg/Q [13])
  );
  FD   \FinalFractionReg/Q_12  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[12]),
    .Q(\FinalFractionReg/Q [12])
  );
  FD   \FinalFractionReg/Q_11  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[11]),
    .Q(\FinalFractionReg/Q [11])
  );
  FD   \FinalFractionReg/Q_10  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[10]),
    .Q(\FinalFractionReg/Q [10])
  );
  FD   \FinalFractionReg/Q_9  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[9]),
    .Q(\FinalFractionReg/Q [9])
  );
  FD   \FinalFractionReg/Q_8  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[8]),
    .Q(\FinalFractionReg/Q [8])
  );
  FD   \FinalFractionReg/Q_7  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[7]),
    .Q(\FinalFractionReg/Q [7])
  );
  FD   \FinalFractionReg/Q_6  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[6]),
    .Q(\FinalFractionReg/Q [6])
  );
  FD   \FinalFractionReg/Q_5  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[5]),
    .Q(\FinalFractionReg/Q [5])
  );
  FD   \FinalFractionReg/Q_4  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[4]),
    .Q(\FinalFractionReg/Q [4])
  );
  FD   \FinalFractionReg/Q_3  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[3]),
    .Q(\FinalFractionReg/Q [3])
  );
  FD   \FinalFractionReg/Q_2  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[2]),
    .Q(\FinalFractionReg/Q [2])
  );
  FD   \FinalFractionReg/Q_1  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[1]),
    .Q(\FinalFractionReg/Q [1])
  );
  FD   \FinalFractionReg/Q_0  (
    .C(CLK_BUFGP_66),
    .D(FinalFraction[0]),
    .Q(\FinalFractionReg/Q [0])
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<7>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<6>_1616 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>1_3151 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>  (
    .I0(\inputOperand1/Q [30]),
    .I1(\inputOperand2/Q [30]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>_1615 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<6>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<5>_1618 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<6>_1617 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<6> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<6>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<5>_1618 ),
    .DI(\inputOperand1/Q [29]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<6>_1617 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<6>_1616 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<6>  (
    .I0(\inputOperand1/Q [29]),
    .I1(\inputOperand2/Q [29]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<6>_1617 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<5>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<4>_1620 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<5>_1619 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<5> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<5>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<4>_1620 ),
    .DI(\inputOperand1/Q [28]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<5>_1619 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<5>_1618 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<5>  (
    .I0(\inputOperand1/Q [28]),
    .I1(\inputOperand2/Q [28]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<5>_1619 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<4>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<3>_1622 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<4>_1621 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<4> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<4>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<3>_1622 ),
    .DI(\inputOperand1/Q [27]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<4>_1621 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<4>_1620 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<4>  (
    .I0(\inputOperand1/Q [27]),
    .I1(\inputOperand2/Q [27]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<4>_1621 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<3>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<2>_1624 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<3>_1623 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<3> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<3>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<2>_1624 ),
    .DI(\inputOperand1/Q [26]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<3>_1623 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<3>_1622 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<3>  (
    .I0(\inputOperand1/Q [26]),
    .I1(\inputOperand2/Q [26]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<3>_1623 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<2>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<1>_1626 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<2>_1625 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<2> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<2>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<1>_1626 ),
    .DI(\inputOperand1/Q [25]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<2>_1625 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<2>_1624 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<2>  (
    .I0(\inputOperand1/Q [25]),
    .I1(\inputOperand2/Q [25]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<2>_1625 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<1>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<0>_1628 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<1>_1627 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<1> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<1>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<0>_1628 ),
    .DI(\inputOperand1/Q [24]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<1>_1627 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<1>_1626 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<1>  (
    .I0(\inputOperand1/Q [24]),
    .I1(\inputOperand2/Q [24]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<1>_1627 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_xor<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<0>_1629 ),
    .O(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<0> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .DI(\inputOperand1/Q [23]),
    .S(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<0>_1629 ),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_cy<0>_1628 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<0>  (
    .I0(\inputOperand1/Q [23]),
    .I1(\inputOperand2/Q [23]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<0>_1629 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<7>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<6>_1630 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>_1615 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<7> )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<6>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<5>_1632 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<6>_1631 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<6> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<6>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<5>_1632 ),
    .DI(\inputOperand2/Q [29]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<6>_1631 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<6>_1630 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<6>  (
    .I0(\inputOperand2/Q [29]),
    .I1(\inputOperand1/Q [29]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<6>_1631 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<5>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<4>_1634 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<5>_1633 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<5> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<5>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<4>_1634 ),
    .DI(\inputOperand2/Q [28]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<5>_1633 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<5>_1632 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<5>  (
    .I0(\inputOperand2/Q [28]),
    .I1(\inputOperand1/Q [28]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<5>_1633 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<4>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<3>_1636 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<4>_1635 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<4> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<4>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<3>_1636 ),
    .DI(\inputOperand2/Q [27]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<4>_1635 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<4>_1634 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<4>  (
    .I0(\inputOperand2/Q [27]),
    .I1(\inputOperand1/Q [27]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<4>_1635 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<3>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<2>_1638 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<3>_1637 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<3> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<3>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<2>_1638 ),
    .DI(\inputOperand2/Q [26]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<3>_1637 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<3>_1636 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<3>  (
    .I0(\inputOperand2/Q [26]),
    .I1(\inputOperand1/Q [26]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<3>_1637 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<2>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<1>_1640 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<2>_1639 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<2> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<2>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<1>_1640 ),
    .DI(\inputOperand2/Q [25]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<2>_1639 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<2>_1638 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<2>  (
    .I0(\inputOperand2/Q [25]),
    .I1(\inputOperand1/Q [25]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<2>_1639 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<1>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<0>_1642 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<1>_1641 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<1> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<1>  (
    .CI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<0>_1642 ),
    .DI(\inputOperand2/Q [24]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<1>_1641 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<1>_1640 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<1>  (
    .I0(\inputOperand2/Q [24]),
    .I1(\inputOperand1/Q [24]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<1>_1641 )
  );
  XORCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_xor<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .LI(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<0>_1643 ),
    .O(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<0> )
  );
  MUXCY   \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .DI(\inputOperand2/Q [23]),
    .S(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<0>_1643 ),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_cy<0>_1642 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<0>  (
    .I0(\inputOperand2/Q [23]),
    .I1(\inputOperand1/Q [23]),
    .O(\Stage1/ExponDifference/Msub_Exponent2[7]_Exponent1[7]_sub_2_OUT_lut<0>_1643 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<26>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<25>_1669 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<26>_1668 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<26> )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<25>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1671 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<25>_1670 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<25> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<25>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1671 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<25>_1670 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<25>_1669 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<24>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1673 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1672 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<24> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<24>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1673 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1672 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1671 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<23>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1675 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1674 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<23> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<23>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1675 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1674 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1673 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<22>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1677 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1676 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<22> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<22>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1677 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1676 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1675 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<21>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1679 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1678 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<21> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<21>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1679 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1678 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1677 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<20>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1681 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1680 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<20> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<20>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1681 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1680 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1679 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<19>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1683 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1682 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<19> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<19>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1683 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1682 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1681 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<18>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1685 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1684 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<18> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<18>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1685 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1684 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1683 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<17>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1687 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1686 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<17> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<17>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1687 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1686 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1685 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<16>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1689 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1688 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<16> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<16>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1689 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1688 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1687 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<15>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1691 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1690 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<15> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<15>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1691 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1690 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1689 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<14>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1693 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1692 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<14> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<14>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1693 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1692 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1691 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<13>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1695 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1694 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<13> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<13>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1695 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1694 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1693 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<12>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1697 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1696 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<12> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<12>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1697 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1696 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1695 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<11>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1699 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1698 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<11> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<11>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1699 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1698 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1697 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<10>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1701 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1700 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<10> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<10>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1701 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1700 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1699 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<9>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1703 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1702 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<9> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<9>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1703 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1702 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1701 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<8>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1705 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1704 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<8> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<8>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1705 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1704 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1703 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<7>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1707 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1706 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<7> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<7>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1707 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1706 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1705 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<6>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1709 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1708 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<6> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<6>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1709 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1708 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1707 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<5>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1711 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1710 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<5> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<5>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1711 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1710 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1709 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<4>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1713 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1712 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<4> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<4>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1713 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1712 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1711 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<3>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1715 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1714 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<3> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<3>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1715 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1714 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1713 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<2>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<1>_1717 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1716 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<2> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<2>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<1>_1717 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1716 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1715 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<1>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<0>_1719 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<1>_1718 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<1> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<1>  (
    .CI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<0>_1719 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<1>_1718 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<1>_1717 )
  );
  XORCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_xor<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .LI(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<0>_1720 ),
    .O(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<0> )
  );
  MUXCY   \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<0>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<0>_1720 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_cy<0>_1719 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<25>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1722 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<26> )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<24>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1724 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1723 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<25> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<24>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1724 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1723 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<24>_1722 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<23>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1726 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1725 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<24> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<23>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1726 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1725 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<23>_1724 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<22>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1728 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1727 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<23> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<22>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1728 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1727 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<22>_1726 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<21>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1730 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1729 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<22> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<21>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1730 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1729 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<21>_1728 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<20>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1732 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1731 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<21> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<20>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1732 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1731 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<20>_1730 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<19>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1734 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1733 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<20> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<19>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1734 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1733 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<19>_1732 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<18>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1736 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1735 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<19> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<18>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1736 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1735 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<18>_1734 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<17>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1738 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1737 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<18> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<17>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1738 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1737 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<17>_1736 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<16>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1740 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1739 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<17> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<16>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1740 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1739 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<16>_1738 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<15>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1742 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1741 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<16> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<15>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1742 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1741 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<15>_1740 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<14>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1744 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1743 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<15> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<14>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1744 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1743 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<14>_1742 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<13>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1746 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1745 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<14> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<13>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1746 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1745 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<13>_1744 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<12>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1748 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1747 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<13> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<12>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1748 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1747 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<12>_1746 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<11>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1750 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1749 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<12> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<11>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1750 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1749 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<11>_1748 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<10>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1752 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1751 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<11> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<10>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1752 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1751 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<10>_1750 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<9>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1754 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1753 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<10> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<9>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1754 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1753 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<9>_1752 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<8>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1756 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1755 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<9> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<8>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1756 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1755 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<8>_1754 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<7>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1758 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1757 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<8> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<7>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1758 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1757 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<7>_1756 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<6>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1760 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1759 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<7> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<6>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1760 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1759 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<6>_1758 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<5>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1762 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1761 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<6> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<5>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1762 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1761 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<5>_1760 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<4>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1764 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1763 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<5> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<4>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1764 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1763 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<4>_1762 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<3>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1766 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1765 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<4> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<3>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1766 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1765 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<3>_1764 )
  );
  XORCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_xor<2>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .LI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1767 ),
    .O(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<3> )
  );
  MUXCY   \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<2>  (
    .CI(\MULFirstStage/Byte3Byte3/X77 ),
    .DI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .S(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1767 ),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_cy<2>_1766 )
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<7>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [6]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [7]),
    .O(MDFinalExponent[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<7>  (
    .I0(\MDExponentReg/Q [7]),
    .I1(\Exponent1Reg/Q [7]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [7])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<6>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [5]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [6]),
    .O(MDFinalExponent[6])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<6>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [5]),
    .DI(\MDExponentReg/Q [6]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [6]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<6>  (
    .I0(\MDExponentReg/Q [6]),
    .I1(\Exponent1Reg/Q [6]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [6])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<5>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [4]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [5]),
    .O(MDFinalExponent[5])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<5>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [4]),
    .DI(\MDExponentReg/Q [5]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [5]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<5>  (
    .I0(\MDExponentReg/Q [5]),
    .I1(\Exponent1Reg/Q [5]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [5])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<4>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [3]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [4]),
    .O(MDFinalExponent[4])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<4>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [3]),
    .DI(\MDExponentReg/Q [4]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [4]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<4>  (
    .I0(\MDExponentReg/Q [4]),
    .I1(\Exponent1Reg/Q [4]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [4])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<3>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [2]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [3]),
    .O(MDFinalExponent[3])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<3>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [2]),
    .DI(\MDExponentReg/Q [3]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [3]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<3>  (
    .I0(\MDExponentReg/Q [3]),
    .I1(\Exponent1Reg/Q [3]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [3])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<2>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [1]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [2]),
    .O(MDFinalExponent[2])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<2>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [1]),
    .DI(\MDExponentReg/Q [2]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [2]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<2>  (
    .I0(\MDExponentReg/Q [2]),
    .I1(\Exponent1Reg/Q [2]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [2])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<1>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [0]),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [1]),
    .O(MDFinalExponent[1])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<1>  (
    .CI(\Stage2/FinalMDExponent/Madd_n0006_cy [0]),
    .DI(\MDExponentReg/Q [1]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [1]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<1>  (
    .I0(\MDExponentReg/Q [1]),
    .I1(\Exponent1Reg/Q [1]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [1])
  );
  XORCY   \Stage2/FinalMDExponent/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\Stage2/FinalMDExponent/Madd_n0006_lut [0]),
    .O(MDFinalExponent[0])
  );
  MUXCY   \Stage2/FinalMDExponent/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MDExponentReg/Q [0]),
    .S(\Stage2/FinalMDExponent/Madd_n0006_lut [0]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage2/FinalMDExponent/Madd_n0006_lut<0>  (
    .I0(\MDExponentReg/Q [0]),
    .I1(\Exponent1Reg/Q [0]),
    .O(\Stage2/FinalMDExponent/Madd_n0006_lut [0])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<7>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [6]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [7]),
    .O(\Stage4/ExponentAdderResult1 [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<7>  (
    .I0(\ResultExponentReg/Q [7]),
    .I1(\Stage4/UpdateExponet [5]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [7])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<6>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [5]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [6]),
    .O(\Stage4/ExponentAdderResult1 [6])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<6>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [5]),
    .DI(\ResultExponentReg/Q [6]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [6]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<6>  (
    .I0(\ResultExponentReg/Q [6]),
    .I1(\Stage4/UpdateExponet [5]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [6])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<5>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [4]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [5]),
    .O(\Stage4/ExponentAdderResult1 [5])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<5>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [4]),
    .DI(\ResultExponentReg/Q [5]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [5]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<5>  (
    .I0(\ResultExponentReg/Q [5]),
    .I1(\Stage4/UpdateExponet [5]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [5])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<4>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [3]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [4]),
    .O(\Stage4/ExponentAdderResult1 [4])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<4>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [3]),
    .DI(\ResultExponentReg/Q [4]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [4]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<4>  (
    .I0(\ResultExponentReg/Q [4]),
    .I1(\Stage4/UpdateExponet [4]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [4])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<3>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [2]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [3]),
    .O(\Stage4/ExponentAdderResult1 [3])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<3>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [2]),
    .DI(\ResultExponentReg/Q [3]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [3]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [3])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<2>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [1]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [2]),
    .O(\Stage4/ExponentAdderResult1 [2])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<2>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [1]),
    .DI(\ResultExponentReg/Q [2]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [2]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [2])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<1>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [0]),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [1]),
    .O(\Stage4/ExponentAdderResult1 [1])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<1>  (
    .CI(\Stage4/ExponentAdder1/Madd_n0006_cy [0]),
    .DI(\ResultExponentReg/Q [1]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [1]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [1])
  );
  XORCY   \Stage4/ExponentAdder1/Madd_n0006_xor<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\Stage4/ExponentAdder1/Madd_n0006_lut [0]),
    .O(\Stage4/ExponentAdderResult1 [0])
  );
  MUXCY   \Stage4/ExponentAdder1/Madd_n0006_cy<0>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\ResultExponentReg/Q [0]),
    .S(\Stage4/ExponentAdder1/Madd_n0006_lut [0]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_cy [0])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [14]),
    .O(Result33[14])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte3Byte3/C412 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [14]),
    .O(Result33[15])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [13]),
    .O(Result33[13])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte3Byte3/C411 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [12]),
    .O(Result33[12])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte3Byte3/C410 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [11]),
    .O(Result33[11])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte3Byte3/C49 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [10]),
    .O(Result33[10])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte3Byte3/C48 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [9]),
    .O(Result33[9])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte3Byte3/C47 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [8]),
    .O(Result33[8])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte3Byte3/C46 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [7]),
    .O(Result33[7])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte3Byte3/C45 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [6]),
    .O(Result33[6])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte3Byte3/C44 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [5]),
    .O(Result33[5])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte3Byte3/C43 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [4]),
    .O(Result33[4])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte3Byte3/C42 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [3]),
    .O(Result33[3])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte3Byte3/C41_mand1 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [2]),
    .O(Result33[2])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte3Byte3/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte3Byte3/S41 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte3Byte3/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte3Byte3/Madd_Result_lut [1]),
    .O(Result33[1])
  );
  MUXCY   \MULFirstStage/Byte3Byte3/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte3Byte3/X01_mand1_2089 ),
    .S(\MULFirstStage/Byte3Byte3/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [17]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [14]),
    .O(Result32[14])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte3Byte2/C412 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [14]),
    .O(Result32[15])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [13]),
    .O(Result32[13])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte3Byte2/C411 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [12]),
    .O(Result32[12])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte3Byte2/C410 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [11]),
    .O(Result32[11])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte3Byte2/C49 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [10]),
    .O(Result32[10])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte3Byte2/C48 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [9]),
    .O(Result32[9])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte3Byte2/C47 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [8]),
    .O(Result32[8])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte3Byte2/C46 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [7]),
    .O(Result32[7])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte3Byte2/C45 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [6]),
    .O(Result32[6])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte3Byte2/C44 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [5]),
    .O(Result32[5])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte3Byte2/C43 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [4]),
    .O(Result32[4])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte3Byte2/C42 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [3]),
    .O(Result32[3])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte3Byte2/C41_mand1 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [2]),
    .O(Result32[2])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte3Byte2/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte3Byte2/S41 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte3Byte2/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte3Byte2/Madd_Result_lut [1]),
    .O(Result32[1])
  );
  MUXCY   \MULFirstStage/Byte3Byte2/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte3Byte2/X01_mand1_2183 ),
    .S(\MULFirstStage/Byte3Byte2/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [9]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [14]),
    .O(Result31[14])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte3Byte1/C412 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [14]),
    .O(Result31[15])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [13]),
    .O(Result31[13])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte3Byte1/C411 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [12]),
    .O(Result31[12])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte3Byte1/C410 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [11]),
    .O(Result31[11])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte3Byte1/C49 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [10]),
    .O(Result31[10])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte3Byte1/C48 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [9]),
    .O(Result31[9])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte3Byte1/C47 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [8]),
    .O(Result31[8])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte3Byte1/C46 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [7]),
    .O(Result31[7])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte3Byte1/C45 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [6]),
    .O(Result31[6])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte3Byte1/C44 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [5]),
    .O(Result31[5])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte3Byte1/C43 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [4]),
    .O(Result31[4])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte3Byte1/C42 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [3]),
    .O(Result31[3])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte3Byte1/C41_mand1 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [2]),
    .O(Result31[2])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte3Byte1/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte3Byte1/S41 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte3Byte1/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte3Byte1/Madd_Result_lut [1]),
    .O(Result31[1])
  );
  MUXCY   \MULFirstStage/Byte3Byte1/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte3Byte1/X01_mand1_2277 ),
    .S(\MULFirstStage/Byte3Byte1/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [1]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [14]),
    .O(Result23[14])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte2Byte3/C412 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [14]),
    .O(Result23[15])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [13]),
    .O(Result23[13])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte2Byte3/C411 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [12]),
    .O(Result23[12])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte2Byte3/C410 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [11]),
    .O(Result23[11])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte2Byte3/C49 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [10]),
    .O(Result23[10])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte2Byte3/C48 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [9]),
    .O(Result23[9])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte2Byte3/C47 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [8]),
    .O(Result23[8])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte2Byte3/C46 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [7]),
    .O(Result23[7])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte2Byte3/C45 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [6]),
    .O(Result23[6])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte2Byte3/C44 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [5]),
    .O(Result23[5])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte2Byte3/C43 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [4]),
    .O(Result23[4])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte2Byte3/C42 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [3]),
    .O(Result23[3])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte2Byte3/C41_mand1 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [2]),
    .O(Result23[2])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte2Byte3/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte2Byte3/S41 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte2Byte3/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte2Byte3/Madd_Result_lut [1]),
    .O(Result23[1])
  );
  MUXCY   \MULFirstStage/Byte2Byte3/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte2Byte3/X01_mand1_2372 ),
    .S(\MULFirstStage/Byte2Byte3/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [17]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [14]),
    .O(Result22[14])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte2Byte2/C412 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [14]),
    .O(Result22[15])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [13]),
    .O(Result22[13])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte2Byte2/C411 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [12]),
    .O(Result22[12])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte2Byte2/C410 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [11]),
    .O(Result22[11])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte2Byte2/C49 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [10]),
    .O(Result22[10])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte2Byte2/C48 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [9]),
    .O(Result22[9])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte2Byte2/C47 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [8]),
    .O(Result22[8])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte2Byte2/C46 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [7]),
    .O(Result22[7])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte2Byte2/C45 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [6]),
    .O(Result22[6])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte2Byte2/C44 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [5]),
    .O(Result22[5])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte2Byte2/C43 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [4]),
    .O(Result22[4])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte2Byte2/C42 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [3]),
    .O(Result22[3])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte2Byte2/C41_mand1 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [2]),
    .O(Result22[2])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte2Byte2/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte2Byte2/S41 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte2Byte2/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte2Byte2/Madd_Result_lut [1]),
    .O(Result22[1])
  );
  MUXCY   \MULFirstStage/Byte2Byte2/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte2Byte2/X01_mand1_2467 ),
    .S(\MULFirstStage/Byte2Byte2/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [9]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [14]),
    .O(Result21[14])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte2Byte1/C412 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [14]),
    .O(Result21[15])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [13]),
    .O(Result21[13])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte2Byte1/C411 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [12]),
    .O(Result21[12])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte2Byte1/C410 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [11]),
    .O(Result21[11])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte2Byte1/C49 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [10]),
    .O(Result21[10])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte2Byte1/C48 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [9]),
    .O(Result21[9])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte2Byte1/C47 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [8]),
    .O(Result21[8])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte2Byte1/C46 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [7]),
    .O(Result21[7])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte2Byte1/C45 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [6]),
    .O(Result21[6])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte2Byte1/C44 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [5]),
    .O(Result21[5])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte2Byte1/C43 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [4]),
    .O(Result21[4])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte2Byte1/C42 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [3]),
    .O(Result21[3])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte2Byte1/C41_mand1 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [2]),
    .O(Result21[2])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte2Byte1/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte2Byte1/S41 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte2Byte1/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte2Byte1/Madd_Result_lut [1]),
    .O(Result21[1])
  );
  MUXCY   \MULFirstStage/Byte2Byte1/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte2Byte1/X01_mand1_2561 ),
    .S(\MULFirstStage/Byte2Byte1/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [1]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [14]),
    .O(Result13[14])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte1Byte3/C412 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [14]),
    .O(Result13[15])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [13]),
    .O(Result13[13])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte1Byte3/C411 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [12]),
    .O(Result13[12])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte1Byte3/C410 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [11]),
    .O(Result13[11])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte1Byte3/C49 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [10]),
    .O(Result13[10])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte1Byte3/C48 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [9]),
    .O(Result13[9])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte1Byte3/C47 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [8]),
    .O(Result13[8])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte1Byte3/C46 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [7]),
    .O(Result13[7])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte1Byte3/C45 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [6]),
    .O(Result13[6])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte1Byte3/C44 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [5]),
    .O(Result13[5])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte1Byte3/C43 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [4]),
    .O(Result13[4])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte1Byte3/C42 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [3]),
    .O(Result13[3])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte1Byte3/C41_mand1 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [2]),
    .O(Result13[2])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte1Byte3/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte1Byte3/S41 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte1Byte3/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte1Byte3/Madd_Result_lut [1]),
    .O(Result13[1])
  );
  MUXCY   \MULFirstStage/Byte1Byte3/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte1Byte3/X01_mand1_2655 ),
    .S(\MULFirstStage/Byte1Byte3/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [17]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [14]),
    .O(Result12[14])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte1Byte2/C412 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [14]),
    .O(Result12[15])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [13]),
    .O(Result12[13])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte1Byte2/C411 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [12]),
    .O(Result12[12])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte1Byte2/C410 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [11]),
    .O(Result12[11])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte1Byte2/C49 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [10]),
    .O(Result12[10])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte1Byte2/C48 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [9]),
    .O(Result12[9])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte1Byte2/C47 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [8]),
    .O(Result12[8])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte1Byte2/C46 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [7]),
    .O(Result12[7])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte1Byte2/C45 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [6]),
    .O(Result12[6])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte1Byte2/C44 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [5]),
    .O(Result12[5])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte1Byte2/C43 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [4]),
    .O(Result12[4])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte1Byte2/C42 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [3]),
    .O(Result12[3])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte1Byte2/C41_mand1 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [2]),
    .O(Result12[2])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte1Byte2/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte1Byte2/S41 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte1Byte2/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte1Byte2/Madd_Result_lut [1]),
    .O(Result12[1])
  );
  MUXCY   \MULFirstStage/Byte1Byte2/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte1Byte2/X01_mand1_2750 ),
    .S(\MULFirstStage/Byte1Byte2/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [9]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [1])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<14>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [13]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [14]),
    .O(Result11[14])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<14>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [13]),
    .DI(\MULFirstStage/Byte1Byte1/C412 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [14]),
    .O(Result11[15])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<13>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [12]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [13]),
    .O(Result11[13])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<13>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [12]),
    .DI(\MULFirstStage/Byte1Byte1/C411 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [13]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [13])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<12>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [11]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [12]),
    .O(Result11[12])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<12>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [11]),
    .DI(\MULFirstStage/Byte1Byte1/C410 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [12]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [12])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<11>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [10]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [11]),
    .O(Result11[11])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<11>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [10]),
    .DI(\MULFirstStage/Byte1Byte1/C49 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [11]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [11])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<10>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [9]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [10]),
    .O(Result11[10])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<10>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [9]),
    .DI(\MULFirstStage/Byte1Byte1/C48 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [10]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [10])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<9>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [8]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [9]),
    .O(Result11[9])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<9>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [8]),
    .DI(\MULFirstStage/Byte1Byte1/C47 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [9]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [9])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<8>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [7]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [8]),
    .O(Result11[8])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<8>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [7]),
    .DI(\MULFirstStage/Byte1Byte1/C46 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [8]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [8])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<7>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [6]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [7]),
    .O(Result11[7])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<7>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [6]),
    .DI(\MULFirstStage/Byte1Byte1/C45 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [7]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [7])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<6>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [5]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [6]),
    .O(Result11[6])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<6>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [5]),
    .DI(\MULFirstStage/Byte1Byte1/C44 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [6]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [6])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<5>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [4]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [5]),
    .O(Result11[5])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<5>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [4]),
    .DI(\MULFirstStage/Byte1Byte1/C43 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [5]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [5])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<4>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [3]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [4]),
    .O(Result11[4])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<4>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [3]),
    .DI(\MULFirstStage/Byte1Byte1/C42 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [4]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [4])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<3>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [2]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [3]),
    .O(Result11[3])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<3>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [2]),
    .DI(\MULFirstStage/Byte1Byte1/C41_mand1 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [3]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [3])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<2>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [1]),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [2]),
    .O(Result11[2])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<2>  (
    .CI(\MULFirstStage/Byte1Byte1/Madd_Result_cy [1]),
    .DI(\MULFirstStage/Byte1Byte1/S41 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [2]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [2])
  );
  XORCY   \MULFirstStage/Byte1Byte1/Madd_Result_xor<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .LI(\MULFirstStage/Byte1Byte1/Madd_Result_lut [1]),
    .O(Result11[1])
  );
  MUXCY   \MULFirstStage/Byte1Byte1/Madd_Result_cy<1>  (
    .CI(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .DI(\MULFirstStage/Byte1Byte1/X01_mand1_2844 ),
    .S(\MULFirstStage/Byte1Byte1/Madd_Result_lut [1]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<1>  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [1]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SignThirdStage/SignMux/Mmux_Output11  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ADDSignReg/Q_0_256 ),
    .I2(\ExclusiveSignReg2/Q_0_255 ),
    .O(ResultSign)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Stage3/EffCarry1  (
    .I0(\Stage3/TwosCompAdder/Madd_n0006_cy [26]),
    .I1(\EffectivOperationReg2/Q_0_400 ),
    .I2(\AlgorthimSelReg2/Q_0_409 ),
    .O(EffCarry)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Stage1/BaseAdder/Madd_n0006_xor<1>11  (
    .I0(\inputOperand2/Q [24]),
    .I1(\inputOperand2/Q [23]),
    .O(MDExponent[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output81  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [7]),
    .I2(\MDFinalExponentReg/Q [7]),
    .O(ResultExponent[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output71  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [6]),
    .I2(\MDFinalExponentReg/Q [6]),
    .O(ResultExponent[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output61  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [5]),
    .I2(\MDFinalExponentReg/Q [5]),
    .O(ResultExponent[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output51  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [4]),
    .I2(\MDFinalExponentReg/Q [4]),
    .O(ResultExponent[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output41  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [3]),
    .I2(\MDFinalExponentReg/Q [3]),
    .O(ResultExponent[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output31  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [2]),
    .I2(\MDFinalExponentReg/Q [2]),
    .O(ResultExponent[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output21  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [1]),
    .I2(\MDFinalExponentReg/Q [1]),
    .O(ResultExponent[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage3/ExponentMux/Mmux_Output11  (
    .I0(\AlgorthimSelReg2/Q_0_409 ),
    .I1(\ExponentBaseReg/Q [0]),
    .I2(\MDFinalExponentReg/Q [0]),
    .O(ResultExponent[0])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output11  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [1]),
    .I3(\Stage5/Rounding/n0006 [0]),
    .I4(\TobeRoundedReg/Q [0]),
    .O(FinalFraction[0])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output121  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [2]),
    .I3(\Stage5/Rounding/n0006 [1]),
    .I4(\TobeRoundedReg/Q [1]),
    .O(FinalFraction[1])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output191  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [6]),
    .I3(\Stage5/Rounding/n0006 [5]),
    .I4(\TobeRoundedReg/Q [5]),
    .O(FinalFraction[5])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output201  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [7]),
    .I3(\Stage5/Rounding/n0006 [6]),
    .I4(\TobeRoundedReg/Q [6]),
    .O(FinalFraction[6])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output211  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [8]),
    .I3(\Stage5/Rounding/n0006 [7]),
    .I4(\TobeRoundedReg/Q [7]),
    .O(FinalFraction[7])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output221  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [9]),
    .I3(\Stage5/Rounding/n0006 [8]),
    .I4(\TobeRoundedReg/Q [8]),
    .O(FinalFraction[8])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output231  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [10]),
    .I3(\Stage5/Rounding/n0006 [9]),
    .I4(\TobeRoundedReg/Q [9]),
    .O(FinalFraction[9])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output51  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [14]),
    .I3(\Stage5/Rounding/n0006 [13]),
    .I4(\TobeRoundedReg/Q [13]),
    .O(FinalFraction[13])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output61  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [15]),
    .I3(\Stage5/Rounding/n0006 [14]),
    .I4(\TobeRoundedReg/Q [14]),
    .O(FinalFraction[14])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output71  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [16]),
    .I3(\Stage5/Rounding/n0006 [15]),
    .I4(\TobeRoundedReg/Q [15]),
    .O(FinalFraction[15])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output81  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [17]),
    .I3(\Stage5/Rounding/n0006 [16]),
    .I4(\TobeRoundedReg/Q [16]),
    .O(FinalFraction[16])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage5/FractionMux/Mmux_Output91  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [18]),
    .I3(\Stage5/Rounding/n0006 [17]),
    .I4(\TobeRoundedReg/Q [17]),
    .O(FinalFraction[17])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Stage1/BaseAdder/Madd_n0006_xor<2>11  (
    .I0(\inputOperand2/Q [25]),
    .I1(\inputOperand2/Q [23]),
    .I2(\inputOperand2/Q [24]),
    .O(MDExponent[2])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \FinalExponent<3>1  (
    .I0(\ExponentUpdateReq1/Q [3]),
    .I1(\RoundControlReg/Q_0_525 ),
    .I2(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I3(\ExponentUpdateReq1/Q [2]),
    .I4(\ExponentUpdateReq1/Q [0]),
    .I5(\ExponentUpdateReq1/Q [1]),
    .O(FinalExponent[3])
  );
  LUT5 #(
    .INIT ( 32'h78F0F0F0 ))
  \FinalExponent<2>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\ExponentUpdateReq1/Q [2]),
    .I3(\ExponentUpdateReq1/Q [0]),
    .I4(\ExponentUpdateReq1/Q [1]),
    .O(FinalExponent[2])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<4>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [5]),
    .I3(\Stage5/Rounding/n0006 [4]),
    .I4(\TobeRoundedReg/Q [4]),
    .O(FinalFraction[4])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<3>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [4]),
    .I3(\Stage5/Rounding/n0006 [3]),
    .I4(\TobeRoundedReg/Q [3]),
    .O(FinalFraction[3])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<2>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [3]),
    .I3(\Stage5/Rounding/n0006 [2]),
    .I4(\TobeRoundedReg/Q [2]),
    .O(FinalFraction[2])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<22>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [23]),
    .I3(\Stage5/Rounding/n0006 [22]),
    .I4(\TobeRoundedReg/Q [22]),
    .O(FinalFraction[22])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<21>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [22]),
    .I3(\Stage5/Rounding/n0006 [21]),
    .I4(\TobeRoundedReg/Q [21]),
    .O(FinalFraction[21])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<20>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [21]),
    .I3(\Stage5/Rounding/n0006 [20]),
    .I4(\TobeRoundedReg/Q [20]),
    .O(FinalFraction[20])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<19>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [20]),
    .I3(\Stage5/Rounding/n0006 [19]),
    .I4(\TobeRoundedReg/Q [19]),
    .O(FinalFraction[19])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<18>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [19]),
    .I3(\Stage5/Rounding/n0006 [18]),
    .I4(\TobeRoundedReg/Q [18]),
    .O(FinalFraction[18])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<12>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [13]),
    .I3(\Stage5/Rounding/n0006 [12]),
    .I4(\TobeRoundedReg/Q [12]),
    .O(FinalFraction[12])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<11>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [12]),
    .I3(\Stage5/Rounding/n0006 [11]),
    .I4(\TobeRoundedReg/Q [11]),
    .O(FinalFraction[11])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \FinalFraction<10>1  (
    .I0(\RoundControlReg/Q_0_525 ),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\Stage5/Rounding/n0006 [11]),
    .I3(\Stage5/Rounding/n0006 [10]),
    .I4(\TobeRoundedReg/Q [10]),
    .O(FinalFraction[10])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \FinalExponent<1>1  (
    .I0(\ExponentUpdateReq1/Q [1]),
    .I1(\RoundControlReg/Q_0_525 ),
    .I2(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I3(\ExponentUpdateReq1/Q [0]),
    .O(FinalExponent[1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \FinalExponent<0>1  (
    .I0(\ExponentUpdateReq1/Q [0]),
    .I1(\RoundControlReg/Q_0_525 ),
    .I2(\Stage5/Rounding/Madd_n0006_cy [23]),
    .O(FinalExponent[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  ExclusiveSign1 (
    .I0(\inputOperand1/Q [31]),
    .I1(\inputOperand2/Q [31]),
    .O(ExclusiveSign)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  EffOperation1 (
    .I0(\inputOperand1/Q [31]),
    .I1(\inputOperand2/Q [31]),
    .I2(\inputOperation/Q [0]),
    .O(EffOperation)
  );
  LUT5 #(
    .INIT ( 32'hCCCC6CCC ))
  \MDExponent<6>1  (
    .I0(\inputOperand2/Q [26]),
    .I1(\inputOperand2/Q [29]),
    .I2(\inputOperand2/Q [28]),
    .I3(\inputOperand2/Q [27]),
    .I4(\MDExponent<3>_bdd0 ),
    .O(MDExponent[6])
  );
  LUT6 #(
    .INIT ( 64'h5555555595555555 ))
  \MDExponent<7>1  (
    .I0(\inputOperand2/Q [30]),
    .I1(\inputOperand2/Q [29]),
    .I2(\inputOperand2/Q [28]),
    .I3(\inputOperand2/Q [27]),
    .I4(\inputOperand2/Q [26]),
    .I5(\MDExponent<3>_bdd0 ),
    .O(MDExponent[7])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \MDExponent<3>11  (
    .I0(\inputOperand2/Q [23]),
    .I1(\inputOperand2/Q [24]),
    .I2(\inputOperand2/Q [25]),
    .O(\MDExponent<3>_bdd0 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000EA1515 ))
  \Stage1/ExponDifference/ControlnDifferMux/Mmux_Output41  (
    .I0(\Stage1/ExponDifference/preDiffer [2]),
    .I1(\Stage1/ExponDifference/npreDiffer [0]),
    .I2(\Stage1/ExponDifference/preDiffer [1]),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer [3]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(NDifference[3])
  );
  LUT6 #(
    .INIT ( 64'h00000000000007FF ))
  \Stage1/ExponDifference/ControlnDifferMux/Mmux_Output51  (
    .I0(\Stage1/ExponDifference/npreDiffer [0]),
    .I1(\Stage1/ExponDifference/preDiffer [1]),
    .I2(\Stage1/ExponDifference/preDiffer [2]),
    .I3(\Stage1/ExponDifference/preDiffer [3]),
    .I4(\Stage1/ExponDifference/preDiffer [4]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(NDifference[4])
  );
  LUT6 #(
    .INIT ( 64'h00000000006A6A6A ))
  \Stage1/ExponDifference/ControlnDifferMux/Mmux_Output31  (
    .I0(\Stage1/ExponDifference/preDiffer [2]),
    .I1(\Stage1/ExponDifference/preDiffer [1]),
    .I2(\Stage1/ExponDifference/npreDiffer [0]),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer [3]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(NDifference[2])
  );
  LUT5 #(
    .INIT ( 32'hFFFFF999 ))
  \Stage1/ExponDifference/ControlnDifferMux/Mmux_Output21  (
    .I0(\Stage1/ExponDifference/npreDiffer [0]),
    .I1(\Stage1/ExponDifference/preDiffer [1]),
    .I2(\Stage1/ExponDifference/preDiffer [4]),
    .I3(\Stage1/ExponDifference/preDiffer [3]),
    .I4(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(NDifference[1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFEAAA ))
  \Stage1/ExponDifference/ControlDifferMux/Mmux_Output11  (
    .I0(\Stage1/ExponDifference/npreDiffer [0]),
    .I1(\Stage1/ExponDifference/preDiffer [2]),
    .I2(\Stage1/ExponDifference/preDiffer [3]),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(Difference[0])
  );
  LUT5 #(
    .INIT ( 32'hFFFFEAAA ))
  \Stage1/ExponDifference/ControlDifferMux/Mmux_Output21  (
    .I0(\Stage1/ExponDifference/preDiffer [1]),
    .I1(\Stage1/ExponDifference/preDiffer [2]),
    .I2(\Stage1/ExponDifference/preDiffer [3]),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(Difference[1])
  );
  LUT6 #(
    .INIT ( 64'h7F071F013F030F00 ))
  \Stage1/ExponDifference/Sign3  (
    .I0(\inputOperand1/Q [23]),
    .I1(\inputOperand1/Q [24]),
    .I2(\inputOperand1/Q [25]),
    .I3(\inputOperand2/Q [25]),
    .I4(\inputOperand2/Q [24]),
    .I5(\inputOperand2/Q [23]),
    .O(\Stage1/ExponDifference/Sign1 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage1/ExponDifference/npreDiffer<0>1  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<0> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<0> ),
    .I2(SignOfDifference),
    .O(\Stage1/ExponDifference/npreDiffer [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage1/ExponDifference/preDiffer<1>1  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<1> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<1> ),
    .I2(SignOfDifference),
    .O(\Stage1/ExponDifference/preDiffer [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage1/ExponDifference/preDiffer<2>1  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<2> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<2> ),
    .I2(SignOfDifference),
    .O(\Stage1/ExponDifference/preDiffer [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage1/ExponDifference/preDiffer<3>1  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<3> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<3> ),
    .I2(SignOfDifference),
    .O(\Stage1/ExponDifference/preDiffer [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage1/ExponDifference/preDiffer<4>1  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<4> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<4> ),
    .I2(SignOfDifference),
    .O(\Stage1/ExponDifference/preDiffer [4])
  );
  LUT4 #(
    .INIT ( 16'hA8FD ))
  \Stage2/Difference<2>21  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\DifferenceReg/Q [0]),
    .I3(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/Difference<2>_mmx_out10 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Stage2/Difference<2>101  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\DifferenceReg/Q [2]),
    .O(\Stage2/Difference<2>_mmx_out2 )
  );
  LUT5 #(
    .INIT ( 32'h888ADDDF ))
  \Stage2/Difference<2>161  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Stage2/SignOfDifference_mmx_out22 ),
    .I3(\DifferenceReg/Q [0]),
    .I4(\Stage2/Difference<1>_mmx_out20 ),
    .O(\Stage2/Difference<2>_mmx_out8 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output161  (
    .I0(\Stage2/Difference<1>_mmx_out11 ),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\DifferenceReg/Q [3]),
    .O(\Stage2/preAligned [22])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output171  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out16 ),
    .O(\Stage2/preAligned [23])
  );
  LUT6 #(
    .INIT ( 64'h0301020013111210 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output71  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out15 ),
    .I4(\Stage2/Difference<1>_mmx_out14 ),
    .I5(\Stage2/Difference<1>_mmx_out16 ),
    .O(\Stage2/preAligned [15])
  );
  LUT6 #(
    .INIT ( 64'h1505140411011000 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output61  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out10 ),
    .I4(\Stage2/Difference<1>_mmx_out9 ),
    .I5(\Stage2/Difference<1>_mmx_out11 ),
    .O(\Stage2/preAligned [14])
  );
  LUT6 #(
    .INIT ( 64'h1110001055544454 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output51  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out2 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out3 ),
    .I5(\Stage2/Difference<2>_mmx_out10 ),
    .O(\Stage2/preAligned [13])
  );
  LUT6 #(
    .INIT ( 64'h1110001055544454 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output41  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out18 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out19 ),
    .I5(\Stage2/Difference<2>_mmx_out8 ),
    .O(\Stage2/preAligned [12])
  );
  LUT6 #(
    .INIT ( 64'h1110001055544454 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output31  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out13 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out14 ),
    .I5(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/preAligned [11])
  );
  LUT6 #(
    .INIT ( 64'h5554445411100010 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output22  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out8 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out9 ),
    .I5(\Stage2/Difference<2>_mmx_out4 ),
    .O(\Stage2/preAligned [10])
  );
  LUT6 #(
    .INIT ( 64'h1110001055544454 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output81  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out19 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out20 ),
    .I5(\Stage2/Difference<2>_mmx_out17 ),
    .O(\Stage2/preAligned [16])
  );
  LUT6 #(
    .INIT ( 64'h1110001055544454 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output91  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out3 ),
    .I3(\DifferenceReg/Q [2]),
    .I4(\Stage2/Difference<1>_mmx_out5 ),
    .I5(\Stage2/Difference<2>_mmx_out2 ),
    .O(\Stage2/preAligned [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output216  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [0]),
    .I2(\Mantissa2Reg/Q [0]),
    .O(\Stage2/swapedOperand2 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output225  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [10]),
    .I2(\Mantissa2Reg/Q [10]),
    .O(\Stage2/swapedOperand2 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output231  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [11]),
    .I2(\Mantissa2Reg/Q [11]),
    .O(\Stage2/swapedOperand2 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output241  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [12]),
    .I2(\Mantissa2Reg/Q [12]),
    .O(\Stage2/swapedOperand2 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output251  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [13]),
    .I2(\Mantissa2Reg/Q [13]),
    .O(\Stage2/swapedOperand2 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output261  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [14]),
    .I2(\Mantissa2Reg/Q [14]),
    .O(\Stage2/swapedOperand2 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output271  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [15]),
    .I2(\Mantissa2Reg/Q [15]),
    .O(\Stage2/swapedOperand2 [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output281  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [16]),
    .I2(\Mantissa2Reg/Q [16]),
    .O(\Stage2/swapedOperand2 [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output291  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [17]),
    .I2(\Mantissa2Reg/Q [17]),
    .O(\Stage2/swapedOperand2 [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2101  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [18]),
    .I2(\Mantissa2Reg/Q [18]),
    .O(\Stage2/swapedOperand2 [18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2111  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [19]),
    .I2(\Mantissa2Reg/Q [19]),
    .O(\Stage2/swapedOperand2 [19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2121  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [1]),
    .I2(\Mantissa2Reg/Q [1]),
    .O(\Stage2/swapedOperand2 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2131  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [20]),
    .I2(\Mantissa2Reg/Q [20]),
    .O(\Stage2/swapedOperand2 [20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2141  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [21]),
    .I2(\Mantissa2Reg/Q [21]),
    .O(\Stage2/swapedOperand2 [21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2151  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [22]),
    .I2(\Mantissa2Reg/Q [22]),
    .O(\Stage2/swapedOperand2 [22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2171  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [2]),
    .I2(\Mantissa2Reg/Q [2]),
    .O(\Stage2/swapedOperand2 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2181  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [3]),
    .I2(\Mantissa2Reg/Q [3]),
    .O(\Stage2/swapedOperand2 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2191  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [4]),
    .I2(\Mantissa2Reg/Q [4]),
    .O(\Stage2/swapedOperand2 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2201  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [5]),
    .I2(\Mantissa2Reg/Q [5]),
    .O(\Stage2/swapedOperand2 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2211  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [6]),
    .I2(\Mantissa2Reg/Q [6]),
    .O(\Stage2/swapedOperand2 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2221  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [7]),
    .I2(\Mantissa2Reg/Q [7]),
    .O(\Stage2/swapedOperand2 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2231  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [8]),
    .I2(\Mantissa2Reg/Q [8]),
    .O(\Stage2/swapedOperand2 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Swap/Mmux_Output2241  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa1Reg/Q [9]),
    .I2(\Mantissa2Reg/Q [9]),
    .O(\Stage2/swapedOperand2 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output11  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [0]),
    .I2(\Exponent2Reg/Q [0]),
    .O(ExponentBase[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output21  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [1]),
    .I2(\Exponent2Reg/Q [1]),
    .O(ExponentBase[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output31  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [2]),
    .I2(\Exponent2Reg/Q [2]),
    .O(ExponentBase[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output41  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [3]),
    .I2(\Exponent2Reg/Q [3]),
    .O(ExponentBase[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output51  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [4]),
    .I2(\Exponent2Reg/Q [4]),
    .O(ExponentBase[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output61  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [5]),
    .I2(\Exponent2Reg/Q [5]),
    .O(ExponentBase[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output71  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [6]),
    .I2(\Exponent2Reg/Q [6]),
    .O(ExponentBase[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/ExponentMux/Mmux_Output81  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Exponent1Reg/Q [7]),
    .I2(\Exponent2Reg/Q [7]),
    .O(ExponentBase[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/Difference<2>121  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\Stage2/Difference<1>_mmx_out10 ),
    .I2(\Stage2/Difference<1>_mmx_out11 ),
    .O(\Stage2/Difference<2>_mmx_out4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference24  (
    .I0(\Mantissa1Reg/Q [12]),
    .I1(\Mantissa2Reg/Q [12]),
    .I2(\SignOfDifference1Reg/Q_0_1_3172 ),
    .O(\Stage2/SignOfDifference_mmx_out10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference61  (
    .I0(\Mantissa1Reg/Q [15]),
    .I1(\Mantissa2Reg/Q [15]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out14 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference71  (
    .I0(\Mantissa1Reg/Q [16]),
    .I1(\Mantissa2Reg/Q [16]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out15 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference81  (
    .I0(\Mantissa1Reg/Q [17]),
    .I1(\Mantissa2Reg/Q [17]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out16 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference91  (
    .I0(\Mantissa1Reg/Q [18]),
    .I1(\Mantissa2Reg/Q [18]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out17 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference131  (
    .I0(\Mantissa1Reg/Q [21]),
    .I1(\Mantissa2Reg/Q [21]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out20 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference151  (
    .I0(\Mantissa1Reg/Q [22]),
    .I1(\Mantissa2Reg/Q [22]),
    .I2(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/SignOfDifference_mmx_out22 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage2/SignOfDifference231  (
    .I0(\Mantissa1Reg/Q [11]),
    .I1(\Mantissa2Reg/Q [11]),
    .I2(\SignOfDifference1Reg/Q_0_1_3172 ),
    .O(\Stage2/SignOfDifference_mmx_out9 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output111  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/preAligned [19])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output141  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out8 ),
    .O(\Stage2/preAligned [20])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output181  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out17 ),
    .O(\Stage2/preAligned [24])
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \Stage3/ZerosCounter/Mmux_Shifts522  (
    .I0(AdderResult[19]),
    .I1(AdderResult[20]),
    .I2(AdderResult[21]),
    .I3(AdderResult[22]),
    .I4(\Stage3/ZerosCounter/Mmux_Shifts521 ),
    .O(\Stage3/ZerosCounter/Mmux_Shifts52 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Stage3/ZerosCounter/Mmux_Shifts5211  (
    .I0(AdderResult[23]),
    .I1(AdderResult[24]),
    .I2(AdderResult[25]),
    .I3(AdderResult[26]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts521 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Stage3/ZerosCounter/Mmux_Shifts3121  (
    .I0(AdderResult[18]),
    .I1(AdderResult[17]),
    .I2(AdderResult[16]),
    .I3(AdderResult[15]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts312 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Stage3/ZerosCounter/Mmux_Shifts4151  (
    .I0(AdderResult[7]),
    .I1(AdderResult[8]),
    .I2(AdderResult[6]),
    .I3(AdderResult[5]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts415 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Stage3/ZerosCounter/Mmux__n0087_A41  (
    .I0(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .I1(\Stage3/ZerosCounter/Mmux_Shifts411 ),
    .O(\Stage3/ZerosCounter/Mmux__n0087_rs_A [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Stage3/ZerosCounter/Mmux_Shifts4111  (
    .I0(AdderResult[3]),
    .I1(AdderResult[4]),
    .I2(AdderResult[5]),
    .I3(AdderResult[6]),
    .I4(AdderResult[7]),
    .I5(AdderResult[8]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts411 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \Stage3/ZerosCounter/ThirdBitsConuter/allZeros1  (
    .I0(AdderResult[9]),
    .I1(AdderResult[10]),
    .I2(AdderResult[14]),
    .I3(AdderResult[13]),
    .I4(AdderResult[11]),
    .I5(AdderResult[12]),
    .O(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage4/tobeRoundMux/Mmux_Output1221  (
    .I0(\AdderResultReg/Q [3]),
    .I1(\AdderResultReg/Q [2]),
    .I2(\AdderResultReg/Q [1]),
    .I3(\AdderResultReg/Q [0]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output122_1968 )
  );
  LUT6 #(
    .INIT ( 64'h7577755520222000 ))
  \Stage4/tobeRoundMux/Mmux_Output221  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [0]),
    .I3(\NormShiftsReg/Q [0]),
    .I4(\AdderResultReg/Q [1]),
    .I5(\Stage4/NormShifts<1>_mmx_out20 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output22 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/NormShifts<1>61  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [4]),
    .I3(\AdderResultReg/Q [2]),
    .I4(\AdderResultReg/Q [3]),
    .I5(\AdderResultReg/Q [5]),
    .O(\Stage4/NormShifts<1>_mmx_out14 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage4/NormShifts<1>81  (
    .I0(\AdderResultReg/Q [6]),
    .I1(\AdderResultReg/Q [5]),
    .I2(\AdderResultReg/Q [4]),
    .I3(\AdderResultReg/Q [3]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/NormShifts<1>_mmx_out16 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \Stage4/tobeRoundMux/Mmux_Output26111  (
    .I0(\AdderResultReg/Q [20]),
    .I1(\AdderResultReg/Q [18]),
    .I2(\AdderResultReg/Q [4]),
    .I3(\AdderResultReg/Q [2]),
    .I4(\NormShiftsReg/Q [4]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2611 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \Stage4/NormShifts<1>41  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [2]),
    .I3(\AdderResultReg/Q [4]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output23111 ),
    .O(\Stage4/NormShifts<1>_mmx_out12 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \Stage4/tobeRoundMux/Mmux_Output1231  (
    .I0(\AdderResultReg/Q [18]),
    .I1(\AdderResultReg/Q [19]),
    .I2(\AdderResultReg/Q [17]),
    .I3(\AdderResultReg/Q [16]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output123_1962 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/NormShifts<1>181  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [15]),
    .I3(\AdderResultReg/Q [13]),
    .I4(\AdderResultReg/Q [14]),
    .I5(\AdderResultReg/Q [16]),
    .O(\Stage4/NormShifts<1>_mmx_out5 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage4/NormShifts<1>131  (
    .I0(\AdderResultReg/Q [9]),
    .I1(\AdderResultReg/Q [8]),
    .I2(\AdderResultReg/Q [7]),
    .I3(\AdderResultReg/Q [6]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/NormShifts<1>_mmx_out20 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output1821  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [7]),
    .I3(\AdderResultReg/Q [9]),
    .I4(\Stage4/NormShifts<1>3 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output182_1969 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \Stage4/tobeRoundMux/Mmux_Output1241  (
    .I0(\AdderResultReg/Q [15]),
    .I1(\AdderResultReg/Q [13]),
    .I2(\AdderResultReg/Q [14]),
    .I3(\AdderResultReg/Q [12]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output124 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/tobeRoundMux/Mmux_Output12111  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [6]),
    .I3(\AdderResultReg/Q [4]),
    .I4(\AdderResultReg/Q [5]),
    .I5(\AdderResultReg/Q [7]),
    .O(\Stage4/tobeRoundMux/Mmux_Output1211_1960 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/NormShifts<1>161  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [13]),
    .I3(\AdderResultReg/Q [11]),
    .I4(\AdderResultReg/Q [12]),
    .I5(\AdderResultReg/Q [14]),
    .O(\Stage4/NormShifts<1>_mmx_out3 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/tobeRoundMux/Mmux_Output26121  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [12]),
    .I3(\AdderResultReg/Q [10]),
    .I4(\AdderResultReg/Q [11]),
    .I5(\AdderResultReg/Q [13]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2612 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \Stage4/NormShifts<1>111  (
    .I0(\AdderResultReg/Q [8]),
    .I1(\AdderResultReg/Q [6]),
    .I2(\AdderResultReg/Q [7]),
    .I3(\AdderResultReg/Q [5]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\NormShiftsReg/Q [1]),
    .O(\Stage4/NormShifts<1>_mmx_out19 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output2121  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\Stage4/NormShifts<1>3 ),
    .I3(\Stage4/NormShifts<1>2 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output124 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output212_1967 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \Stage4/tobeRoundMux/Mmux_Output1211  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\Stage4/NormShifts<1>3 ),
    .I3(\Stage4/NormShifts<1>2 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output1211_1960 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output121_1972 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555555554 ))
  \Stage4/UpdateExponet<5>1  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\NormShiftsReg/Q [1]),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\NormShiftsReg/Q [3]),
    .I5(\NormShiftsReg/Q [4]),
    .O(\Stage4/UpdateExponet [5])
  );
  LUT5 #(
    .INIT ( 32'h00008000 ))
  \Stage4/ExponentMux/Mmux_Output831  (
    .I0(\ResultExponentReg/Q [4]),
    .I1(\ResultExponentReg/Q [3]),
    .I2(\ResultExponentReg/Q [2]),
    .I3(\AlgorthimSelReg3/Q_0_499 ),
    .I4(\Stage4/ExponentMux/Mmux_Output31 ),
    .O(\Stage4/ExponentMux/Mmux_Output83_1944 )
  );
  LUT6 #(
    .INIT ( 64'h1111111111111114 ))
  \Stage4/Mmux_UpdateExponet51  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [0]),
    .I3(\NormShiftsReg/Q [1]),
    .I4(\NormShiftsReg/Q [2]),
    .I5(\NormShiftsReg/Q [3]),
    .O(\Stage4/UpdateExponet [4])
  );
  LUT6 #(
    .INIT ( 64'hD7DDDDDD82888888 ))
  \Stage4/ExponentMux/Mmux_Output51  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [4]),
    .I2(\Stage4/ExponentMux/Mmux_Output31 ),
    .I3(\ResultExponentReg/Q [2]),
    .I4(\ResultExponentReg/Q [3]),
    .I5(\Stage4/ExponentAdderResult1 [4]),
    .O(ExponentAdderResult1[4])
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \Stage4/tobeRoundMux/Mmux_Output3011  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\AdderResultReg/Q [1]),
    .I3(\AdderResultReg/Q [2]),
    .I4(\AdderResultReg/Q [0]),
    .O(\Stage4/tobeRoundMux/Mmux_Output301 )
  );
  LUT5 #(
    .INIT ( 32'hD7DD8288 ))
  \Stage4/ExponentMux/Mmux_Output41  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [3]),
    .I2(\Stage4/ExponentMux/Mmux_Output31 ),
    .I3(\ResultExponentReg/Q [2]),
    .I4(\Stage4/ExponentAdderResult1 [3]),
    .O(ExponentAdderResult1[3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage4/NormShifts<1>31  (
    .I0(\AdderResultReg/Q [8]),
    .I1(\AdderResultReg/Q [10]),
    .I2(\NormShiftsReg/Q [1]),
    .O(\Stage4/NormShifts<1>3 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Stage4/tobeRoundMux/Mmux_Output231111  (
    .I0(\AdderResultReg/Q [3]),
    .I1(\AdderResultReg/Q [1]),
    .I2(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output23111 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Stage4/NormShifts<1>21  (
    .I0(\AdderResultReg/Q [9]),
    .I1(\AdderResultReg/Q [11]),
    .I2(\NormShiftsReg/Q [1]),
    .O(\Stage4/NormShifts<1>2 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Stage4/tobeRoundMux/Mmux_Output1911  (
    .I0(\AdderResultReg/Q [0]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\NormShiftsReg/Q [1]),
    .O(\Stage4/tobeRoundMux/Mmux_Output191 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage4/tobeRoundMux/Mmux_Output1431  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\AlgorthimSelReg3/Q_0_499 ),
    .I2(\NormShiftsReg/Q [2]),
    .O(\Stage4/tobeRoundMux/Mmux_Output143_1950 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage4/tobeRoundMux/Mmux_Output2331  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\AlgorthimSelReg3/Q_0_499 ),
    .I2(\NormShiftsReg/Q [2]),
    .O(\Stage4/tobeRoundMux/Mmux_Output233_1951 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Stage4/tobeRoundMux/Mmux_Output1421  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\AlgorthimSelReg3/Q_0_499 ),
    .I2(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output142_1952 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output28111  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [24]),
    .I2(\AdderResultReg/Q [23]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2811 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output21311  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [23]),
    .I2(\AdderResultReg/Q [22]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2131 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output18311  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [22]),
    .I2(\AdderResultReg/Q [21]),
    .O(\Stage4/tobeRoundMux/Mmux_Output1831 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output26221  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\AdderResultReg/Q [17]),
    .I2(\AdderResultReg/Q [15]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2622_1957 )
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \Stage4/tobeRoundMux/Mmux_Output821  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/NormShifts<1>_mmx_out20 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output262_1970 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output82_1959 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output2111  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\Stage4/tobeRoundMux/Mmux_Output1211_1960 ),
    .I2(\Stage4/tobeRoundMux/Mmux_Output122_1968 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output211_1977 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output811  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\Stage4/tobeRoundMux/Mmux_Output2612 ),
    .I2(\Stage4/NormShifts<1>_mmx_out14 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output81_1973 )
  );
  LUT5 #(
    .INIT ( 32'h9EE622AA ))
  \MULFirstStage/Byte3Byte3/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [20]),
    .I4(\inputOperand2/Q [22]),
    .O(\MULFirstStage/Byte3Byte3/S310 )
  );
  LUT5 #(
    .INIT ( 32'hFA808000 ))
  \MULFirstStage/Byte3Byte3/FA310/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [21]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [22]),
    .O(\MULFirstStage/Byte3Byte3/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte3/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte3Byte3/S21 ),
    .O(\MULFirstStage/Byte3Byte3/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte3/FA32/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte3Byte3/S21 ),
    .O(\MULFirstStage/Byte3Byte3/C32 )
  );
  LUT5 #(
    .INIT ( 32'h953F6AC0 ))
  \MULFirstStage/Byte3Byte3/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [22]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S214 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte3/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [21]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/S213 )
  );
  LUT5 #(
    .INIT ( 32'hEC80A000 ))
  \MULFirstStage/Byte3Byte3/FA213/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/C213 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte3/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [19]),
    .I4(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/S211 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte3Byte3/FA211/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte3/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte3Byte3/S11 ),
    .O(\MULFirstStage/Byte3Byte3/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte3/FA24/Cout1  (
    .I0(\inputOperand1/Q [20]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte3Byte3/S11 ),
    .O(\MULFirstStage/Byte3Byte3/C24 )
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \MULFirstStage/Byte3Byte3/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [17]),
    .I3(\MULFirstStage/Byte3Byte3/S15 ),
    .O(\MULFirstStage/Byte3Byte3/S29 )
  );
  LUT4 #(
    .INIT ( 16'hEC80 ))
  \MULFirstStage/Byte3Byte3/FA29/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand1/Q [18]),
    .I3(\MULFirstStage/Byte3Byte3/S15 ),
    .O(\MULFirstStage/Byte3Byte3/C29 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte3/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [17]),
    .I4(\inputOperand1/Q [16]),
    .O(\MULFirstStage/Byte3Byte3/S27 )
  );
  LUT5 #(
    .INIT ( 32'hE8A08800 ))
  \MULFirstStage/Byte3Byte3/FA27/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [17]),
    .I4(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte3/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand2/Q [20]),
    .I5(\inputOperand2/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte3Byte3/FA25/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \MULFirstStage/Byte3Byte3/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888C000A0000000 ))
  \MULFirstStage/Byte3Byte3/FA22/Cout1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/C22 )
  );
  LUT5 #(
    .INIT ( 32'h956A6A6A ))
  \MULFirstStage/Byte3Byte3/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [22]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S16 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte3/FA16/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [20]),
    .I4(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/C16 )
  );
  LUT5 #(
    .INIT ( 32'h87787788 ))
  \MULFirstStage/Byte3Byte3/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q_18_1_3179 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q [19]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/S14 )
  );
  LUT5 #(
    .INIT ( 32'hEC80A000 ))
  \MULFirstStage/Byte3Byte3/FA14/Cout1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [22]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/C14 )
  );
  LUT5 #(
    .INIT ( 32'h965A3CF0 ))
  \MULFirstStage/Byte3Byte3/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [16]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/S12 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte3Byte3/FA12/Cout1  (
    .I0(\inputOperand2/Q_18_1_3179 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q_16_1_3176 ),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/C12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte3/FA410/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C38 ),
    .I1(\MULFirstStage/Byte3Byte3/S39 ),
    .I2(\inputOperand1/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte3/FA44/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte3Byte3/C32 ),
    .I3(\MULFirstStage/Byte3Byte3/S33 ),
    .O(\MULFirstStage/Byte3Byte3/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte3/FA43/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [20]),
    .I2(\MULFirstStage/Byte3Byte3/C31 ),
    .I3(\MULFirstStage/Byte3Byte3/S32 ),
    .O(\MULFirstStage/Byte3Byte3/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA31/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte3Byte3/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte3Byte3/FA45/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C21 ),
    .I1(\MULFirstStage/Byte3Byte3/S23 ),
    .I2(\MULFirstStage/Byte3Byte3/S25 ),
    .I3(\MULFirstStage/Byte3Byte3/S22 ),
    .I4(\MULFirstStage/Byte3Byte3/S34 ),
    .O(\MULFirstStage/Byte3Byte3/C45 )
  );
  LUT6 #(
    .INIT ( 64'hEC80137F137FEC80 ))
  \MULFirstStage/Byte3Byte3/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand2/Q [20]),
    .I3(\MULFirstStage/Byte3Byte3/C16 ),
    .I4(\MULFirstStage/Byte3Byte3/C213 ),
    .I5(\MULFirstStage/Byte3Byte3/S214 ),
    .O(\MULFirstStage/Byte3Byte3/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEC80EC800000 ))
  \MULFirstStage/Byte3Byte3/FA39/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand2/Q [20]),
    .I3(\MULFirstStage/Byte3Byte3/C16 ),
    .I4(\MULFirstStage/Byte3Byte3/C213 ),
    .I5(\MULFirstStage/Byte3Byte3/S214 ),
    .O(\MULFirstStage/Byte3Byte3/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte3/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA21/Cout1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte3Byte3/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA23/Cout1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte3/FA46/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C23 ),
    .I1(\MULFirstStage/Byte3Byte3/S27 ),
    .I2(\MULFirstStage/Byte3Byte3/C22 ),
    .I3(\MULFirstStage/Byte3Byte3/S24 ),
    .I4(\MULFirstStage/Byte3Byte3/S35 ),
    .O(\MULFirstStage/Byte3Byte3/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_22_1_3182 ),
    .I1(\inputOperand2/Q_16_1_3176 ),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA11/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte3/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte3/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA15/Cout1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/HA13/Cout1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte3/FA47/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C25 ),
    .I1(\MULFirstStage/Byte3Byte3/S29 ),
    .I2(\MULFirstStage/Byte3Byte3/C24 ),
    .I3(\MULFirstStage/Byte3Byte3/S26 ),
    .I4(\MULFirstStage/Byte3Byte3/S36 ),
    .O(\MULFirstStage/Byte3Byte3/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte3Byte3/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte3/C13 ),
    .I1(\MULFirstStage/Byte3Byte3/C12 ),
    .I2(\MULFirstStage/Byte3Byte3/S14 ),
    .I3(\MULFirstStage/Byte3Byte3/C29 ),
    .I4(\MULFirstStage/Byte3Byte3/S210 ),
    .O(\MULFirstStage/Byte3Byte3/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte3/FA37/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C13 ),
    .I1(\MULFirstStage/Byte3Byte3/C12 ),
    .I2(\MULFirstStage/Byte3Byte3/S14 ),
    .I3(\MULFirstStage/Byte3Byte3/C29 ),
    .I4(\MULFirstStage/Byte3Byte3/S210 ),
    .O(\MULFirstStage/Byte3Byte3/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte3Byte3/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte3/C11 ),
    .I1(\MULFirstStage/Byte3Byte3/S13 ),
    .I2(\MULFirstStage/Byte3Byte3/C27 ),
    .I3(\MULFirstStage/Byte3Byte3/S12 ),
    .I4(\MULFirstStage/Byte3Byte3/S28 ),
    .O(\MULFirstStage/Byte3Byte3/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte3Byte3/FA36/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C11 ),
    .I1(\MULFirstStage/Byte3Byte3/S13 ),
    .I2(\MULFirstStage/Byte3Byte3/C27 ),
    .I3(\MULFirstStage/Byte3Byte3/S12 ),
    .I4(\MULFirstStage/Byte3Byte3/S28 ),
    .O(\MULFirstStage/Byte3Byte3/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte3Byte3/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte3/C15 ),
    .I1(\MULFirstStage/Byte3Byte3/C14 ),
    .I2(\MULFirstStage/Byte3Byte3/S16 ),
    .I3(\MULFirstStage/Byte3Byte3/S212 ),
    .I4(\MULFirstStage/Byte3Byte3/C211 ),
    .O(\MULFirstStage/Byte3Byte3/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte3/FA38/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/C15 ),
    .I1(\MULFirstStage/Byte3Byte3/C14 ),
    .I2(\MULFirstStage/Byte3Byte3/S16 ),
    .I3(\MULFirstStage/Byte3Byte3/S212 ),
    .I4(\MULFirstStage/Byte3Byte3/C211 ),
    .O(\MULFirstStage/Byte3Byte3/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte3/C41_mand111  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/S411  (
    .I0(\inputOperand2/Q [17]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte3Byte3/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte3/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte3Byte3/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte3/FA48/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/S211 ),
    .I1(\MULFirstStage/Byte3Byte3/C36 ),
    .I2(\MULFirstStage/Byte3Byte3/S37 ),
    .O(\MULFirstStage/Byte3Byte3/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte3/FA49/Cout1  (
    .I0(\MULFirstStage/Byte3Byte3/S213 ),
    .I1(\MULFirstStage/Byte3Byte3/S38 ),
    .I2(\MULFirstStage/Byte3Byte3/C37 ),
    .O(\MULFirstStage/Byte3Byte3/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte3/X01_mand1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte3Byte3/X01_mand1_2089 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte3/X001  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [16]),
    .O(Result33[0])
  );
  LUT5 #(
    .INIT ( 32'h9EE622AA ))
  \MULFirstStage/Byte3Byte2/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [12]),
    .I4(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte3Byte2/S310 )
  );
  LUT5 #(
    .INIT ( 32'hFA808000 ))
  \MULFirstStage/Byte3Byte2/FA310/Cout1  (
    .I0(\inputOperand2/Q [14]),
    .I1(\inputOperand1/Q [21]),
    .I2(\inputOperand2/Q [12]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [22]),
    .O(\MULFirstStage/Byte3Byte2/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte2/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte3Byte2/S21 ),
    .O(\MULFirstStage/Byte3Byte2/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte2/FA32/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte3Byte2/S21 ),
    .O(\MULFirstStage/Byte3Byte2/C32 )
  );
  LUT5 #(
    .INIT ( 32'h935F6CA0 ))
  \MULFirstStage/Byte3Byte2/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte2/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte3Byte2/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A0C00088000000 ))
  \MULFirstStage/Byte3Byte2/FA213/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte2/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte3Byte2/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte3Byte2/FA211/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [20]),
    .I5(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte2/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte2/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte3Byte2/S11 ),
    .O(\MULFirstStage/Byte3Byte2/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte2/FA24/Cout1  (
    .I0(\inputOperand1/Q [20]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte3Byte2/S11 ),
    .O(\MULFirstStage/Byte3Byte2/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte2/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [14]),
    .I4(\MULFirstStage/Byte3Byte2/S15 ),
    .O(\MULFirstStage/Byte3Byte2/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte2/FA29/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [15]),
    .I4(\MULFirstStage/Byte3Byte2/S15 ),
    .O(\MULFirstStage/Byte3Byte2/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte2/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte3Byte2/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte3Byte2/FA27/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [18]),
    .I5(\inputOperand1/Q [17]),
    .O(\MULFirstStage/Byte3Byte2/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte2/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand2/Q [12]),
    .I5(\inputOperand2/Q [13]),
    .O(\MULFirstStage/Byte3Byte2/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte3Byte2/FA25/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \MULFirstStage/Byte3Byte2/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888C000A0000000 ))
  \MULFirstStage/Byte3Byte2/FA22/Cout1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/C22 )
  );
  LUT5 #(
    .INIT ( 32'h956A6A6A ))
  \MULFirstStage/Byte3Byte2/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q_10_1_3185 ),
    .I1(\inputOperand2/Q_11_1_3180 ),
    .I2(\inputOperand1/Q_22_1_3182 ),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S16 )
  );
  LUT5 #(
    .INIT ( 32'hEA808080 ))
  \MULFirstStage/Byte3Byte2/FA16/Cout1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [22]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/C16 )
  );
  LUT5 #(
    .INIT ( 32'h87787788 ))
  \MULFirstStage/Byte3Byte2/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q_10_1_3185 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q_11_1_3180 ),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/S14 )
  );
  LUT5 #(
    .INIT ( 32'hEC80A000 ))
  \MULFirstStage/Byte3Byte2/FA14/Cout1  (
    .I0(\inputOperand2/Q_10_1_3185 ),
    .I1(\inputOperand2/Q_11_1_3180 ),
    .I2(\inputOperand1/Q_22_1_3182 ),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/C14 )
  );
  LUT5 #(
    .INIT ( 32'h965A3CF0 ))
  \MULFirstStage/Byte3Byte2/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [8]),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/S12 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte3Byte2/FA12/Cout1  (
    .I0(\inputOperand2/Q_10_1_3185 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q_8_1_3177 ),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte2/FA411/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [21]),
    .I2(\MULFirstStage/Byte3Byte2/S310 ),
    .I3(\MULFirstStage/Byte3Byte2/C39 ),
    .O(\MULFirstStage/Byte3Byte2/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte2/FA410/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [20]),
    .I2(\MULFirstStage/Byte3Byte2/S39 ),
    .I3(\MULFirstStage/Byte3Byte2/C38 ),
    .O(\MULFirstStage/Byte3Byte2/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte2/FA44/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte3Byte2/C32 ),
    .I3(\MULFirstStage/Byte3Byte2/S33 ),
    .O(\MULFirstStage/Byte3Byte2/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte2/FA43/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte3Byte2/C31 ),
    .I3(\MULFirstStage/Byte3Byte2/S32 ),
    .O(\MULFirstStage/Byte3Byte2/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA31/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte3Byte2/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte3Byte2/FA45/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C21 ),
    .I1(\MULFirstStage/Byte3Byte2/S23 ),
    .I2(\MULFirstStage/Byte3Byte2/S25 ),
    .I3(\MULFirstStage/Byte3Byte2/S22 ),
    .I4(\MULFirstStage/Byte3Byte2/S34 ),
    .O(\MULFirstStage/Byte3Byte2/C45 )
  );
  LUT6 #(
    .INIT ( 64'hEC80137F137FEC80 ))
  \MULFirstStage/Byte3Byte2/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand2/Q [12]),
    .I3(\MULFirstStage/Byte3Byte2/C16 ),
    .I4(\MULFirstStage/Byte3Byte2/S214 ),
    .I5(\MULFirstStage/Byte3Byte2/C213 ),
    .O(\MULFirstStage/Byte3Byte2/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEC80EC800000 ))
  \MULFirstStage/Byte3Byte2/FA39/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand2/Q [12]),
    .I3(\MULFirstStage/Byte3Byte2/C16 ),
    .I4(\MULFirstStage/Byte3Byte2/S214 ),
    .I5(\MULFirstStage/Byte3Byte2/C213 ),
    .O(\MULFirstStage/Byte3Byte2/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte2/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte2/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA21/Cout1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte3Byte2/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA23/Cout1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [12]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte3Byte2/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte2/FA46/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C23 ),
    .I1(\MULFirstStage/Byte3Byte2/S27 ),
    .I2(\MULFirstStage/Byte3Byte2/C22 ),
    .I3(\MULFirstStage/Byte3Byte2/S24 ),
    .I4(\MULFirstStage/Byte3Byte2/S35 ),
    .O(\MULFirstStage/Byte3Byte2/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_22_1_3182 ),
    .I1(\inputOperand2/Q_8_1_3177 ),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA11/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte2/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte2/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA15/Cout1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/HA13/Cout1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte2/FA47/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C25 ),
    .I1(\MULFirstStage/Byte3Byte2/S29 ),
    .I2(\MULFirstStage/Byte3Byte2/C24 ),
    .I3(\MULFirstStage/Byte3Byte2/S26 ),
    .I4(\MULFirstStage/Byte3Byte2/S36 ),
    .O(\MULFirstStage/Byte3Byte2/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte3Byte2/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte2/C13 ),
    .I1(\MULFirstStage/Byte3Byte2/C12 ),
    .I2(\MULFirstStage/Byte3Byte2/S14 ),
    .I3(\MULFirstStage/Byte3Byte2/C29 ),
    .I4(\MULFirstStage/Byte3Byte2/S210 ),
    .O(\MULFirstStage/Byte3Byte2/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte2/FA37/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C13 ),
    .I1(\MULFirstStage/Byte3Byte2/C12 ),
    .I2(\MULFirstStage/Byte3Byte2/S14 ),
    .I3(\MULFirstStage/Byte3Byte2/C29 ),
    .I4(\MULFirstStage/Byte3Byte2/S210 ),
    .O(\MULFirstStage/Byte3Byte2/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte3Byte2/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte2/C11 ),
    .I1(\MULFirstStage/Byte3Byte2/S13 ),
    .I2(\MULFirstStage/Byte3Byte2/C27 ),
    .I3(\MULFirstStage/Byte3Byte2/S12 ),
    .I4(\MULFirstStage/Byte3Byte2/S28 ),
    .O(\MULFirstStage/Byte3Byte2/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte2/FA36/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C11 ),
    .I1(\MULFirstStage/Byte3Byte2/S13 ),
    .I2(\MULFirstStage/Byte3Byte2/S12 ),
    .I3(\MULFirstStage/Byte3Byte2/C27 ),
    .I4(\MULFirstStage/Byte3Byte2/S28 ),
    .O(\MULFirstStage/Byte3Byte2/C36 )
  );
  LUT5 #(
    .INIT ( 32'hC993366C ))
  \MULFirstStage/Byte3Byte2/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte2/C14 ),
    .I1(\MULFirstStage/Byte3Byte2/S212 ),
    .I2(\MULFirstStage/Byte3Byte2/S16 ),
    .I3(\MULFirstStage/Byte3Byte2/C15 ),
    .I4(\MULFirstStage/Byte3Byte2/C211 ),
    .O(\MULFirstStage/Byte3Byte2/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte2/FA38/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/C14 ),
    .I1(\MULFirstStage/Byte3Byte2/S212 ),
    .I2(\MULFirstStage/Byte3Byte2/S16 ),
    .I3(\MULFirstStage/Byte3Byte2/C15 ),
    .I4(\MULFirstStage/Byte3Byte2/C211 ),
    .O(\MULFirstStage/Byte3Byte2/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte2/C41_mand111  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte2/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/S411  (
    .I0(\inputOperand2/Q [9]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte3Byte2/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte2/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte3Byte2/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte2/FA48/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/S211 ),
    .I1(\MULFirstStage/Byte3Byte2/C36 ),
    .I2(\MULFirstStage/Byte3Byte2/S37 ),
    .O(\MULFirstStage/Byte3Byte2/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte2/FA49/Cout1  (
    .I0(\MULFirstStage/Byte3Byte2/S213 ),
    .I1(\MULFirstStage/Byte3Byte2/S38 ),
    .I2(\MULFirstStage/Byte3Byte2/C37 ),
    .O(\MULFirstStage/Byte3Byte2/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte2/X01_mand1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte3Byte2/X01_mand1_2183 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte2/X001  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [8]),
    .O(Result32[0])
  );
  LUT5 #(
    .INIT ( 32'h9EE622AA ))
  \MULFirstStage/Byte3Byte1/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [4]),
    .I4(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte3Byte1/S310 )
  );
  LUT5 #(
    .INIT ( 32'hFA808000 ))
  \MULFirstStage/Byte3Byte1/FA310/Cout1  (
    .I0(\inputOperand2/Q [6]),
    .I1(\inputOperand1/Q [21]),
    .I2(\inputOperand2/Q [4]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [22]),
    .O(\MULFirstStage/Byte3Byte1/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte1/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte3Byte1/S21 ),
    .O(\MULFirstStage/Byte3Byte1/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte1/FA32/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte3Byte1/S21 ),
    .O(\MULFirstStage/Byte3Byte1/C32 )
  );
  LUT5 #(
    .INIT ( 32'h935F6CA0 ))
  \MULFirstStage/Byte3Byte1/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte1/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte3Byte1/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A0C00088000000 ))
  \MULFirstStage/Byte3Byte1/FA213/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte1/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte3Byte1/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte3Byte1/FA211/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [20]),
    .I5(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte1/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte1/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte3Byte1/S11 ),
    .O(\MULFirstStage/Byte3Byte1/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte1/FA24/Cout1  (
    .I0(\inputOperand1/Q [20]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte3Byte1/S11 ),
    .O(\MULFirstStage/Byte3Byte1/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte3Byte1/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [6]),
    .I4(\MULFirstStage/Byte3Byte1/S15 ),
    .O(\MULFirstStage/Byte3Byte1/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte3Byte1/FA29/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [7]),
    .I4(\MULFirstStage/Byte3Byte1/S15 ),
    .O(\MULFirstStage/Byte3Byte1/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte1/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte3Byte1/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte3Byte1/FA27/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [18]),
    .I5(\inputOperand1/Q [17]),
    .O(\MULFirstStage/Byte3Byte1/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte1/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand2/Q [4]),
    .I5(\inputOperand2/Q [5]),
    .O(\MULFirstStage/Byte3Byte1/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte3Byte1/FA25/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \MULFirstStage/Byte3Byte1/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888C000A0000000 ))
  \MULFirstStage/Byte3Byte1/FA22/Cout1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [20]),
    .I4(\inputOperand1/Q [19]),
    .I5(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/C22 )
  );
  LUT5 #(
    .INIT ( 32'h956A6A6A ))
  \MULFirstStage/Byte3Byte1/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q_2_1_3186 ),
    .I1(\inputOperand2/Q_3_1_3181 ),
    .I2(\inputOperand1/Q_22_1_3182 ),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S16 )
  );
  LUT5 #(
    .INIT ( 32'hEA808080 ))
  \MULFirstStage/Byte3Byte1/FA16/Cout1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [22]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/C16 )
  );
  LUT5 #(
    .INIT ( 32'h87787788 ))
  \MULFirstStage/Byte3Byte1/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q_2_1_3186 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q_3_1_3181 ),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/S14 )
  );
  LUT5 #(
    .INIT ( 32'hEC80A000 ))
  \MULFirstStage/Byte3Byte1/FA14/Cout1  (
    .I0(\inputOperand2/Q_2_1_3186 ),
    .I1(\inputOperand2/Q_3_1_3181 ),
    .I2(\inputOperand1/Q_22_1_3182 ),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/C14 )
  );
  LUT5 #(
    .INIT ( 32'h965A3CF0 ))
  \MULFirstStage/Byte3Byte1/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [0]),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/S12 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte3Byte1/FA12/Cout1  (
    .I0(\inputOperand2/Q_2_1_3186 ),
    .I1(\inputOperand1/Q_22_1_3182 ),
    .I2(\inputOperand2/Q_0_1_3178 ),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte1/FA411/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [21]),
    .I2(\MULFirstStage/Byte3Byte1/S310 ),
    .I3(\MULFirstStage/Byte3Byte1/C39 ),
    .O(\MULFirstStage/Byte3Byte1/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte1/FA410/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [20]),
    .I2(\MULFirstStage/Byte3Byte1/S39 ),
    .I3(\MULFirstStage/Byte3Byte1/C38 ),
    .O(\MULFirstStage/Byte3Byte1/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte1/FA44/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte3Byte1/C32 ),
    .I3(\MULFirstStage/Byte3Byte1/S33 ),
    .O(\MULFirstStage/Byte3Byte1/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte3Byte1/FA43/Cout1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte3Byte1/C31 ),
    .I3(\MULFirstStage/Byte3Byte1/S32 ),
    .O(\MULFirstStage/Byte3Byte1/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA31/Cout1  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte3Byte1/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte3Byte1/FA45/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C21 ),
    .I1(\MULFirstStage/Byte3Byte1/S23 ),
    .I2(\MULFirstStage/Byte3Byte1/S25 ),
    .I3(\MULFirstStage/Byte3Byte1/S22 ),
    .I4(\MULFirstStage/Byte3Byte1/S34 ),
    .O(\MULFirstStage/Byte3Byte1/C45 )
  );
  LUT6 #(
    .INIT ( 64'hEC80137F137FEC80 ))
  \MULFirstStage/Byte3Byte1/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand2/Q [4]),
    .I3(\MULFirstStage/Byte3Byte1/C16 ),
    .I4(\MULFirstStage/Byte3Byte1/S214 ),
    .I5(\MULFirstStage/Byte3Byte1/C213 ),
    .O(\MULFirstStage/Byte3Byte1/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEC80EC800000 ))
  \MULFirstStage/Byte3Byte1/FA39/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand2/Q [4]),
    .I3(\MULFirstStage/Byte3Byte1/C16 ),
    .I4(\MULFirstStage/Byte3Byte1/S214 ),
    .I5(\MULFirstStage/Byte3Byte1/C213 ),
    .O(\MULFirstStage/Byte3Byte1/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte1/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .O(\MULFirstStage/Byte3Byte1/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA21/Cout1  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte3Byte1/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA23/Cout1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [4]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte3Byte1/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte1/FA46/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C23 ),
    .I1(\MULFirstStage/Byte3Byte1/S27 ),
    .I2(\MULFirstStage/Byte3Byte1/C22 ),
    .I3(\MULFirstStage/Byte3Byte1/S24 ),
    .I4(\MULFirstStage/Byte3Byte1/S35 ),
    .O(\MULFirstStage/Byte3Byte1/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_22_1_3182 ),
    .I1(\inputOperand2/Q_0_1_3178 ),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA11/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [21]),
    .O(\MULFirstStage/Byte3Byte1/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte3Byte1/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA15/Cout1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/HA13/Cout1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte1/FA47/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C25 ),
    .I1(\MULFirstStage/Byte3Byte1/S29 ),
    .I2(\MULFirstStage/Byte3Byte1/C24 ),
    .I3(\MULFirstStage/Byte3Byte1/S26 ),
    .I4(\MULFirstStage/Byte3Byte1/S36 ),
    .O(\MULFirstStage/Byte3Byte1/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte3Byte1/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte1/C13 ),
    .I1(\MULFirstStage/Byte3Byte1/C12 ),
    .I2(\MULFirstStage/Byte3Byte1/S14 ),
    .I3(\MULFirstStage/Byte3Byte1/C29 ),
    .I4(\MULFirstStage/Byte3Byte1/S210 ),
    .O(\MULFirstStage/Byte3Byte1/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte1/FA37/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C13 ),
    .I1(\MULFirstStage/Byte3Byte1/C12 ),
    .I2(\MULFirstStage/Byte3Byte1/S14 ),
    .I3(\MULFirstStage/Byte3Byte1/C29 ),
    .I4(\MULFirstStage/Byte3Byte1/S210 ),
    .O(\MULFirstStage/Byte3Byte1/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte3Byte1/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte1/C11 ),
    .I1(\MULFirstStage/Byte3Byte1/S13 ),
    .I2(\MULFirstStage/Byte3Byte1/C27 ),
    .I3(\MULFirstStage/Byte3Byte1/S12 ),
    .I4(\MULFirstStage/Byte3Byte1/S28 ),
    .O(\MULFirstStage/Byte3Byte1/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte3Byte1/FA36/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C11 ),
    .I1(\MULFirstStage/Byte3Byte1/S13 ),
    .I2(\MULFirstStage/Byte3Byte1/S12 ),
    .I3(\MULFirstStage/Byte3Byte1/C27 ),
    .I4(\MULFirstStage/Byte3Byte1/S28 ),
    .O(\MULFirstStage/Byte3Byte1/C36 )
  );
  LUT5 #(
    .INIT ( 32'hC993366C ))
  \MULFirstStage/Byte3Byte1/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte1/C14 ),
    .I1(\MULFirstStage/Byte3Byte1/S212 ),
    .I2(\MULFirstStage/Byte3Byte1/S16 ),
    .I3(\MULFirstStage/Byte3Byte1/C15 ),
    .I4(\MULFirstStage/Byte3Byte1/C211 ),
    .O(\MULFirstStage/Byte3Byte1/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte3Byte1/FA38/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/C14 ),
    .I1(\MULFirstStage/Byte3Byte1/S212 ),
    .I2(\MULFirstStage/Byte3Byte1/S16 ),
    .I3(\MULFirstStage/Byte3Byte1/C15 ),
    .I4(\MULFirstStage/Byte3Byte1/C211 ),
    .O(\MULFirstStage/Byte3Byte1/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte3Byte1/C41_mand111  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte1/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/S411  (
    .I0(\inputOperand2/Q [1]),
    .I1(\inputOperand1/Q [17]),
    .I2(\inputOperand1/Q [18]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte3Byte1/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte1/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte3Byte1/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte1/FA48/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/S211 ),
    .I1(\MULFirstStage/Byte3Byte1/C36 ),
    .I2(\MULFirstStage/Byte3Byte1/S37 ),
    .O(\MULFirstStage/Byte3Byte1/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte3Byte1/FA49/Cout1  (
    .I0(\MULFirstStage/Byte3Byte1/S213 ),
    .I1(\MULFirstStage/Byte3Byte1/S38 ),
    .I2(\MULFirstStage/Byte3Byte1/C37 ),
    .O(\MULFirstStage/Byte3Byte1/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte1/X01_mand1  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte3Byte1/X01_mand1_2277 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte1/X001  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [0]),
    .O(Result31[0])
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte2Byte3/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [22]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte2Byte3/FA310/Cout1  (
    .I0(\inputOperand1/Q [13]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [15]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte3/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte2Byte3/S21 ),
    .O(\MULFirstStage/Byte2Byte3/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte3/FA32/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte2Byte3/S21 ),
    .O(\MULFirstStage/Byte2Byte3/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte2Byte3/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S214 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte3/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [13]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/S213 )
  );
  LUT5 #(
    .INIT ( 32'hECA08000 ))
  \MULFirstStage/Byte2Byte3/FA213/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [13]),
    .I4(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/C213 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte3/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [11]),
    .I4(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte3/S211 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte2Byte3/FA211/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte3/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte2Byte3/S11 ),
    .O(\MULFirstStage/Byte2Byte3/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte3/FA24/Cout1  (
    .I0(\inputOperand1/Q [12]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte2Byte3/S11 ),
    .O(\MULFirstStage/Byte2Byte3/C24 )
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \MULFirstStage/Byte2Byte3/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [9]),
    .I3(\MULFirstStage/Byte2Byte3/S15 ),
    .O(\MULFirstStage/Byte2Byte3/S29 )
  );
  LUT4 #(
    .INIT ( 16'hEC80 ))
  \MULFirstStage/Byte2Byte3/FA29/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand1/Q [10]),
    .I3(\MULFirstStage/Byte2Byte3/S15 ),
    .O(\MULFirstStage/Byte2Byte3/C29 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte3/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [9]),
    .I4(\inputOperand1/Q [8]),
    .O(\MULFirstStage/Byte2Byte3/S27 )
  );
  LUT5 #(
    .INIT ( 32'hE8A08800 ))
  \MULFirstStage/Byte2Byte3/FA27/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [9]),
    .I4(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte3/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte3/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand2/Q [20]),
    .I5(\inputOperand2/Q [21]),
    .O(\MULFirstStage/Byte2Byte3/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte2Byte3/FA25/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte2Byte3/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte2Byte3/FA22/Cout1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte2Byte3/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte2Byte3/FA16/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte2Byte3/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_18_1_3179 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte2Byte3/FA14/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/C14 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \MULFirstStage/Byte2Byte3/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand2/Q [16]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte2Byte3/FA12/Cout1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_18_1_3179 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_16_1_3176 ),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/C12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte3/FA411/Cout1  (
    .I0(\inputOperand1/Q [13]),
    .I1(\MULFirstStage/Byte2Byte3/S310 ),
    .I2(\MULFirstStage/Byte2Byte3/C39 ),
    .O(\MULFirstStage/Byte2Byte3/C411 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte3/FA410/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C38 ),
    .I1(\MULFirstStage/Byte2Byte3/S39 ),
    .I2(\inputOperand1/Q [12]),
    .O(\MULFirstStage/Byte2Byte3/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte3/FA44/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte2Byte3/C32 ),
    .I3(\MULFirstStage/Byte2Byte3/S33 ),
    .O(\MULFirstStage/Byte2Byte3/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte3/FA43/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [20]),
    .I2(\MULFirstStage/Byte2Byte3/C31 ),
    .I3(\MULFirstStage/Byte2Byte3/S32 ),
    .O(\MULFirstStage/Byte2Byte3/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA31/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte2Byte3/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte3/FA45/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C21 ),
    .I1(\MULFirstStage/Byte2Byte3/S23 ),
    .I2(\MULFirstStage/Byte2Byte3/S25 ),
    .I3(\MULFirstStage/Byte2Byte3/S22 ),
    .I4(\MULFirstStage/Byte2Byte3/S34 ),
    .O(\MULFirstStage/Byte2Byte3/C45 )
  );
  LUT6 #(
    .INIT ( 64'h9996966696669666 ))
  \MULFirstStage/Byte2Byte3/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte3/C213 ),
    .I1(\MULFirstStage/Byte2Byte3/S214 ),
    .I2(\MULFirstStage/Byte2Byte3/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte3/C16 ),
    .I4(\inputOperand1/Q [14]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte2Byte3/FA39/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [20]),
    .I2(\MULFirstStage/Byte2Byte3/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte3/C16 ),
    .I4(\MULFirstStage/Byte2Byte3/S214 ),
    .I5(\MULFirstStage/Byte2Byte3/C213 ),
    .O(\MULFirstStage/Byte2Byte3/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte3/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte3/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA21/Cout1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte2Byte3/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA23/Cout1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte2Byte3/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte3/FA46/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C23 ),
    .I1(\MULFirstStage/Byte2Byte3/S27 ),
    .I2(\MULFirstStage/Byte2Byte3/C22 ),
    .I3(\MULFirstStage/Byte2Byte3/S24 ),
    .I4(\MULFirstStage/Byte2Byte3/S35 ),
    .O(\MULFirstStage/Byte2Byte3/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_14_1_3183 ),
    .I1(\inputOperand2/Q_16_1_3176 ),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA11/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte3/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte3/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA15/Cout1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte2Byte3/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/HA13/Cout1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte2Byte3/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte3/FA47/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C25 ),
    .I1(\MULFirstStage/Byte2Byte3/S29 ),
    .I2(\MULFirstStage/Byte2Byte3/C24 ),
    .I3(\MULFirstStage/Byte2Byte3/S26 ),
    .I4(\MULFirstStage/Byte2Byte3/S36 ),
    .O(\MULFirstStage/Byte2Byte3/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte2Byte3/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte3/C13 ),
    .I1(\MULFirstStage/Byte2Byte3/C12 ),
    .I2(\MULFirstStage/Byte2Byte3/S14 ),
    .I3(\MULFirstStage/Byte2Byte3/C29 ),
    .I4(\MULFirstStage/Byte2Byte3/S210 ),
    .O(\MULFirstStage/Byte2Byte3/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte3/FA37/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C13 ),
    .I1(\MULFirstStage/Byte2Byte3/C12 ),
    .I2(\MULFirstStage/Byte2Byte3/S14 ),
    .I3(\MULFirstStage/Byte2Byte3/C29 ),
    .I4(\MULFirstStage/Byte2Byte3/S210 ),
    .O(\MULFirstStage/Byte2Byte3/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte2Byte3/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte3/C11 ),
    .I1(\MULFirstStage/Byte2Byte3/S13 ),
    .I2(\MULFirstStage/Byte2Byte3/C27 ),
    .I3(\MULFirstStage/Byte2Byte3/S12 ),
    .I4(\MULFirstStage/Byte2Byte3/S28 ),
    .O(\MULFirstStage/Byte2Byte3/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte3/FA36/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C11 ),
    .I1(\MULFirstStage/Byte2Byte3/S13 ),
    .I2(\MULFirstStage/Byte2Byte3/C27 ),
    .I3(\MULFirstStage/Byte2Byte3/S12 ),
    .I4(\MULFirstStage/Byte2Byte3/S28 ),
    .O(\MULFirstStage/Byte2Byte3/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte2Byte3/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte3/C15 ),
    .I1(\MULFirstStage/Byte2Byte3/C14 ),
    .I2(\MULFirstStage/Byte2Byte3/S16 ),
    .I3(\MULFirstStage/Byte2Byte3/S212 ),
    .I4(\MULFirstStage/Byte2Byte3/C211 ),
    .O(\MULFirstStage/Byte2Byte3/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte3/FA38/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/C15 ),
    .I1(\MULFirstStage/Byte2Byte3/C14 ),
    .I2(\MULFirstStage/Byte2Byte3/S16 ),
    .I3(\MULFirstStage/Byte2Byte3/S212 ),
    .I4(\MULFirstStage/Byte2Byte3/C211 ),
    .O(\MULFirstStage/Byte2Byte3/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte3/C41_mand111  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte3/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/S411  (
    .I0(\inputOperand2/Q [17]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte2Byte3/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte3/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte2Byte3/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte3/FA48/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/S211 ),
    .I1(\MULFirstStage/Byte2Byte3/C36 ),
    .I2(\MULFirstStage/Byte2Byte3/S37 ),
    .O(\MULFirstStage/Byte2Byte3/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte3/FA49/Cout1  (
    .I0(\MULFirstStage/Byte2Byte3/S213 ),
    .I1(\MULFirstStage/Byte2Byte3/S38 ),
    .I2(\MULFirstStage/Byte2Byte3/C37 ),
    .O(\MULFirstStage/Byte2Byte3/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte3/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte2Byte3/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte3/X01_mand1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte2Byte3/X01_mand1_2372 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte3/X001  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [16]),
    .O(Result23[0])
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte2/FA412/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [15]),
    .I4(\MULFirstStage/Byte2Byte2/C310 ),
    .O(\MULFirstStage/Byte2Byte2/C412 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte2Byte2/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [13]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [14]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte2Byte2/FA310/Cout1  (
    .I0(\inputOperand1/Q [13]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [15]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte2/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte2Byte2/S21 ),
    .O(\MULFirstStage/Byte2Byte2/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte2/FA32/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte2Byte2/S21 ),
    .O(\MULFirstStage/Byte2Byte2/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte2Byte2/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte2/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [13]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte2Byte2/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A08800C0000000 ))
  \MULFirstStage/Byte2Byte2/FA213/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte2/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte2Byte2/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte2Byte2/FA211/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [12]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte2/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte2Byte2/S11 ),
    .O(\MULFirstStage/Byte2Byte2/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte2/FA24/Cout1  (
    .I0(\inputOperand1/Q [12]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte2Byte2/S11 ),
    .O(\MULFirstStage/Byte2Byte2/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte2/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [14]),
    .I4(\MULFirstStage/Byte2Byte2/S15 ),
    .O(\MULFirstStage/Byte2Byte2/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte2/FA29/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [15]),
    .I4(\MULFirstStage/Byte2Byte2/S15 ),
    .O(\MULFirstStage/Byte2Byte2/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte2/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte2Byte2/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte2Byte2/FA27/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [10]),
    .I5(\inputOperand1/Q [9]),
    .O(\MULFirstStage/Byte2Byte2/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte2/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand2/Q [12]),
    .I5(\inputOperand2/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte2Byte2/FA25/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte2Byte2/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte2Byte2/FA22/Cout1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte2Byte2/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte2Byte2/FA16/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [11]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte2Byte2/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte2Byte2/FA14/Cout1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/C14 )
  );
  LUT6 #(
    .INIT ( 64'h963C66CC5AF0AA00 ))
  \MULFirstStage/Byte2Byte2/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [8]),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte2Byte2/FA12/Cout1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_8_1_3177 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte2/FA411/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [13]),
    .I2(\MULFirstStage/Byte2Byte2/S310 ),
    .I3(\MULFirstStage/Byte2Byte2/C39 ),
    .O(\MULFirstStage/Byte2Byte2/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte2/FA410/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [12]),
    .I2(\MULFirstStage/Byte2Byte2/S39 ),
    .I3(\MULFirstStage/Byte2Byte2/C38 ),
    .O(\MULFirstStage/Byte2Byte2/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte2/FA44/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte2Byte2/C32 ),
    .I3(\MULFirstStage/Byte2Byte2/S33 ),
    .O(\MULFirstStage/Byte2Byte2/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte2/FA43/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte2Byte2/C31 ),
    .I3(\MULFirstStage/Byte2Byte2/S32 ),
    .O(\MULFirstStage/Byte2Byte2/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA31/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte2Byte2/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte2/FA45/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C21 ),
    .I1(\MULFirstStage/Byte2Byte2/S23 ),
    .I2(\MULFirstStage/Byte2Byte2/S25 ),
    .I3(\MULFirstStage/Byte2Byte2/S22 ),
    .I4(\MULFirstStage/Byte2Byte2/S34 ),
    .O(\MULFirstStage/Byte2Byte2/C45 )
  );
  LUT6 #(
    .INIT ( 64'hF880077F077FF880 ))
  \MULFirstStage/Byte2Byte2/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte2Byte2/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte2/C16 ),
    .I4(\MULFirstStage/Byte2Byte2/S214 ),
    .I5(\MULFirstStage/Byte2Byte2/C213 ),
    .O(\MULFirstStage/Byte2Byte2/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte2Byte2/FA39/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte2Byte2/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte2/C16 ),
    .I4(\MULFirstStage/Byte2Byte2/S214 ),
    .I5(\MULFirstStage/Byte2Byte2/C213 ),
    .O(\MULFirstStage/Byte2Byte2/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte2/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA21/Cout1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte2Byte2/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA23/Cout1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [12]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte2/FA46/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C23 ),
    .I1(\MULFirstStage/Byte2Byte2/S27 ),
    .I2(\MULFirstStage/Byte2Byte2/C22 ),
    .I3(\MULFirstStage/Byte2Byte2/S24 ),
    .I4(\MULFirstStage/Byte2Byte2/S35 ),
    .O(\MULFirstStage/Byte2Byte2/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_14_1_3183 ),
    .I1(\inputOperand2/Q_8_1_3177 ),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA11/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte2/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte2/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA15/Cout1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/HA13/Cout1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte2/FA47/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C25 ),
    .I1(\MULFirstStage/Byte2Byte2/S29 ),
    .I2(\MULFirstStage/Byte2Byte2/C24 ),
    .I3(\MULFirstStage/Byte2Byte2/S26 ),
    .I4(\MULFirstStage/Byte2Byte2/S36 ),
    .O(\MULFirstStage/Byte2Byte2/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte2Byte2/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte2/C13 ),
    .I1(\MULFirstStage/Byte2Byte2/C12 ),
    .I2(\MULFirstStage/Byte2Byte2/S14 ),
    .I3(\MULFirstStage/Byte2Byte2/C29 ),
    .I4(\MULFirstStage/Byte2Byte2/S210 ),
    .O(\MULFirstStage/Byte2Byte2/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte2/FA37/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C13 ),
    .I1(\MULFirstStage/Byte2Byte2/C12 ),
    .I2(\MULFirstStage/Byte2Byte2/S14 ),
    .I3(\MULFirstStage/Byte2Byte2/C29 ),
    .I4(\MULFirstStage/Byte2Byte2/S210 ),
    .O(\MULFirstStage/Byte2Byte2/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte2Byte2/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte2/C11 ),
    .I1(\MULFirstStage/Byte2Byte2/S13 ),
    .I2(\MULFirstStage/Byte2Byte2/C27 ),
    .I3(\MULFirstStage/Byte2Byte2/S12 ),
    .I4(\MULFirstStage/Byte2Byte2/S28 ),
    .O(\MULFirstStage/Byte2Byte2/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte2/FA36/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C11 ),
    .I1(\MULFirstStage/Byte2Byte2/S13 ),
    .I2(\MULFirstStage/Byte2Byte2/S12 ),
    .I3(\MULFirstStage/Byte2Byte2/C27 ),
    .I4(\MULFirstStage/Byte2Byte2/S28 ),
    .O(\MULFirstStage/Byte2Byte2/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte2Byte2/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte2/C14 ),
    .I1(\MULFirstStage/Byte2Byte2/S16 ),
    .I2(\MULFirstStage/Byte2Byte2/S212 ),
    .I3(\MULFirstStage/Byte2Byte2/C15 ),
    .I4(\MULFirstStage/Byte2Byte2/C211 ),
    .O(\MULFirstStage/Byte2Byte2/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte2/FA38/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/C14 ),
    .I1(\MULFirstStage/Byte2Byte2/S16 ),
    .I2(\MULFirstStage/Byte2Byte2/S212 ),
    .I3(\MULFirstStage/Byte2Byte2/C15 ),
    .I4(\MULFirstStage/Byte2Byte2/C211 ),
    .O(\MULFirstStage/Byte2Byte2/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte2/C41_mand111  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte2/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/S411  (
    .I0(\inputOperand2/Q [9]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte2Byte2/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte2/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte2/FA48/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/S211 ),
    .I1(\MULFirstStage/Byte2Byte2/C36 ),
    .I2(\MULFirstStage/Byte2Byte2/S37 ),
    .O(\MULFirstStage/Byte2Byte2/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte2/FA49/Cout1  (
    .I0(\MULFirstStage/Byte2Byte2/S213 ),
    .I1(\MULFirstStage/Byte2Byte2/S38 ),
    .I2(\MULFirstStage/Byte2Byte2/C37 ),
    .O(\MULFirstStage/Byte2Byte2/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte2/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte2Byte2/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte2/X01_mand1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte2Byte2/X01_mand1_2467 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte2/X001  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [8]),
    .O(Result22[0])
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte1/FA412/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [7]),
    .I4(\MULFirstStage/Byte2Byte1/C310 ),
    .O(\MULFirstStage/Byte2Byte1/C412 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte2Byte1/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [5]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [6]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte2Byte1/FA310/Cout1  (
    .I0(\inputOperand1/Q [13]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [15]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte1/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte2Byte1/S21 ),
    .O(\MULFirstStage/Byte2Byte1/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte1/FA32/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte2Byte1/S21 ),
    .O(\MULFirstStage/Byte2Byte1/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte2Byte1/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte1/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [13]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte2Byte1/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A08800C0000000 ))
  \MULFirstStage/Byte2Byte1/FA213/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte1/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte1/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte2Byte1/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte2Byte1/FA211/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [12]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte1/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte1/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte2Byte1/S11 ),
    .O(\MULFirstStage/Byte2Byte1/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte1/FA24/Cout1  (
    .I0(\inputOperand1/Q [12]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte2Byte1/S11 ),
    .O(\MULFirstStage/Byte2Byte1/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte2Byte1/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [6]),
    .I4(\MULFirstStage/Byte2Byte1/S15 ),
    .O(\MULFirstStage/Byte2Byte1/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte2Byte1/FA29/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [7]),
    .I4(\MULFirstStage/Byte2Byte1/S15 ),
    .O(\MULFirstStage/Byte2Byte1/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte1/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte2Byte1/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte2Byte1/FA27/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [10]),
    .I5(\inputOperand1/Q [9]),
    .O(\MULFirstStage/Byte2Byte1/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte1/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand2/Q [4]),
    .I5(\inputOperand2/Q [5]),
    .O(\MULFirstStage/Byte2Byte1/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte2Byte1/FA25/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte2Byte1/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte1/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte2Byte1/FA22/Cout1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [12]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte1/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte2Byte1/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte2Byte1/FA16/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [3]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte2Byte1/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte2Byte1/FA14/Cout1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/C14 )
  );
  LUT6 #(
    .INIT ( 64'h963C66CC5AF0AA00 ))
  \MULFirstStage/Byte2Byte1/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [0]),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte2Byte1/FA12/Cout1  (
    .I0(\inputOperand1/Q_15_1_3187 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_14_1_3183 ),
    .I3(\inputOperand2/Q_0_1_3178 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte1/FA411/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [13]),
    .I2(\MULFirstStage/Byte2Byte1/S310 ),
    .I3(\MULFirstStage/Byte2Byte1/C39 ),
    .O(\MULFirstStage/Byte2Byte1/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte1/FA410/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [12]),
    .I2(\MULFirstStage/Byte2Byte1/S39 ),
    .I3(\MULFirstStage/Byte2Byte1/C38 ),
    .O(\MULFirstStage/Byte2Byte1/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte1/FA44/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte2Byte1/C32 ),
    .I3(\MULFirstStage/Byte2Byte1/S33 ),
    .O(\MULFirstStage/Byte2Byte1/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte2Byte1/FA43/Cout1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte2Byte1/C31 ),
    .I3(\MULFirstStage/Byte2Byte1/S32 ),
    .O(\MULFirstStage/Byte2Byte1/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA31/Cout1  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte2Byte1/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte1/FA45/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C21 ),
    .I1(\MULFirstStage/Byte2Byte1/S23 ),
    .I2(\MULFirstStage/Byte2Byte1/S25 ),
    .I3(\MULFirstStage/Byte2Byte1/S22 ),
    .I4(\MULFirstStage/Byte2Byte1/S34 ),
    .O(\MULFirstStage/Byte2Byte1/C45 )
  );
  LUT6 #(
    .INIT ( 64'hF880077F077FF880 ))
  \MULFirstStage/Byte2Byte1/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte2Byte1/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte1/C16 ),
    .I4(\MULFirstStage/Byte2Byte1/S214 ),
    .I5(\MULFirstStage/Byte2Byte1/C213 ),
    .O(\MULFirstStage/Byte2Byte1/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte2Byte1/FA39/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte2Byte1/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte2Byte1/C16 ),
    .I4(\MULFirstStage/Byte2Byte1/S214 ),
    .I5(\MULFirstStage/Byte2Byte1/C213 ),
    .O(\MULFirstStage/Byte2Byte1/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte1/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .O(\MULFirstStage/Byte2Byte1/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA21/Cout1  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte2Byte1/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA23/Cout1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [4]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte2Byte1/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte1/FA46/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C23 ),
    .I1(\MULFirstStage/Byte2Byte1/S27 ),
    .I2(\MULFirstStage/Byte2Byte1/C22 ),
    .I3(\MULFirstStage/Byte2Byte1/S24 ),
    .I4(\MULFirstStage/Byte2Byte1/S35 ),
    .O(\MULFirstStage/Byte2Byte1/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_14_1_3183 ),
    .I1(\inputOperand2/Q_0_1_3178 ),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA11/Cout1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [13]),
    .O(\MULFirstStage/Byte2Byte1/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte2Byte1/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA15/Cout1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/HA13/Cout1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte2Byte1/FA47/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C25 ),
    .I1(\MULFirstStage/Byte2Byte1/S29 ),
    .I2(\MULFirstStage/Byte2Byte1/C24 ),
    .I3(\MULFirstStage/Byte2Byte1/S26 ),
    .I4(\MULFirstStage/Byte2Byte1/S36 ),
    .O(\MULFirstStage/Byte2Byte1/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte2Byte1/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte1/C13 ),
    .I1(\MULFirstStage/Byte2Byte1/C12 ),
    .I2(\MULFirstStage/Byte2Byte1/S14 ),
    .I3(\MULFirstStage/Byte2Byte1/C29 ),
    .I4(\MULFirstStage/Byte2Byte1/S210 ),
    .O(\MULFirstStage/Byte2Byte1/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte1/FA37/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C13 ),
    .I1(\MULFirstStage/Byte2Byte1/C12 ),
    .I2(\MULFirstStage/Byte2Byte1/S14 ),
    .I3(\MULFirstStage/Byte2Byte1/C29 ),
    .I4(\MULFirstStage/Byte2Byte1/S210 ),
    .O(\MULFirstStage/Byte2Byte1/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte2Byte1/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte1/C11 ),
    .I1(\MULFirstStage/Byte2Byte1/S13 ),
    .I2(\MULFirstStage/Byte2Byte1/C27 ),
    .I3(\MULFirstStage/Byte2Byte1/S12 ),
    .I4(\MULFirstStage/Byte2Byte1/S28 ),
    .O(\MULFirstStage/Byte2Byte1/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte2Byte1/FA36/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C11 ),
    .I1(\MULFirstStage/Byte2Byte1/S13 ),
    .I2(\MULFirstStage/Byte2Byte1/S12 ),
    .I3(\MULFirstStage/Byte2Byte1/C27 ),
    .I4(\MULFirstStage/Byte2Byte1/S28 ),
    .O(\MULFirstStage/Byte2Byte1/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte2Byte1/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte1/C14 ),
    .I1(\MULFirstStage/Byte2Byte1/S16 ),
    .I2(\MULFirstStage/Byte2Byte1/S212 ),
    .I3(\MULFirstStage/Byte2Byte1/C15 ),
    .I4(\MULFirstStage/Byte2Byte1/C211 ),
    .O(\MULFirstStage/Byte2Byte1/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte2Byte1/FA38/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/C14 ),
    .I1(\MULFirstStage/Byte2Byte1/S16 ),
    .I2(\MULFirstStage/Byte2Byte1/S212 ),
    .I3(\MULFirstStage/Byte2Byte1/C15 ),
    .I4(\MULFirstStage/Byte2Byte1/C211 ),
    .O(\MULFirstStage/Byte2Byte1/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte2Byte1/C41_mand111  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte1/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/S411  (
    .I0(\inputOperand2/Q [1]),
    .I1(\inputOperand1/Q [9]),
    .I2(\inputOperand1/Q [10]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte2Byte1/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte1/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte2Byte1/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte1/FA48/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/S211 ),
    .I1(\MULFirstStage/Byte2Byte1/C36 ),
    .I2(\MULFirstStage/Byte2Byte1/S37 ),
    .O(\MULFirstStage/Byte2Byte1/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte2Byte1/FA49/Cout1  (
    .I0(\MULFirstStage/Byte2Byte1/S213 ),
    .I1(\MULFirstStage/Byte2Byte1/S38 ),
    .I2(\MULFirstStage/Byte2Byte1/C37 ),
    .O(\MULFirstStage/Byte2Byte1/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte1/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte2Byte1/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte1/X01_mand1  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte2Byte1/X01_mand1_2561 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte1/X001  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [0]),
    .O(Result21[0])
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte1Byte3/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [22]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte1Byte3/FA310/Cout1  (
    .I0(\inputOperand1/Q [5]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [7]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte3/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte1Byte3/S21 ),
    .O(\MULFirstStage/Byte1Byte3/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte3/FA32/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte1Byte3/S21 ),
    .O(\MULFirstStage/Byte1Byte3/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte1Byte3/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S214 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte3/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [5]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/S213 )
  );
  LUT5 #(
    .INIT ( 32'hECA08000 ))
  \MULFirstStage/Byte1Byte3/FA213/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [5]),
    .I4(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/C213 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte3/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [3]),
    .I4(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte3/S211 )
  );
  LUT5 #(
    .INIT ( 32'hE8A0C000 ))
  \MULFirstStage/Byte1Byte3/FA211/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte3/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [18]),
    .I4(\MULFirstStage/Byte1Byte3/S11 ),
    .O(\MULFirstStage/Byte1Byte3/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte3/FA24/Cout1  (
    .I0(\inputOperand1/Q [4]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [19]),
    .I4(\MULFirstStage/Byte1Byte3/S11 ),
    .O(\MULFirstStage/Byte1Byte3/C24 )
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \MULFirstStage/Byte1Byte3/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [1]),
    .I3(\MULFirstStage/Byte1Byte3/S15 ),
    .O(\MULFirstStage/Byte1Byte3/S29 )
  );
  LUT4 #(
    .INIT ( 16'hEC80 ))
  \MULFirstStage/Byte1Byte3/FA29/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand1/Q [2]),
    .I3(\MULFirstStage/Byte1Byte3/S15 ),
    .O(\MULFirstStage/Byte1Byte3/C29 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte3/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand2/Q [22]),
    .I3(\inputOperand1/Q [1]),
    .I4(\inputOperand1/Q [0]),
    .O(\MULFirstStage/Byte1Byte3/S27 )
  );
  LUT5 #(
    .INIT ( 32'hE8A08800 ))
  \MULFirstStage/Byte1Byte3/FA27/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [1]),
    .I4(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte3/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte3/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand2/Q [20]),
    .I5(\inputOperand2/Q [21]),
    .O(\MULFirstStage/Byte1Byte3/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte1Byte3/FA25/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand2/Q [21]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte1Byte3/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte1Byte3/FA22/Cout1  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte1Byte3/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte1Byte3/FA16/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte1Byte3/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_18_1_3179 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte1Byte3/FA14/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [19]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/C14 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \MULFirstStage/Byte1Byte3/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand2/Q [16]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte1Byte3/FA12/Cout1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_18_1_3179 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_16_1_3176 ),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/C12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte3/FA411/Cout1  (
    .I0(\inputOperand1/Q [5]),
    .I1(\MULFirstStage/Byte1Byte3/S310 ),
    .I2(\MULFirstStage/Byte1Byte3/C39 ),
    .O(\MULFirstStage/Byte1Byte3/C411 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte3/FA410/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C38 ),
    .I1(\MULFirstStage/Byte1Byte3/S39 ),
    .I2(\inputOperand1/Q [4]),
    .O(\MULFirstStage/Byte1Byte3/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte3/FA44/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte1Byte3/C32 ),
    .I3(\MULFirstStage/Byte1Byte3/S33 ),
    .O(\MULFirstStage/Byte1Byte3/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte3/FA43/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [20]),
    .I2(\MULFirstStage/Byte1Byte3/C31 ),
    .I3(\MULFirstStage/Byte1Byte3/S32 ),
    .O(\MULFirstStage/Byte1Byte3/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA31/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte1Byte3/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte3/FA45/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C21 ),
    .I1(\MULFirstStage/Byte1Byte3/S23 ),
    .I2(\MULFirstStage/Byte1Byte3/S25 ),
    .I3(\MULFirstStage/Byte1Byte3/S22 ),
    .I4(\MULFirstStage/Byte1Byte3/S34 ),
    .O(\MULFirstStage/Byte1Byte3/C45 )
  );
  LUT6 #(
    .INIT ( 64'h9996966696669666 ))
  \MULFirstStage/Byte1Byte3/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte3/C213 ),
    .I1(\MULFirstStage/Byte1Byte3/S214 ),
    .I2(\MULFirstStage/Byte1Byte3/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte3/C16 ),
    .I4(\inputOperand1/Q [6]),
    .I5(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte1Byte3/FA39/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [20]),
    .I2(\MULFirstStage/Byte1Byte3/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte3/C16 ),
    .I4(\MULFirstStage/Byte1Byte3/S214 ),
    .I5(\MULFirstStage/Byte1Byte3/C213 ),
    .O(\MULFirstStage/Byte1Byte3/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte3/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte3/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA21/Cout1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte1Byte3/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA23/Cout1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte1Byte3/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte3/FA46/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C23 ),
    .I1(\MULFirstStage/Byte1Byte3/S27 ),
    .I2(\MULFirstStage/Byte1Byte3/C22 ),
    .I3(\MULFirstStage/Byte1Byte3/S24 ),
    .I4(\MULFirstStage/Byte1Byte3/S35 ),
    .O(\MULFirstStage/Byte1Byte3/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_6_1_3184 ),
    .I1(\inputOperand2/Q_16_1_3176 ),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA11/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte3/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte3/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA15/Cout1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte1Byte3/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/HA13/Cout1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [20]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte1Byte3/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte3/FA47/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C25 ),
    .I1(\MULFirstStage/Byte1Byte3/S29 ),
    .I2(\MULFirstStage/Byte1Byte3/C24 ),
    .I3(\MULFirstStage/Byte1Byte3/S26 ),
    .I4(\MULFirstStage/Byte1Byte3/S36 ),
    .O(\MULFirstStage/Byte1Byte3/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte1Byte3/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte3/C13 ),
    .I1(\MULFirstStage/Byte1Byte3/C12 ),
    .I2(\MULFirstStage/Byte1Byte3/S14 ),
    .I3(\MULFirstStage/Byte1Byte3/C29 ),
    .I4(\MULFirstStage/Byte1Byte3/S210 ),
    .O(\MULFirstStage/Byte1Byte3/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte3/FA37/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C13 ),
    .I1(\MULFirstStage/Byte1Byte3/C12 ),
    .I2(\MULFirstStage/Byte1Byte3/S14 ),
    .I3(\MULFirstStage/Byte1Byte3/C29 ),
    .I4(\MULFirstStage/Byte1Byte3/S210 ),
    .O(\MULFirstStage/Byte1Byte3/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte1Byte3/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte3/C11 ),
    .I1(\MULFirstStage/Byte1Byte3/S13 ),
    .I2(\MULFirstStage/Byte1Byte3/C27 ),
    .I3(\MULFirstStage/Byte1Byte3/S12 ),
    .I4(\MULFirstStage/Byte1Byte3/S28 ),
    .O(\MULFirstStage/Byte1Byte3/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte3/FA36/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C11 ),
    .I1(\MULFirstStage/Byte1Byte3/S13 ),
    .I2(\MULFirstStage/Byte1Byte3/C27 ),
    .I3(\MULFirstStage/Byte1Byte3/S12 ),
    .I4(\MULFirstStage/Byte1Byte3/S28 ),
    .O(\MULFirstStage/Byte1Byte3/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte1Byte3/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte3/C15 ),
    .I1(\MULFirstStage/Byte1Byte3/C14 ),
    .I2(\MULFirstStage/Byte1Byte3/S16 ),
    .I3(\MULFirstStage/Byte1Byte3/S212 ),
    .I4(\MULFirstStage/Byte1Byte3/C211 ),
    .O(\MULFirstStage/Byte1Byte3/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte3/FA38/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/C15 ),
    .I1(\MULFirstStage/Byte1Byte3/C14 ),
    .I2(\MULFirstStage/Byte1Byte3/S16 ),
    .I3(\MULFirstStage/Byte1Byte3/S212 ),
    .I4(\MULFirstStage/Byte1Byte3/C211 ),
    .O(\MULFirstStage/Byte1Byte3/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte3/C41_mand111  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte3/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/S411  (
    .I0(\inputOperand2/Q [17]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte1Byte3/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte3/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte1Byte3/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte3/FA48/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/S211 ),
    .I1(\MULFirstStage/Byte1Byte3/C36 ),
    .I2(\MULFirstStage/Byte1Byte3/S37 ),
    .O(\MULFirstStage/Byte1Byte3/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte3/FA49/Cout1  (
    .I0(\MULFirstStage/Byte1Byte3/S213 ),
    .I1(\MULFirstStage/Byte1Byte3/S38 ),
    .I2(\MULFirstStage/Byte1Byte3/C37 ),
    .O(\MULFirstStage/Byte1Byte3/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte3/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [19]),
    .O(\MULFirstStage/Byte1Byte3/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte3/X01_mand1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [16]),
    .O(\MULFirstStage/Byte1Byte3/X01_mand1_2655 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte3/X001  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [16]),
    .O(Result13[0])
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte2/FA412/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [15]),
    .I4(\MULFirstStage/Byte1Byte2/C310 ),
    .O(\MULFirstStage/Byte1Byte2/C412 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte1Byte2/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [13]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [14]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte1Byte2/FA310/Cout1  (
    .I0(\inputOperand1/Q [5]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [7]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte2/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte1Byte2/S21 ),
    .O(\MULFirstStage/Byte1Byte2/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte2/FA32/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte1Byte2/S21 ),
    .O(\MULFirstStage/Byte1Byte2/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte1Byte2/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte2/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [5]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte1Byte2/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A08800C0000000 ))
  \MULFirstStage/Byte1Byte2/FA213/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte2/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte2/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte1Byte2/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte1Byte2/FA211/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [4]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte2/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte2/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [11]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [10]),
    .I4(\MULFirstStage/Byte1Byte2/S11 ),
    .O(\MULFirstStage/Byte1Byte2/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte2/FA24/Cout1  (
    .I0(\inputOperand1/Q [4]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [11]),
    .I4(\MULFirstStage/Byte1Byte2/S11 ),
    .O(\MULFirstStage/Byte1Byte2/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte2/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [14]),
    .I4(\MULFirstStage/Byte1Byte2/S15 ),
    .O(\MULFirstStage/Byte1Byte2/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte2/FA29/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [15]),
    .I4(\MULFirstStage/Byte1Byte2/S15 ),
    .O(\MULFirstStage/Byte1Byte2/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte2/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte1Byte2/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte1Byte2/FA27/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand2/Q [13]),
    .I4(\inputOperand1/Q [2]),
    .I5(\inputOperand1/Q [1]),
    .O(\MULFirstStage/Byte1Byte2/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte2/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand2/Q [12]),
    .I5(\inputOperand2/Q [13]),
    .O(\MULFirstStage/Byte1Byte2/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte1Byte2/FA25/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte1Byte2/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte2/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte1Byte2/FA22/Cout1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte2/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte1Byte2/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte1Byte2/FA16/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [11]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte1Byte2/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte1Byte2/FA14/Cout1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_11_1_3180 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/C14 )
  );
  LUT6 #(
    .INIT ( 64'h963C66CC5AF0AA00 ))
  \MULFirstStage/Byte1Byte2/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [8]),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte1Byte2/FA12/Cout1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_10_1_3185 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_8_1_3177 ),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte2/FA411/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [5]),
    .I2(\MULFirstStage/Byte1Byte2/S310 ),
    .I3(\MULFirstStage/Byte1Byte2/C39 ),
    .O(\MULFirstStage/Byte1Byte2/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte2/FA410/Cout1  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [4]),
    .I2(\MULFirstStage/Byte1Byte2/S39 ),
    .I3(\MULFirstStage/Byte1Byte2/C38 ),
    .O(\MULFirstStage/Byte1Byte2/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte2/FA44/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte1Byte2/C32 ),
    .I3(\MULFirstStage/Byte1Byte2/S33 ),
    .O(\MULFirstStage/Byte1Byte2/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte2/FA43/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte1Byte2/C31 ),
    .I3(\MULFirstStage/Byte1Byte2/S32 ),
    .O(\MULFirstStage/Byte1Byte2/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA31/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte1Byte2/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte2/FA45/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C21 ),
    .I1(\MULFirstStage/Byte1Byte2/S23 ),
    .I2(\MULFirstStage/Byte1Byte2/S25 ),
    .I3(\MULFirstStage/Byte1Byte2/S22 ),
    .I4(\MULFirstStage/Byte1Byte2/S34 ),
    .O(\MULFirstStage/Byte1Byte2/C45 )
  );
  LUT6 #(
    .INIT ( 64'hF880077F077FF880 ))
  \MULFirstStage/Byte1Byte2/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte1Byte2/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte2/C16 ),
    .I4(\MULFirstStage/Byte1Byte2/S214 ),
    .I5(\MULFirstStage/Byte1Byte2/C213 ),
    .O(\MULFirstStage/Byte1Byte2/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte1Byte2/FA39/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [12]),
    .I2(\MULFirstStage/Byte1Byte2/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte2/C16 ),
    .I4(\MULFirstStage/Byte1Byte2/S214 ),
    .I5(\MULFirstStage/Byte1Byte2/C213 ),
    .O(\MULFirstStage/Byte1Byte2/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte2/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte2/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA21/Cout1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte1Byte2/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA23/Cout1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [12]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte1Byte2/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte2/FA46/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C23 ),
    .I1(\MULFirstStage/Byte1Byte2/S27 ),
    .I2(\MULFirstStage/Byte1Byte2/C22 ),
    .I3(\MULFirstStage/Byte1Byte2/S24 ),
    .I4(\MULFirstStage/Byte1Byte2/S35 ),
    .O(\MULFirstStage/Byte1Byte2/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_6_1_3184 ),
    .I1(\inputOperand2/Q_8_1_3177 ),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA11/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte2/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte2/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA15/Cout1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/HA13/Cout1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte2/FA47/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C25 ),
    .I1(\MULFirstStage/Byte1Byte2/S29 ),
    .I2(\MULFirstStage/Byte1Byte2/C24 ),
    .I3(\MULFirstStage/Byte1Byte2/S26 ),
    .I4(\MULFirstStage/Byte1Byte2/S36 ),
    .O(\MULFirstStage/Byte1Byte2/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte1Byte2/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte2/C13 ),
    .I1(\MULFirstStage/Byte1Byte2/C12 ),
    .I2(\MULFirstStage/Byte1Byte2/S14 ),
    .I3(\MULFirstStage/Byte1Byte2/C29 ),
    .I4(\MULFirstStage/Byte1Byte2/S210 ),
    .O(\MULFirstStage/Byte1Byte2/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte2/FA37/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C13 ),
    .I1(\MULFirstStage/Byte1Byte2/C12 ),
    .I2(\MULFirstStage/Byte1Byte2/S14 ),
    .I3(\MULFirstStage/Byte1Byte2/C29 ),
    .I4(\MULFirstStage/Byte1Byte2/S210 ),
    .O(\MULFirstStage/Byte1Byte2/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte1Byte2/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte2/C11 ),
    .I1(\MULFirstStage/Byte1Byte2/S13 ),
    .I2(\MULFirstStage/Byte1Byte2/C27 ),
    .I3(\MULFirstStage/Byte1Byte2/S12 ),
    .I4(\MULFirstStage/Byte1Byte2/S28 ),
    .O(\MULFirstStage/Byte1Byte2/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte2/FA36/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C11 ),
    .I1(\MULFirstStage/Byte1Byte2/S13 ),
    .I2(\MULFirstStage/Byte1Byte2/S12 ),
    .I3(\MULFirstStage/Byte1Byte2/C27 ),
    .I4(\MULFirstStage/Byte1Byte2/S28 ),
    .O(\MULFirstStage/Byte1Byte2/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte1Byte2/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte2/C14 ),
    .I1(\MULFirstStage/Byte1Byte2/S16 ),
    .I2(\MULFirstStage/Byte1Byte2/S212 ),
    .I3(\MULFirstStage/Byte1Byte2/C15 ),
    .I4(\MULFirstStage/Byte1Byte2/C211 ),
    .O(\MULFirstStage/Byte1Byte2/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte2/FA38/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/C14 ),
    .I1(\MULFirstStage/Byte1Byte2/S16 ),
    .I2(\MULFirstStage/Byte1Byte2/S212 ),
    .I3(\MULFirstStage/Byte1Byte2/C15 ),
    .I4(\MULFirstStage/Byte1Byte2/C211 ),
    .O(\MULFirstStage/Byte1Byte2/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte2/C41_mand111  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte2/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/S411  (
    .I0(\inputOperand2/Q [9]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte1Byte2/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte2/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte1Byte2/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte2/FA48/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/S211 ),
    .I1(\MULFirstStage/Byte1Byte2/C36 ),
    .I2(\MULFirstStage/Byte1Byte2/S37 ),
    .O(\MULFirstStage/Byte1Byte2/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte2/FA49/Cout1  (
    .I0(\MULFirstStage/Byte1Byte2/S213 ),
    .I1(\MULFirstStage/Byte1Byte2/S38 ),
    .I2(\MULFirstStage/Byte1Byte2/C37 ),
    .O(\MULFirstStage/Byte1Byte2/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte2/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [11]),
    .O(\MULFirstStage/Byte1Byte2/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte2/X01_mand1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [8]),
    .O(\MULFirstStage/Byte1Byte2/X01_mand1_2750 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte2/X001  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [8]),
    .O(Result12[0])
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte1/FA412/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [7]),
    .I4(\MULFirstStage/Byte1Byte1/C310 ),
    .O(\MULFirstStage/Byte1Byte1/C412 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte1Byte1/FA310/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [5]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [6]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S310 )
  );
  LUT6 #(
    .INIT ( 64'hF8808000C0008000 ))
  \MULFirstStage/Byte1Byte1/FA310/Cout1  (
    .I0(\inputOperand1/Q [5]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [7]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/C310 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte1/FA32/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte1Byte1/S21 ),
    .O(\MULFirstStage/Byte1Byte1/S32 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte1/FA32/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte1Byte1/S21 ),
    .O(\MULFirstStage/Byte1Byte1/C32 )
  );
  LUT6 #(
    .INIT ( 64'h965A66AA3CF0CC00 ))
  \MULFirstStage/Byte1Byte1/FA214/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S214 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte1/FA213/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [5]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte1Byte1/S213 )
  );
  LUT6 #(
    .INIT ( 64'hE8A08800C0000000 ))
  \MULFirstStage/Byte1Byte1/FA213/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/C213 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte1/FA211/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte1Byte1/S211 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte1Byte1/FA211/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [4]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/C211 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte1/FA24/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [3]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [2]),
    .I4(\MULFirstStage/Byte1Byte1/S11 ),
    .O(\MULFirstStage/Byte1Byte1/S24 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte1/FA24/Cout1  (
    .I0(\inputOperand1/Q [4]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [3]),
    .I4(\MULFirstStage/Byte1Byte1/S11 ),
    .O(\MULFirstStage/Byte1Byte1/C24 )
  );
  LUT5 #(
    .INIT ( 32'h87777888 ))
  \MULFirstStage/Byte1Byte1/FA29/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [6]),
    .I4(\MULFirstStage/Byte1Byte1/S15 ),
    .O(\MULFirstStage/Byte1Byte1/S29 )
  );
  LUT5 #(
    .INIT ( 32'hF8888000 ))
  \MULFirstStage/Byte1Byte1/FA29/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [7]),
    .I4(\MULFirstStage/Byte1Byte1/S15 ),
    .O(\MULFirstStage/Byte1Byte1/C29 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte1/FA27/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte1Byte1/S27 )
  );
  LUT6 #(
    .INIT ( 64'hF880808088000000 ))
  \MULFirstStage/Byte1Byte1/FA27/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand2/Q [5]),
    .I4(\inputOperand1/Q [2]),
    .I5(\inputOperand1/Q [1]),
    .O(\MULFirstStage/Byte1Byte1/C27 )
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte1/FA25/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand2/Q [4]),
    .I5(\inputOperand2/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/S25 )
  );
  LUT6 #(
    .INIT ( 64'hF880880080800000 ))
  \MULFirstStage/Byte1Byte1/FA25/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/C25 )
  );
  LUT6 #(
    .INIT ( 64'h96665AAA3CCCF000 ))
  \MULFirstStage/Byte1Byte1/FA22/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/S22 )
  );
  LUT6 #(
    .INIT ( 64'hE888A000C0000000 ))
  \MULFirstStage/Byte1Byte1/FA22/Cout1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [4]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/C22 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \MULFirstStage/Byte1Byte1/FA16/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S16 )
  );
  LUT6 #(
    .INIT ( 64'hF888800080008000 ))
  \MULFirstStage/Byte1Byte1/FA16/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [3]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/C16 )
  );
  LUT6 #(
    .INIT ( 64'h956A3FC06A6AC0C0 ))
  \MULFirstStage/Byte1Byte1/FA14/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/S14 )
  );
  LUT6 #(
    .INIT ( 64'hEA80C00080800000 ))
  \MULFirstStage/Byte1Byte1/FA14/Cout1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_3_1_3181 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/C14 )
  );
  LUT6 #(
    .INIT ( 64'h963C66CC5AF0AA00 ))
  \MULFirstStage/Byte1Byte1/FA12/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [0]),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/S12 )
  );
  LUT6 #(
    .INIT ( 64'hE8C08800A0000000 ))
  \MULFirstStage/Byte1Byte1/FA12/Cout1  (
    .I0(\inputOperand1/Q_7_1_3188 ),
    .I1(\inputOperand2/Q_2_1_3186 ),
    .I2(\inputOperand1/Q_6_1_3184 ),
    .I3(\inputOperand2/Q_0_1_3178 ),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/C12 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte1/FA411/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [5]),
    .I2(\MULFirstStage/Byte1Byte1/S310 ),
    .I3(\MULFirstStage/Byte1Byte1/C39 ),
    .O(\MULFirstStage/Byte1Byte1/C411 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte1/FA410/Cout1  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [4]),
    .I2(\MULFirstStage/Byte1Byte1/S39 ),
    .I3(\MULFirstStage/Byte1Byte1/C38 ),
    .O(\MULFirstStage/Byte1Byte1/C410 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte1/FA44/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte1Byte1/C32 ),
    .I3(\MULFirstStage/Byte1Byte1/S33 ),
    .O(\MULFirstStage/Byte1Byte1/C44 )
  );
  LUT4 #(
    .INIT ( 16'hF880 ))
  \MULFirstStage/Byte1Byte1/FA43/Cout1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte1Byte1/C31 ),
    .I3(\MULFirstStage/Byte1Byte1/S32 ),
    .O(\MULFirstStage/Byte1Byte1/C43 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA31/Cout1  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte1Byte1/C31 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte1/FA45/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C21 ),
    .I1(\MULFirstStage/Byte1Byte1/S23 ),
    .I2(\MULFirstStage/Byte1Byte1/S25 ),
    .I3(\MULFirstStage/Byte1Byte1/S22 ),
    .I4(\MULFirstStage/Byte1Byte1/S34 ),
    .O(\MULFirstStage/Byte1Byte1/C45 )
  );
  LUT6 #(
    .INIT ( 64'hF880077F077FF880 ))
  \MULFirstStage/Byte1Byte1/FA39/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte1Byte1/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte1/C16 ),
    .I4(\MULFirstStage/Byte1Byte1/S214 ),
    .I5(\MULFirstStage/Byte1Byte1/C213 ),
    .O(\MULFirstStage/Byte1Byte1/S39 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF880F8800000 ))
  \MULFirstStage/Byte1Byte1/FA39/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [4]),
    .I2(\MULFirstStage/Byte1Byte1/A[7]_B[3]_AND_41_o ),
    .I3(\MULFirstStage/Byte1Byte1/C16 ),
    .I4(\MULFirstStage/Byte1Byte1/S214 ),
    .I5(\MULFirstStage/Byte1Byte1/C213 ),
    .O(\MULFirstStage/Byte1Byte1/C39 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte1/HA21/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/S21 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA21/Cout1  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte1Byte1/C21 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/HA23/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S23 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA23/Cout1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [4]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/C23 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte1/FA46/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C23 ),
    .I1(\MULFirstStage/Byte1Byte1/S27 ),
    .I2(\MULFirstStage/Byte1Byte1/C22 ),
    .I3(\MULFirstStage/Byte1Byte1/S24 ),
    .I4(\MULFirstStage/Byte1Byte1/S35 ),
    .O(\MULFirstStage/Byte1Byte1/C46 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/HA11/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q_6_1_3184 ),
    .I1(\inputOperand2/Q_0_1_3178 ),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/S11 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA11/Cout1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [5]),
    .O(\MULFirstStage/Byte1Byte1/C11 )
  );
  LUT4 #(
    .INIT ( 16'h6CA0 ))
  \MULFirstStage/Byte1Byte1/HA15/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S15 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA15/Cout1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/C15 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/HA13/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S13 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/HA13/Cout1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/C13 )
  );
  LUT5 #(
    .INIT ( 32'hFEECC880 ))
  \MULFirstStage/Byte1Byte1/FA47/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C25 ),
    .I1(\MULFirstStage/Byte1Byte1/S29 ),
    .I2(\MULFirstStage/Byte1Byte1/C24 ),
    .I3(\MULFirstStage/Byte1Byte1/S26 ),
    .I4(\MULFirstStage/Byte1Byte1/S36 ),
    .O(\MULFirstStage/Byte1Byte1/C47 )
  );
  LUT5 #(
    .INIT ( 32'hE81717E8 ))
  \MULFirstStage/Byte1Byte1/FA37/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte1/C13 ),
    .I1(\MULFirstStage/Byte1Byte1/C12 ),
    .I2(\MULFirstStage/Byte1Byte1/S14 ),
    .I3(\MULFirstStage/Byte1Byte1/C29 ),
    .I4(\MULFirstStage/Byte1Byte1/S210 ),
    .O(\MULFirstStage/Byte1Byte1/S37 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte1/FA37/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C13 ),
    .I1(\MULFirstStage/Byte1Byte1/C12 ),
    .I2(\MULFirstStage/Byte1Byte1/S14 ),
    .I3(\MULFirstStage/Byte1Byte1/C29 ),
    .I4(\MULFirstStage/Byte1Byte1/S210 ),
    .O(\MULFirstStage/Byte1Byte1/C37 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte1Byte1/FA36/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte1/C11 ),
    .I1(\MULFirstStage/Byte1Byte1/S13 ),
    .I2(\MULFirstStage/Byte1Byte1/C27 ),
    .I3(\MULFirstStage/Byte1Byte1/S12 ),
    .I4(\MULFirstStage/Byte1Byte1/S28 ),
    .O(\MULFirstStage/Byte1Byte1/S36 )
  );
  LUT5 #(
    .INIT ( 32'hFFE8E800 ))
  \MULFirstStage/Byte1Byte1/FA36/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C11 ),
    .I1(\MULFirstStage/Byte1Byte1/S13 ),
    .I2(\MULFirstStage/Byte1Byte1/S12 ),
    .I3(\MULFirstStage/Byte1Byte1/C27 ),
    .I4(\MULFirstStage/Byte1Byte1/S28 ),
    .O(\MULFirstStage/Byte1Byte1/C36 )
  );
  LUT5 #(
    .INIT ( 32'hE1871E78 ))
  \MULFirstStage/Byte1Byte1/FA38/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte1/C14 ),
    .I1(\MULFirstStage/Byte1Byte1/S16 ),
    .I2(\MULFirstStage/Byte1Byte1/S212 ),
    .I3(\MULFirstStage/Byte1Byte1/C15 ),
    .I4(\MULFirstStage/Byte1Byte1/C211 ),
    .O(\MULFirstStage/Byte1Byte1/S38 )
  );
  LUT5 #(
    .INIT ( 32'hFEF8E080 ))
  \MULFirstStage/Byte1Byte1/FA38/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/C14 ),
    .I1(\MULFirstStage/Byte1Byte1/S16 ),
    .I2(\MULFirstStage/Byte1Byte1/S212 ),
    .I3(\MULFirstStage/Byte1Byte1/C15 ),
    .I4(\MULFirstStage/Byte1Byte1/C211 ),
    .O(\MULFirstStage/Byte1Byte1/C38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \MULFirstStage/Byte1Byte1/C41_mand111  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte1/C41_mand1 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/S411  (
    .I0(\inputOperand2/Q [1]),
    .I1(\inputOperand1/Q [1]),
    .I2(\inputOperand1/Q [2]),
    .I3(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte1Byte1/S41 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte1/A[0]_B[3]_AND_58_o1  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/A[0]_B[3]_AND_58_o )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte1/FA48/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/S211 ),
    .I1(\MULFirstStage/Byte1Byte1/C36 ),
    .I2(\MULFirstStage/Byte1Byte1/S37 ),
    .O(\MULFirstStage/Byte1Byte1/C48 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \MULFirstStage/Byte1Byte1/FA49/Cout1  (
    .I0(\MULFirstStage/Byte1Byte1/S213 ),
    .I1(\MULFirstStage/Byte1Byte1/S38 ),
    .I2(\MULFirstStage/Byte1Byte1/C37 ),
    .O(\MULFirstStage/Byte1Byte1/C49 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte1/A[7]_B[3]_AND_41_o1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [3]),
    .O(\MULFirstStage/Byte1Byte1/A[7]_B[3]_AND_41_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte1/X01_mand1  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [0]),
    .O(\MULFirstStage/Byte1Byte1/X01_mand1_2844 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte1/X001  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [0]),
    .O(Result11[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \SignSecondStgae/PartMux/Mmux_Output1_SW0  (
    .I0(\OperandSign2Reg/Q_0_231 ),
    .I1(\ExclusiveSignReg/Q_0_68 ),
    .O(N0)
  );
  LUT6 #(
    .INIT ( 64'hFEEEAAAA0222AAAA ))
  \SignSecondStgae/PartMux/Mmux_Output1  (
    .I0(\OperandSign1Reg/Q_0_230 ),
    .I1(\SignOfDifference1Reg/Q_0_244 ),
    .I2(\ZeroDifferenceReg/Q_0_245 ),
    .I3(\CompareReg/Q [1]),
    .I4(\EffectivOperationReg1/Q_0_246 ),
    .I5(N0),
    .O(ADDSign)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \FinalExponent<4>_SW0  (
    .I0(\ExponentUpdateReq1/Q [2]),
    .I1(\RoundControlReg/Q_0_525 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \FinalExponent<4>  (
    .I0(\ExponentUpdateReq1/Q [4]),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\ExponentUpdateReq1/Q [1]),
    .I3(\ExponentUpdateReq1/Q [0]),
    .I4(\ExponentUpdateReq1/Q [3]),
    .I5(N2),
    .O(FinalExponent[4])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \FinalExponent<5>_SW0  (
    .I0(\ExponentUpdateReq1/Q [3]),
    .I1(\ExponentUpdateReq1/Q [2]),
    .I2(\RoundControlReg/Q_0_525 ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA6AAAAAAA ))
  \FinalExponent<5>  (
    .I0(\ExponentUpdateReq1/Q [5]),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\ExponentUpdateReq1/Q [4]),
    .I3(\ExponentUpdateReq1/Q [1]),
    .I4(\ExponentUpdateReq1/Q [0]),
    .I5(N4),
    .O(FinalExponent[5])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \FinalExponent<7>_SW0  (
    .I0(\ExponentUpdateReq1/Q [0]),
    .I1(\ExponentUpdateReq1/Q [5]),
    .I2(\ExponentUpdateReq1/Q [3]),
    .I3(\ExponentUpdateReq1/Q [2]),
    .I4(\RoundControlReg/Q_0_525 ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \FinalExponent<7>  (
    .I0(\ExponentUpdateReq1/Q [7]),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\ExponentUpdateReq1/Q [6]),
    .I3(\ExponentUpdateReq1/Q [4]),
    .I4(\ExponentUpdateReq1/Q [1]),
    .I5(N6),
    .O(FinalExponent[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \FinalExponent<6>_SW0  (
    .I0(\ExponentUpdateReq1/Q [5]),
    .I1(\ExponentUpdateReq1/Q [3]),
    .I2(\ExponentUpdateReq1/Q [2]),
    .I3(\RoundControlReg/Q_0_525 ),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \FinalExponent<6>  (
    .I0(\ExponentUpdateReq1/Q [6]),
    .I1(\Stage5/Rounding/Madd_n0006_cy [23]),
    .I2(\ExponentUpdateReq1/Q [4]),
    .I3(\ExponentUpdateReq1/Q [1]),
    .I4(\ExponentUpdateReq1/Q [0]),
    .I5(N8),
    .O(FinalExponent[6])
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  \Stage1/ExponDifference/Sign11  (
    .I0(\inputOperand1/Q [26]),
    .I1(\inputOperand2/Q [26]),
    .I2(\Stage1/ExponDifference/Sign1 ),
    .O(\Stage1/ExponDifference/Sign11_2863 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o<5>_SW0  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<6> ),
    .I1(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<5> ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFCFFFCFFFFAAAA ))
  \Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o<5>  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<7> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<5> ),
    .I2(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<6> ),
    .I3(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<7> ),
    .I4(N10),
    .I5(SignOfDifference),
    .O(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o )
  );
  LUT6 #(
    .INIT ( 64'hFD75FD75FD75FC30 ))
  \Stage2/CalcSticky/StickyBit<0>1211  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Stage2/SignOfDifference_mmx_out10 ),
    .I3(\Stage2/SignOfDifference_mmx_out9 ),
    .I4(\Stage2/NDifference<0>_mmx_out15 ),
    .I5(\Stage2/NDifference<0>_mmx_out14 ),
    .O(\Stage2/CalcSticky/StickyBit<0>1211_2865 )
  );
  LUT6 #(
    .INIT ( 64'h30F020E010D000C0 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output11  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<2>_mmx_out17 ),
    .I4(\Stage2/Difference<1>_mmx_out17 ),
    .I5(\Stage2/Difference<1>_mmx_out18 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output1 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output12  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\Stage2/Difference<1>_mmx_out4 ),
    .I3(\Stage2/Difference<1>_mmx_out20 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output11_2869 )
  );
  LUT5 #(
    .INIT ( 32'h54441000 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output14  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\Stage2/Difference<0>_mmx_out17 ),
    .I4(\Stage2/Difference<1>_mmx_out19 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output12_2870 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output15  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\Stage2/AlignShifter/Stage5/Mmux_Output11_2869 ),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output12_2870 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output1 ),
    .O(\Stage2/preAligned [0])
  );
  LUT6 #(
    .INIT ( 64'hFE76BA32DC549810 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output281  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out17 ),
    .I3(\Stage2/Difference<1>_mmx_out20 ),
    .I4(\Stage2/Difference<1>_mmx_out19 ),
    .I5(\Stage2/Difference<1>_mmx_out18 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output28 )
  );
  LUT4 #(
    .INIT ( 16'h5702 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output282  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out17 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output28 ),
    .O(\Stage2/preAligned [8])
  );
  LUT6 #(
    .INIT ( 64'hFE76DC54BA329810 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output271  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out12 ),
    .I3(\Stage2/Difference<1>_mmx_out15 ),
    .I4(\Stage2/Difference<1>_mmx_out13 ),
    .I5(\Stage2/Difference<1>_mmx_out14 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output27 )
  );
  LUT5 #(
    .INIT ( 32'h55570002 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output272  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out16 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output27 ),
    .O(\Stage2/preAligned [7])
  );
  LUT6 #(
    .INIT ( 64'hFEDCBA9876543210 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output261  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out7 ),
    .I3(\Stage2/Difference<1>_mmx_out8 ),
    .I4(\Stage2/Difference<1>_mmx_out9 ),
    .I5(\Stage2/Difference<1>_mmx_out10 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output26 )
  );
  LUT5 #(
    .INIT ( 32'h37330400 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output262  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out11 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output26 ),
    .O(\Stage2/preAligned [6])
  );
  LUT6 #(
    .INIT ( 64'h0123456789ABCDEF ))
  \Stage2/AlignShifter/Stage5/Mmux_Output25_SW0  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out ),
    .I3(\Stage2/Difference<1>_mmx_out1 ),
    .I4(\Stage2/Difference<1>_mmx_out2 ),
    .I5(\Stage2/Difference<1>_mmx_out3 ),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h0437 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output25  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\Stage2/Difference<2>_mmx_out10 ),
    .I3(N12),
    .O(\Stage2/preAligned [5])
  );
  LUT6 #(
    .INIT ( 64'h012389AB4567CDEF ))
  \Stage2/AlignShifter/Stage5/Mmux_Output24_SW0  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out4 ),
    .I3(\Stage2/Difference<1>_mmx_out17 ),
    .I4(\Stage2/Difference<1>_mmx_out19 ),
    .I5(\Stage2/Difference<1>_mmx_out18 ),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h0437 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output24  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\Stage2/Difference<2>_mmx_out8 ),
    .I3(N14),
    .O(\Stage2/preAligned [4])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output231  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out12 ),
    .I3(\Stage2/Difference<1>_mmx_out14 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output23 )
  );
  LUT6 #(
    .INIT ( 64'h5551545005010400 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output232  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<0>_mmx_out1 ),
    .I4(\Stage2/Difference<0>_mmx_out ),
    .I5(\Stage2/Difference<1>_mmx_out13 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output231_2877 )
  );
  LUT5 #(
    .INIT ( 32'h55507772 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output233  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output231_2877 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output23 ),
    .I4(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/preAligned [3])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output211  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out7 ),
    .I3(\Stage2/Difference<1>_mmx_out9 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output21 )
  );
  LUT6 #(
    .INIT ( 64'h5551545005010400 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output212  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<0>_mmx_out12 ),
    .I4(\Stage2/Difference<0>_mmx_out17 ),
    .I5(\Stage2/Difference<1>_mmx_out8 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output211_2879 )
  );
  LUT5 #(
    .INIT ( 32'h77725550 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output213  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output211_2879 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output21 ),
    .I4(\Stage2/Difference<2>_mmx_out4 ),
    .O(\Stage2/preAligned [2])
  );
  LUT6 #(
    .INIT ( 64'hFEDCBA9876543210 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output291  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<1>_mmx_out1 ),
    .I3(\Stage2/Difference<1>_mmx_out2 ),
    .I4(\Stage2/Difference<1>_mmx_out3 ),
    .I5(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output29 )
  );
  LUT6 #(
    .INIT ( 64'h30F020E010D000C0 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output131  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<2>_mmx_out2 ),
    .I4(\Stage2/Difference<1>_mmx_out1 ),
    .I5(\Stage2/Difference<1>_mmx_out2 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output13 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output133  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\Stage2/Difference<1>_mmx_out ),
    .I2(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output132_2883 )
  );
  LUT5 #(
    .INIT ( 32'hF3F1F2F0 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output134  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output13 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output132_2883 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output131_2882 ),
    .O(\Stage2/preAligned [1])
  );
  LUT5 #(
    .INIT ( 32'h55554440 ))
  \Stage2/CalcSticky/StickyBit<0>2  (
    .I0(\NDifferenceReg/Q [3]),
    .I1(\NDifferenceReg/Q [1]),
    .I2(\Stage2/NDifference<0>_mmx_out19 ),
    .I3(\Stage2/NDifference<0>_mmx_out18 ),
    .I4(\Stage2/CalcSticky/StickyBit [0]),
    .O(\Stage2/CalcSticky/StickyBit<0>1_2885 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDEC ))
  \Stage2/CalcSticky/StickyBit<0>4  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\Stage2/NDifference<0>_mmx_out8 ),
    .I2(\Stage2/NDifference<0>_mmx_out9 ),
    .I3(\Stage2/NDifference<0>_mmx_out11 ),
    .I4(\Stage2/NDifference<0>_mmx_out10 ),
    .O(\Stage2/CalcSticky/StickyBit<0>3_2887 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFEFFFEDDDC ))
  \Stage2/CalcSticky/StickyBit<0>9  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\Stage2/NDifference<0>_mmx_out17 ),
    .I2(\Stage2/NDifference<0>_mmx_out18 ),
    .I3(\Stage2/NDifference<0>_mmx_out19 ),
    .I4(\Stage2/NDifference<0>_mmx_out15 ),
    .I5(\Stage2/NDifference<0>_mmx_out16 ),
    .O(\Stage2/CalcSticky/StickyBit<0>8_2889 )
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \Stage2/CalcSticky/StickyBit<0>10  (
    .I0(\NDifferenceReg/Q [3]),
    .I1(\NDifferenceReg/Q [1]),
    .I2(\Stage2/NDifference<0>_mmx_out14 ),
    .I3(\Stage2/NDifference<0>_mmx_out16 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>8_2889 ),
    .O(\Stage2/CalcSticky/StickyBit<0>9_2890 )
  );
  LUT6 #(
    .INIT ( 64'hFDFDFDFDFDFDFDFC ))
  \Stage2/CalcSticky/StickyBit<0>13  (
    .I0(\NDifferenceReg/Q [4]),
    .I1(\Stage2/CalcSticky/StickyBit<0>11_2892 ),
    .I2(\Stage2/CalcSticky/StickyBit<0>10_2891 ),
    .I3(\Stage2/CalcSticky/StickyBit<0>9_2890 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>2_2886 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>7 ),
    .O(\Stage2/StickyBit )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00808888 ))
  \Stage3/ZerosCounter/Mmux_Shifts44  (
    .I0(\Stage3/ZerosCounter/Mmux_Shifts52 ),
    .I1(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[2] ),
    .I2(\Stage3/ZerosCounter/Mmux_Shifts411 ),
    .I3(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[1] ),
    .I4(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .I5(\Stage3/ZerosCounter/Mmux_Shifts42 ),
    .O(NormShifts[3])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Stage3/ZerosCounter/Mmux_Shifts3_SW0  (
    .I0(AdderResult[22]),
    .I1(AdderResult[21]),
    .I2(AdderResult[20]),
    .I3(AdderResult[19]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80800880 ))
  \Stage3/ZerosCounter/Mmux_Shifts3  (
    .I0(\Stage3/ZerosCounter/Mmux_Shifts521 ),
    .I1(\Stage3/ZerosCounter/Mmux_Shifts312 ),
    .I2(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[2] ),
    .I3(\Stage3/ZerosCounter/Mmux__n0087_rs_A [3]),
    .I4(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[1] ),
    .I5(N16),
    .O(NormShifts[2])
  );
  LUT6 #(
    .INIT ( 64'h00000000FFFF00F2 ))
  \Stage3/ZerosCounter/Mmux_Shifts11  (
    .I0(AdderResult[3]),
    .I1(AdderResult[4]),
    .I2(AdderResult[5]),
    .I3(AdderResult[6]),
    .I4(AdderResult[7]),
    .I5(AdderResult[8]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts1 )
  );
  LUT4 #(
    .INIT ( 16'hCCFD ))
  \Stage3/ZerosCounter/Mmux_Shifts12  (
    .I0(AdderResult[10]),
    .I1(AdderResult[13]),
    .I2(AdderResult[11]),
    .I3(AdderResult[12]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts11_2896 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F0C0C0D0C0D0C ))
  \Stage3/ZerosCounter/Mmux_Shifts13  (
    .I0(AdderResult[14]),
    .I1(AdderResult[15]),
    .I2(AdderResult[16]),
    .I3(\Stage3/ZerosCounter/Mmux_Shifts11_2896 ),
    .I4(\Stage3/ZerosCounter/Mmux_Shifts1 ),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .O(\Stage3/ZerosCounter/Mmux_Shifts12_2897 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF00F3FFFF00F2 ))
  \Stage3/ZerosCounter/Mmux_Shifts14  (
    .I0(AdderResult[17]),
    .I1(AdderResult[18]),
    .I2(AdderResult[19]),
    .I3(AdderResult[20]),
    .I4(AdderResult[21]),
    .I5(\Stage3/ZerosCounter/Mmux_Shifts12_2897 ),
    .O(\Stage3/ZerosCounter/Mmux_Shifts13_2898 )
  );
  LUT6 #(
    .INIT ( 64'h0000FF0B0000FF0A ))
  \Stage3/ZerosCounter/Mmux_Shifts15  (
    .I0(AdderResult[23]),
    .I1(AdderResult[22]),
    .I2(AdderResult[24]),
    .I3(AdderResult[25]),
    .I4(AdderResult[26]),
    .I5(\Stage3/ZerosCounter/Mmux_Shifts13_2898 ),
    .O(NormShifts[0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Stage3/ZerosCounter/Mmux_Shifts21  (
    .I0(AdderResult[18]),
    .I1(AdderResult[17]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF0FFFEFFF0 ))
  \Stage3/ZerosCounter/Mmux_Shifts22  (
    .I0(AdderResult[15]),
    .I1(AdderResult[16]),
    .I2(AdderResult[19]),
    .I3(AdderResult[20]),
    .I4(\Stage3/ZerosCounter/Mmux_Shifts2 ),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[1] ),
    .O(\Stage3/ZerosCounter/Mmux_Shifts21_2900 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Stage3/ZerosCounter/Mmux_Shifts23  (
    .I0(AdderResult[22]),
    .I1(AdderResult[21]),
    .O(\Stage3/ZerosCounter/Mmux_Shifts22_2901 )
  );
  LUT6 #(
    .INIT ( 64'h000F000E000E000E ))
  \Stage3/ZerosCounter/Mmux_Shifts24  (
    .I0(AdderResult[23]),
    .I1(AdderResult[24]),
    .I2(AdderResult[25]),
    .I3(AdderResult[26]),
    .I4(\Stage3/ZerosCounter/Mmux_Shifts22_2901 ),
    .I5(\Stage3/ZerosCounter/Mmux_Shifts21_2900 ),
    .O(NormShifts[1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Stage3/ZerosCounter/Mmux__n0087_rs_lut<2>_SW0  (
    .I0(AdderResult[4]),
    .I1(AdderResult[3]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hF111F000EEEEFFFF ))
  \Stage3/ZerosCounter/Mmux__n0087_rs_lut<2>  (
    .I0(AdderResult[11]),
    .I1(AdderResult[12]),
    .I2(N18),
    .I3(\Stage3/ZerosCounter/Mmux_Shifts415 ),
    .I4(\Stage3/ZerosCounter/Mmux__n0087_B12 ),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .O(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[2] )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \Stage3/ZerosCounter/Mmux__n0087_rs_lut<1>_SW0  (
    .I0(AdderResult[5]),
    .I1(AdderResult[6]),
    .I2(AdderResult[7]),
    .I3(AdderResult[8]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output291  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [25]),
    .I3(\MULResultReg/Q [26]),
    .I4(\AdderResultReg/Q [6]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output29 )
  );
  LUT6 #(
    .INIT ( 64'h7577755520222000 ))
  \Stage4/tobeRoundMux/Mmux_Output292  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [0]),
    .I3(\NormShiftsReg/Q [0]),
    .I4(\AdderResultReg/Q [1]),
    .I5(\Stage4/NormShifts<1>_mmx_out14 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output291_2905 )
  );
  LUT6 #(
    .INIT ( 64'h02A252F207A757F7 ))
  \Stage4/tobeRoundMux/Mmux_Output261_SW0  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\AdderResultReg/Q [19]),
    .I2(\NormShiftsReg/Q [4]),
    .I3(\AdderResultReg/Q [3]),
    .I4(\AdderResultReg/Q [5]),
    .I5(\AdderResultReg/Q [21]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h7477303344470003 ))
  \Stage4/tobeRoundMux/Mmux_Output261  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\NormShiftsReg/Q [0]),
    .I3(N22),
    .I4(\Stage4/tobeRoundMux/Mmux_Output2612 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output2611 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output261_1976 )
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output232  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [44]),
    .I3(\MULResultReg/Q [45]),
    .I4(\AdderResultReg/Q [25]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output23 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88088000 ))
  \Stage4/tobeRoundMux/Mmux_Output233  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\Stage4/tobeRoundMux/Mmux_Output143_1950 ),
    .I2(\NormShiftsReg/Q [4]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output191 ),
    .I4(\Stage4/NormShifts<1>_mmx_out5 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output23 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output232_2908 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  \Stage4/tobeRoundMux/Mmux_Output234  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output233_1951 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [1]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output1831 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output2811 ),
    .I5(\Stage4/NormShifts<1>_mmx_out19 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output234_2909 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF44445444 ))
  \Stage4/tobeRoundMux/Mmux_Output235  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output234_2909 ),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output231 ),
    .I4(\AlgorthimSelReg3/Q_0_499 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output232_2908 ),
    .O(TobeRounded[21])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output262  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [45]),
    .I3(\MULResultReg/Q [46]),
    .I4(\AdderResultReg/Q [26]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output26 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output264  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [25]),
    .I2(\AdderResultReg/Q [24]),
    .O(\Stage4/tobeRoundMux/Mmux_Output264_2912 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  \Stage4/tobeRoundMux/Mmux_Output265  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output233_1951 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [1]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output2131 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output264_2912 ),
    .I5(\Stage4/NormShifts<1>_mmx_out20 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output265_2913 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF44445444 ))
  \Stage4/tobeRoundMux/Mmux_Output266  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output265_2913 ),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output261_1976 ),
    .I4(\AlgorthimSelReg3/Q_0_499 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output263_2911 ),
    .O(TobeRounded[22])
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage4/tobeRoundMux/Mmux_Output181_SW0  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\AdderResultReg/Q [16]),
    .I2(\AdderResultReg/Q [18]),
    .O(N24)
  );
  LUT5 #(
    .INIT ( 32'hEAEF4045 ))
  \Stage4/tobeRoundMux/Mmux_Output181  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\Stage4/tobeRoundMux/Mmux_Output2622_1957 ),
    .I2(\NormShiftsReg/Q [0]),
    .I3(N24),
    .I4(\Stage4/tobeRoundMux/Mmux_Output301 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output181_1975 )
  );
  LUT6 #(
    .INIT ( 64'hAA3FAA33AA0CAA00 ))
  \Stage4/tobeRoundMux/Mmux_Output182  (
    .I0(\AdderResultReg/Q [23]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output181_1975 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output184_1955 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output18 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFD5FFFF8A80 ))
  \Stage4/tobeRoundMux/Mmux_Output185  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [43]),
    .I2(\MULResultReg/Q [47]),
    .I3(\MULResultReg/Q [42]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output183_2916 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output18 ),
    .O(TobeRounded[19])
  );
  LUT6 #(
    .INIT ( 64'h7577755520222000 ))
  \Stage4/tobeRoundMux/Mmux_Output141  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output191 ),
    .I3(\NormShiftsReg/Q [4]),
    .I4(\Stage4/NormShifts<1>_mmx_out5 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output231 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output14 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output143  (
    .I0(\MULResultReg/Q [47]),
    .I1(\MULResultReg/Q [40]),
    .I2(\MULResultReg/Q [41]),
    .O(\Stage4/tobeRoundMux/Mmux_Output144_2919 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFB0BFFFFF808 ))
  \Stage4/tobeRoundMux/Mmux_Output144  (
    .I0(\AdderResultReg/Q [21]),
    .I1(\EffCarryReg1/Q_0_493 ),
    .I2(\AlgorthimSelReg3/Q_0_499 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output144_2919 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output141_2918 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output14 ),
    .O(TobeRounded[17])
  );
  LUT6 #(
    .INIT ( 64'h7377733340554000 ))
  \Stage4/tobeRoundMux/Mmux_Output2313  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output23111 ),
    .I3(\NormShiftsReg/Q [0]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output2611 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output2312_2920 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output231 )
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \Stage4/tobeRoundMux/Mmux_Output341  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\Stage4/NormShifts<1>_mmx_out16 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output182_1969 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output301 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output34 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output342  (
    .I0(\MULResultReg/Q [47]),
    .I1(\MULResultReg/Q [30]),
    .I2(\MULResultReg/Q [31]),
    .O(\Stage4/tobeRoundMux/Mmux_Output341_2922 )
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \Stage4/tobeRoundMux/Mmux_Output343  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\AdderResultReg/Q [11]),
    .I2(\EffCarryReg1/Q_0_493 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output34 ),
    .I4(\NormShiftsReg/Q [4]),
    .I5(\Stage4/tobeRoundMux/Mmux_Output341_2922 ),
    .O(TobeRounded[7])
  );
  LUT6 #(
    .INIT ( 64'h5450141044400400 ))
  \Stage4/tobeRoundMux/Mmux_Output101  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\Stage4/NormShifts<1>_mmx_out3 ),
    .I4(\Stage4/NormShifts<1>_mmx_out16 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output182_1969 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output10 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAA03AA00 ))
  \Stage4/tobeRoundMux/Mmux_Output102  (
    .I0(\AdderResultReg/Q [19]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output181_1975 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output10 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output101_2924 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output103  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [39]),
    .I3(\MULResultReg/Q [38]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output101_2924 ),
    .O(TobeRounded[15])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output30_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [26]),
    .I3(\MULResultReg/Q [27]),
    .I4(\AdderResultReg/Q [7]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22200020 ))
  \Stage4/tobeRoundMux/Mmux_Output30  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/NormShifts<1>_mmx_out16 ),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output301 ),
    .I5(N26),
    .O(TobeRounded[3])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage4/tobeRoundMux/Mmux_Output37  (
    .I0(\NormShiftsReg/Q [2]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output182_1969 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output301 ),
    .I4(\Stage4/NormShifts<1>_mmx_out16 ),
    .I5(\Stage4/NormShifts<1>_mmx_out3 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output31_2926 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage4/tobeRoundMux/Mmux_Output362_SW0  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\AdderResultReg/Q [10]),
    .I2(\AdderResultReg/Q [12]),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'hEAEF4045 ))
  \Stage4/tobeRoundMux/Mmux_Output362  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\Stage4/NormShifts<1>2 ),
    .I2(\NormShiftsReg/Q [0]),
    .I3(N28),
    .I4(\Stage4/NormShifts<1>_mmx_out12 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output362_1964 )
  );
  LUT6 #(
    .INIT ( 64'hFB7BD858BB3B8808 ))
  \Stage4/ExponentMux/Mmux_Output7  (
    .I0(\ResultExponentReg/Q [6]),
    .I1(\AlgorthimSelReg3/Q_0_499 ),
    .I2(\ResultExponentReg/Q [5]),
    .I3(N30),
    .I4(\Stage4/ExponentAdderResult1 [6]),
    .I5(\Stage4/ExponentMux/Mmux_Output83_1944 ),
    .O(ExponentAdderResult1[6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \Stage4/ExponentMux/Mmux_Output81  (
    .I0(\ResultExponentReg/Q [5]),
    .I1(\ResultExponentReg/Q [6]),
    .I2(\ResultExponentReg/Q [4]),
    .I3(\ResultExponentReg/Q [3]),
    .I4(\ResultExponentReg/Q [2]),
    .I5(\Stage4/ExponentMux/Mmux_Output31 ),
    .O(\Stage4/ExponentMux/Mmux_Output8 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Stage4/ExponentMux/Mmux_Output82  (
    .I0(\ResultExponentReg/Q [5]),
    .I1(\ResultExponentReg/Q [6]),
    .O(\Stage4/ExponentMux/Mmux_Output81_2930 )
  );
  LUT6 #(
    .INIT ( 64'hF8FF08FFF8080808 ))
  \Stage4/ExponentMux/Mmux_Output83  (
    .I0(\Stage4/ExponentMux/Mmux_Output83_1944 ),
    .I1(\Stage4/ExponentMux/Mmux_Output81_2930 ),
    .I2(\ResultExponentReg/Q [7]),
    .I3(\AlgorthimSelReg3/Q_0_499 ),
    .I4(\Stage4/ExponentMux/Mmux_Output8 ),
    .I5(\Stage4/ExponentAdderResult1 [7]),
    .O(ExponentAdderResult1[7])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Stage4/ExponentMux/Mmux_Output6_SW0  (
    .I0(\ResultExponentReg/Q [4]),
    .I1(\ResultExponentReg/Q [2]),
    .I2(\ResultExponentReg/Q [3]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hF7FFB3BBD5DD8088 ))
  \Stage4/ExponentMux/Mmux_Output6  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [5]),
    .I2(\Stage4/ExponentMux/Mmux_Output31 ),
    .I3(N32),
    .I4(\Stage4/ExponentAdderResult1 [5]),
    .I5(\Stage4/ExponentMux/Mmux_Output83_1944 ),
    .O(ExponentAdderResult1[5])
  );
  LUT6 #(
    .INIT ( 64'hAA3FAA0FAA30AA00 ))
  \Stage4/tobeRoundMux/Mmux_Output81  (
    .I0(\AdderResultReg/Q [18]),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output81_1973 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output82_1959 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output8 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output82  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [38]),
    .I3(\MULResultReg/Q [37]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output8 ),
    .O(TobeRounded[14])
  );
  LUT5 #(
    .INIT ( 32'hAFA3ACA0 ))
  \Stage4/tobeRoundMux/Mmux_Output161  (
    .I0(\AdderResultReg/Q [22]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\EffCarryReg1/Q_0_493 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output82_1959 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output261_1976 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output16 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output162  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [42]),
    .I3(\MULResultReg/Q [41]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output16 ),
    .O(TobeRounded[18])
  );
  LUT6 #(
    .INIT ( 64'h4040404040404000 ))
  \Stage4/RoundControlMux/Mmux_Output11  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\AdderResultReg/Q [3]),
    .I2(\EffCarryReg1/Q_0_493 ),
    .I3(\AdderResultReg/Q [2]),
    .I4(\AdderResultReg/Q [4]),
    .I5(\AdderResultReg/Q [1]),
    .O(\Stage4/RoundControlMux/Mmux_Output1 )
  );
  LUT6 #(
    .INIT ( 64'h1515050511110100 ))
  \Stage4/RoundControlMux/Mmux_Output13  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\EffCarryReg1/Q_0_493 ),
    .I3(\AdderResultReg/Q [0]),
    .I4(\AdderResultReg/Q [3]),
    .I5(\AdderResultReg/Q [1]),
    .O(\Stage4/RoundControlMux/Mmux_Output12_2936 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22202020 ))
  \Stage4/RoundControlMux/Mmux_Output14  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output233_1951 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\Stage4/RoundControlMux/Mmux_Output11_2935 ),
    .I3(\Stage4/RoundControlMux/Mmux_Output12_2936 ),
    .I4(\AdderResultReg/Q [2]),
    .I5(\Stage4/RoundControlMux/Mmux_Output1 ),
    .O(\Stage4/RoundControlMux/Mmux_Output13_2937 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Stage4/RoundControlMux/Mmux_Output15  (
    .I0(\MULResultReg/Q [13]),
    .I1(\MULResultReg/Q [14]),
    .I2(\MULResultReg/Q [11]),
    .I3(\MULResultReg/Q [12]),
    .I4(\MULResultReg/Q [0]),
    .I5(\MULResultReg/Q [10]),
    .O(\Stage4/RoundControlMux/Mmux_Output14_2938 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Stage4/RoundControlMux/Mmux_Output16  (
    .I0(\MULResultReg/Q [19]),
    .I1(\MULResultReg/Q [1]),
    .I2(\MULResultReg/Q [17]),
    .I3(\MULResultReg/Q [18]),
    .I4(\MULResultReg/Q [15]),
    .I5(\MULResultReg/Q [16]),
    .O(\Stage4/RoundControlMux/Mmux_Output15_2939 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Stage4/RoundControlMux/Mmux_Output17  (
    .I0(\MULResultReg/Q [8]),
    .I1(\MULResultReg/Q [9]),
    .I2(\MULResultReg/Q [6]),
    .I3(\MULResultReg/Q [7]),
    .O(\Stage4/RoundControlMux/Mmux_Output16_2940 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Stage4/RoundControlMux/Mmux_Output18  (
    .I0(\MULResultReg/Q [4]),
    .I1(\MULResultReg/Q [5]),
    .I2(\MULResultReg/Q [2]),
    .I3(\MULResultReg/Q [3]),
    .I4(\MULResultReg/Q [20]),
    .I5(\MULResultReg/Q [21]),
    .O(\Stage4/RoundControlMux/Mmux_Output17_2941 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Stage4/RoundControlMux/Mmux_Output19  (
    .I0(\Stage4/RoundControlMux/Mmux_Output16_2940 ),
    .I1(\Stage4/RoundControlMux/Mmux_Output17_2941 ),
    .I2(\Stage4/RoundControlMux/Mmux_Output14_2938 ),
    .I3(\Stage4/RoundControlMux/Mmux_Output15_2939 ),
    .O(\Stage4/RoundControlMux/Mmux_Output18_2942 )
  );
  LUT6 #(
    .INIT ( 64'h8A888A0880808000 ))
  \Stage4/RoundControlMux/Mmux_Output110  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [23]),
    .I2(\MULResultReg/Q [47]),
    .I3(\Stage4/RoundControlMux/Mmux_Output18_2942 ),
    .I4(\MULResultReg/Q [24]),
    .I5(\MULResultReg/Q [22]),
    .O(\Stage4/RoundControlMux/Mmux_Output19_2943 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Stage4/RoundControlMux/Mmux_Output111  (
    .I0(\Stage4/RoundControlMux/Mmux_Output13_2937 ),
    .I1(\Stage4/RoundControlMux/Mmux_Output19_2943 ),
    .O(Round)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output281  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [26]),
    .I2(\AdderResultReg/Q [25]),
    .O(\Stage4/tobeRoundMux/Mmux_Output28 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  \Stage4/tobeRoundMux/Mmux_Output282  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output233_1951 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [1]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output2811 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output28 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output182_1969 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output281_2945 )
  );
  LUT5 #(
    .INIT ( 32'hFEEEBAAA ))
  \Stage4/tobeRoundMux/Mmux_Output283  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output181_1975 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output184_1955 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output282_2946 )
  );
  LUT5 #(
    .INIT ( 32'hFFFDFFA8 ))
  \Stage4/tobeRoundMux/Mmux_Output284  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [46]),
    .I2(\MULResultReg/Q [47]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output281_2945 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output282_2946 ),
    .O(TobeRounded[23])
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output211  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\NormShiftsReg/Q [0]),
    .I2(\AdderResultReg/Q [20]),
    .I3(\AdderResultReg/Q [21]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output2131 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output21 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  \Stage4/tobeRoundMux/Mmux_Output212  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output123_1962 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output21 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output212_1967 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output213_2948 )
  );
  LUT5 #(
    .INIT ( 32'hAAEA0040 ))
  \Stage4/tobeRoundMux/Mmux_Output213  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output211_1977 ),
    .I2(\NormShiftsReg/Q [4]),
    .I3(\NormShiftsReg/Q [3]),
    .I4(\AdderResultReg/Q [24]),
    .O(\Stage4/tobeRoundMux/Mmux_Output214_2949 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFD5FFFF8A80 ))
  \Stage4/tobeRoundMux/Mmux_Output214  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [44]),
    .I2(\MULResultReg/Q [47]),
    .I3(\MULResultReg/Q [43]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output213_2948 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output214_2949 ),
    .O(TobeRounded[20])
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \Stage4/tobeRoundMux/Mmux_Output121  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output124 ),
    .I3(\Stage4/tobeRoundMux/Mmux_Output123_1962 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output122_1968 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output12 )
  );
  LUT6 #(
    .INIT ( 64'hAA3FAA0FAA30AA00 ))
  \Stage4/tobeRoundMux/Mmux_Output122  (
    .I0(\AdderResultReg/Q [20]),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output121_1972 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output12 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output125 )
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output123  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [40]),
    .I3(\MULResultReg/Q [39]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output125 ),
    .O(TobeRounded[16])
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  \Stage4/tobeRoundMux/Mmux_Output61  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\Stage4/NormShifts<1>_mmx_out19 ),
    .I4(\Stage4/NormShifts<1>_mmx_out5 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output362_1964 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output6 )
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output62  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [36]),
    .I3(\MULResultReg/Q [37]),
    .I4(\AdderResultReg/Q [17]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output61_2953 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAEAAA ))
  \Stage4/tobeRoundMux/Mmux_Output63  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output61_2953 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output191 ),
    .I2(\NormShiftsReg/Q [4]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output143_1950 ),
    .I4(\NormShiftsReg/Q [3]),
    .I5(\Stage4/tobeRoundMux/Mmux_Output6 ),
    .O(TobeRounded[13])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output35_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [31]),
    .I3(\MULResultReg/Q [32]),
    .I4(\AdderResultReg/Q [12]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0A8A0080 ))
  \Stage4/tobeRoundMux/Mmux_Output35  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output122_1968 ),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output121_1972 ),
    .I5(N38),
    .O(TobeRounded[8])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output33_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [29]),
    .I3(\MULResultReg/Q [30]),
    .I4(\AdderResultReg/Q [10]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0A8A0080 ))
  \Stage4/tobeRoundMux/Mmux_Output33  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\Stage4/NormShifts<1>_mmx_out14 ),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\NormShiftsReg/Q [3]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output22 ),
    .I5(N40),
    .O(TobeRounded[6])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output32_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [28]),
    .I3(\MULResultReg/Q [29]),
    .I4(\AdderResultReg/Q [9]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0A8A0080 ))
  \Stage4/tobeRoundMux/Mmux_Output32  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\Stage4/NormShifts<1>_mmx_out12 ),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\NormShiftsReg/Q [3]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output361 ),
    .I5(N42),
    .O(TobeRounded[5])
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output19_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [24]),
    .I3(\MULResultReg/Q [25]),
    .I4(\AdderResultReg/Q [5]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22200020 ))
  \Stage4/tobeRoundMux/Mmux_Output19  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/NormShifts<1>_mmx_out12 ),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output191 ),
    .I5(N46),
    .O(TobeRounded[1])
  );
  LUT5 #(
    .INIT ( 32'h67234501 ))
  \Stage4/tobeRoundMux/Mmux_Output184  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(N48),
    .I3(\Stage4/NormShifts<1>_mmx_out3 ),
    .I4(\Stage4/NormShifts<1>_mmx_out16 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output184_1955 )
  );
  LUT6 #(
    .INIT ( 64'hFD75A820A820A820 ))
  \Stage4/tobeRoundMux/Mmux_Output31_SW0  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [27]),
    .I3(\MULResultReg/Q [28]),
    .I4(\AdderResultReg/Q [8]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(N52)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte3/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [16]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte3Byte3/FA42/Cout  (
    .I0(\MULFirstStage/Byte3Byte3/A[0]_B[3]_AND_58_o ),
    .I1(N54),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte2/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [8]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte3Byte2/FA42/Cout  (
    .I0(\MULFirstStage/Byte3Byte2/A[0]_B[3]_AND_58_o ),
    .I1(N56),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [10]),
    .O(\MULFirstStage/Byte3Byte2/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte3Byte1/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [19]),
    .I1(\inputOperand2/Q [0]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte3Byte1/FA42/Cout  (
    .I0(\MULFirstStage/Byte3Byte1/A[0]_B[3]_AND_58_o ),
    .I1(N58),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [18]),
    .I4(\inputOperand1/Q [17]),
    .I5(\inputOperand2/Q [2]),
    .O(\MULFirstStage/Byte3Byte1/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte3/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [16]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte2Byte3/FA42/Cout  (
    .I0(\MULFirstStage/Byte2Byte3/A[0]_B[3]_AND_58_o ),
    .I1(N60),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte2Byte3/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte2/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [8]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte2Byte2/FA42/Cout  (
    .I0(\MULFirstStage/Byte2Byte2/A[0]_B[3]_AND_58_o ),
    .I1(N62),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [10]),
    .O(\MULFirstStage/Byte2Byte2/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte2Byte1/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [11]),
    .I1(\inputOperand2/Q [0]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte2Byte1/FA42/Cout  (
    .I0(\MULFirstStage/Byte2Byte1/A[0]_B[3]_AND_58_o ),
    .I1(N64),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [10]),
    .I4(\inputOperand1/Q [9]),
    .I5(\inputOperand2/Q [2]),
    .O(\MULFirstStage/Byte2Byte1/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte3/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [16]),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte1Byte3/FA42/Cout  (
    .I0(\MULFirstStage/Byte1Byte3/A[0]_B[3]_AND_58_o ),
    .I1(N66),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte1Byte3/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte2/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [8]),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte1Byte2/FA42/Cout  (
    .I0(\MULFirstStage/Byte1Byte2/A[0]_B[3]_AND_58_o ),
    .I1(N68),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [10]),
    .O(\MULFirstStage/Byte1Byte2/C42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \MULFirstStage/Byte1Byte1/FA42/Cout_SW0  (
    .I0(\inputOperand1/Q [3]),
    .I1(\inputOperand2/Q [0]),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'hBEEE288828882888 ))
  \MULFirstStage/Byte1Byte1/FA42/Cout  (
    .I0(\MULFirstStage/Byte1Byte1/A[0]_B[3]_AND_58_o ),
    .I1(N70),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [2]),
    .I4(\inputOperand1/Q [1]),
    .I5(\inputOperand2/Q [2]),
    .O(\MULFirstStage/Byte1Byte1/C42 )
  );
  IBUF   Operand1_31_IBUF (
    .I(Operand1[31]),
    .O(Operand1_31_IBUF_0)
  );
  IBUF   Operand1_30_IBUF (
    .I(Operand1[30]),
    .O(Operand1_30_IBUF_1)
  );
  IBUF   Operand1_29_IBUF (
    .I(Operand1[29]),
    .O(Operand1_29_IBUF_2)
  );
  IBUF   Operand1_28_IBUF (
    .I(Operand1[28]),
    .O(Operand1_28_IBUF_3)
  );
  IBUF   Operand1_27_IBUF (
    .I(Operand1[27]),
    .O(Operand1_27_IBUF_4)
  );
  IBUF   Operand1_26_IBUF (
    .I(Operand1[26]),
    .O(Operand1_26_IBUF_5)
  );
  IBUF   Operand1_25_IBUF (
    .I(Operand1[25]),
    .O(Operand1_25_IBUF_6)
  );
  IBUF   Operand1_24_IBUF (
    .I(Operand1[24]),
    .O(Operand1_24_IBUF_7)
  );
  IBUF   Operand1_23_IBUF (
    .I(Operand1[23]),
    .O(Operand1_23_IBUF_8)
  );
  IBUF   Operand1_22_IBUF (
    .I(Operand1[22]),
    .O(Operand1_22_IBUF_9)
  );
  IBUF   Operand1_21_IBUF (
    .I(Operand1[21]),
    .O(Operand1_21_IBUF_10)
  );
  IBUF   Operand1_20_IBUF (
    .I(Operand1[20]),
    .O(Operand1_20_IBUF_11)
  );
  IBUF   Operand1_19_IBUF (
    .I(Operand1[19]),
    .O(Operand1_19_IBUF_12)
  );
  IBUF   Operand1_18_IBUF (
    .I(Operand1[18]),
    .O(Operand1_18_IBUF_13)
  );
  IBUF   Operand1_17_IBUF (
    .I(Operand1[17]),
    .O(Operand1_17_IBUF_14)
  );
  IBUF   Operand1_16_IBUF (
    .I(Operand1[16]),
    .O(Operand1_16_IBUF_15)
  );
  IBUF   Operand1_15_IBUF (
    .I(Operand1[15]),
    .O(Operand1_15_IBUF_16)
  );
  IBUF   Operand1_14_IBUF (
    .I(Operand1[14]),
    .O(Operand1_14_IBUF_17)
  );
  IBUF   Operand1_13_IBUF (
    .I(Operand1[13]),
    .O(Operand1_13_IBUF_18)
  );
  IBUF   Operand1_12_IBUF (
    .I(Operand1[12]),
    .O(Operand1_12_IBUF_19)
  );
  IBUF   Operand1_11_IBUF (
    .I(Operand1[11]),
    .O(Operand1_11_IBUF_20)
  );
  IBUF   Operand1_10_IBUF (
    .I(Operand1[10]),
    .O(Operand1_10_IBUF_21)
  );
  IBUF   Operand1_9_IBUF (
    .I(Operand1[9]),
    .O(Operand1_9_IBUF_22)
  );
  IBUF   Operand1_8_IBUF (
    .I(Operand1[8]),
    .O(Operand1_8_IBUF_23)
  );
  IBUF   Operand1_7_IBUF (
    .I(Operand1[7]),
    .O(Operand1_7_IBUF_24)
  );
  IBUF   Operand1_6_IBUF (
    .I(Operand1[6]),
    .O(Operand1_6_IBUF_25)
  );
  IBUF   Operand1_5_IBUF (
    .I(Operand1[5]),
    .O(Operand1_5_IBUF_26)
  );
  IBUF   Operand1_4_IBUF (
    .I(Operand1[4]),
    .O(Operand1_4_IBUF_27)
  );
  IBUF   Operand1_3_IBUF (
    .I(Operand1[3]),
    .O(Operand1_3_IBUF_28)
  );
  IBUF   Operand1_2_IBUF (
    .I(Operand1[2]),
    .O(Operand1_2_IBUF_29)
  );
  IBUF   Operand1_1_IBUF (
    .I(Operand1[1]),
    .O(Operand1_1_IBUF_30)
  );
  IBUF   Operand1_0_IBUF (
    .I(Operand1[0]),
    .O(Operand1_0_IBUF_31)
  );
  IBUF   Operand2_31_IBUF (
    .I(Operand2[31]),
    .O(Operand2_31_IBUF_32)
  );
  IBUF   Operand2_30_IBUF (
    .I(Operand2[30]),
    .O(Operand2_30_IBUF_33)
  );
  IBUF   Operand2_29_IBUF (
    .I(Operand2[29]),
    .O(Operand2_29_IBUF_34)
  );
  IBUF   Operand2_28_IBUF (
    .I(Operand2[28]),
    .O(Operand2_28_IBUF_35)
  );
  IBUF   Operand2_27_IBUF (
    .I(Operand2[27]),
    .O(Operand2_27_IBUF_36)
  );
  IBUF   Operand2_26_IBUF (
    .I(Operand2[26]),
    .O(Operand2_26_IBUF_37)
  );
  IBUF   Operand2_25_IBUF (
    .I(Operand2[25]),
    .O(Operand2_25_IBUF_38)
  );
  IBUF   Operand2_24_IBUF (
    .I(Operand2[24]),
    .O(Operand2_24_IBUF_39)
  );
  IBUF   Operand2_23_IBUF (
    .I(Operand2[23]),
    .O(Operand2_23_IBUF_40)
  );
  IBUF   Operand2_22_IBUF (
    .I(Operand2[22]),
    .O(Operand2_22_IBUF_41)
  );
  IBUF   Operand2_21_IBUF (
    .I(Operand2[21]),
    .O(Operand2_21_IBUF_42)
  );
  IBUF   Operand2_20_IBUF (
    .I(Operand2[20]),
    .O(Operand2_20_IBUF_43)
  );
  IBUF   Operand2_19_IBUF (
    .I(Operand2[19]),
    .O(Operand2_19_IBUF_44)
  );
  IBUF   Operand2_18_IBUF (
    .I(Operand2[18]),
    .O(Operand2_18_IBUF_45)
  );
  IBUF   Operand2_17_IBUF (
    .I(Operand2[17]),
    .O(Operand2_17_IBUF_46)
  );
  IBUF   Operand2_16_IBUF (
    .I(Operand2[16]),
    .O(Operand2_16_IBUF_47)
  );
  IBUF   Operand2_15_IBUF (
    .I(Operand2[15]),
    .O(Operand2_15_IBUF_48)
  );
  IBUF   Operand2_14_IBUF (
    .I(Operand2[14]),
    .O(Operand2_14_IBUF_49)
  );
  IBUF   Operand2_13_IBUF (
    .I(Operand2[13]),
    .O(Operand2_13_IBUF_50)
  );
  IBUF   Operand2_12_IBUF (
    .I(Operand2[12]),
    .O(Operand2_12_IBUF_51)
  );
  IBUF   Operand2_11_IBUF (
    .I(Operand2[11]),
    .O(Operand2_11_IBUF_52)
  );
  IBUF   Operand2_10_IBUF (
    .I(Operand2[10]),
    .O(Operand2_10_IBUF_53)
  );
  IBUF   Operand2_9_IBUF (
    .I(Operand2[9]),
    .O(Operand2_9_IBUF_54)
  );
  IBUF   Operand2_8_IBUF (
    .I(Operand2[8]),
    .O(Operand2_8_IBUF_55)
  );
  IBUF   Operand2_7_IBUF (
    .I(Operand2[7]),
    .O(Operand2_7_IBUF_56)
  );
  IBUF   Operand2_6_IBUF (
    .I(Operand2[6]),
    .O(Operand2_6_IBUF_57)
  );
  IBUF   Operand2_5_IBUF (
    .I(Operand2[5]),
    .O(Operand2_5_IBUF_58)
  );
  IBUF   Operand2_4_IBUF (
    .I(Operand2[4]),
    .O(Operand2_4_IBUF_59)
  );
  IBUF   Operand2_3_IBUF (
    .I(Operand2[3]),
    .O(Operand2_3_IBUF_60)
  );
  IBUF   Operand2_2_IBUF (
    .I(Operand2[2]),
    .O(Operand2_2_IBUF_61)
  );
  IBUF   Operand2_1_IBUF (
    .I(Operand2[1]),
    .O(Operand2_1_IBUF_62)
  );
  IBUF   Operand2_0_IBUF (
    .I(Operand2[0]),
    .O(Operand2_0_IBUF_63)
  );
  IBUF   Operation_1_IBUF (
    .I(Operation[1]),
    .O(Operation_1_IBUF_64)
  );
  IBUF   Operation_0_IBUF (
    .I(Operation[0]),
    .O(Operation_0_IBUF_65)
  );
  OBUF   Result_31_OBUF (
    .I(\ResultSignReg3/Q_0_527 ),
    .O(Result[31])
  );
  OBUF   Result_30_OBUF (
    .I(\FinalExponentReg/Q [7]),
    .O(Result[30])
  );
  OBUF   Result_29_OBUF (
    .I(\FinalExponentReg/Q [6]),
    .O(Result[29])
  );
  OBUF   Result_28_OBUF (
    .I(\FinalExponentReg/Q [5]),
    .O(Result[28])
  );
  OBUF   Result_27_OBUF (
    .I(\FinalExponentReg/Q [4]),
    .O(Result[27])
  );
  OBUF   Result_26_OBUF (
    .I(\FinalExponentReg/Q [3]),
    .O(Result[26])
  );
  OBUF   Result_25_OBUF (
    .I(\FinalExponentReg/Q [2]),
    .O(Result[25])
  );
  OBUF   Result_24_OBUF (
    .I(\FinalExponentReg/Q [1]),
    .O(Result[24])
  );
  OBUF   Result_23_OBUF (
    .I(\FinalExponentReg/Q [0]),
    .O(Result[23])
  );
  OBUF   Result_22_OBUF (
    .I(\FinalFractionReg/Q [22]),
    .O(Result[22])
  );
  OBUF   Result_21_OBUF (
    .I(\FinalFractionReg/Q [21]),
    .O(Result[21])
  );
  OBUF   Result_20_OBUF (
    .I(\FinalFractionReg/Q [20]),
    .O(Result[20])
  );
  OBUF   Result_19_OBUF (
    .I(\FinalFractionReg/Q [19]),
    .O(Result[19])
  );
  OBUF   Result_18_OBUF (
    .I(\FinalFractionReg/Q [18]),
    .O(Result[18])
  );
  OBUF   Result_17_OBUF (
    .I(\FinalFractionReg/Q [17]),
    .O(Result[17])
  );
  OBUF   Result_16_OBUF (
    .I(\FinalFractionReg/Q [16]),
    .O(Result[16])
  );
  OBUF   Result_15_OBUF (
    .I(\FinalFractionReg/Q [15]),
    .O(Result[15])
  );
  OBUF   Result_14_OBUF (
    .I(\FinalFractionReg/Q [14]),
    .O(Result[14])
  );
  OBUF   Result_13_OBUF (
    .I(\FinalFractionReg/Q [13]),
    .O(Result[13])
  );
  OBUF   Result_12_OBUF (
    .I(\FinalFractionReg/Q [12]),
    .O(Result[12])
  );
  OBUF   Result_11_OBUF (
    .I(\FinalFractionReg/Q [11]),
    .O(Result[11])
  );
  OBUF   Result_10_OBUF (
    .I(\FinalFractionReg/Q [10]),
    .O(Result[10])
  );
  OBUF   Result_9_OBUF (
    .I(\FinalFractionReg/Q [9]),
    .O(Result[9])
  );
  OBUF   Result_8_OBUF (
    .I(\FinalFractionReg/Q [8]),
    .O(Result[8])
  );
  OBUF   Result_7_OBUF (
    .I(\FinalFractionReg/Q [7]),
    .O(Result[7])
  );
  OBUF   Result_6_OBUF (
    .I(\FinalFractionReg/Q [6]),
    .O(Result[6])
  );
  OBUF   Result_5_OBUF (
    .I(\FinalFractionReg/Q [5]),
    .O(Result[5])
  );
  OBUF   Result_4_OBUF (
    .I(\FinalFractionReg/Q [4]),
    .O(Result[4])
  );
  OBUF   Result_3_OBUF (
    .I(\FinalFractionReg/Q [3]),
    .O(Result[3])
  );
  OBUF   Result_2_OBUF (
    .I(\FinalFractionReg/Q [2]),
    .O(Result[2])
  );
  OBUF   Result_1_OBUF (
    .I(\FinalFractionReg/Q [1]),
    .O(Result[1])
  );
  OBUF   Result_0_OBUF (
    .I(\FinalFractionReg/Q [0]),
    .O(Result[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_rt  (
    .I0(\Result21Reg/Q [0]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_rt_3068 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_0_rt  (
    .I0(\Result21Reg/Q [1]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_0_rt_3069 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_1_rt  (
    .I0(\Result21Reg/Q [2]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_1_rt_3070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_2_rt  (
    .I0(\Result21Reg/Q [3]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_2_rt_3071 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_3_rt  (
    .I0(\Result21Reg/Q [4]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_3_rt_3072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_4_rt  (
    .I0(\Result21Reg/Q [5]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_4_rt_3073 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_5_rt  (
    .I0(\Result21Reg/Q [6]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_5_rt_3074 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_6_rt  (
    .I0(\Result21Reg/Q [7]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_6_rt_3075 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_24_rt  (
    .I0(\Result23Reg/Q [9]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_24_rt_3076 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_25_rt  (
    .I0(\Result23Reg/Q [10]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_25_rt_3077 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_26_rt  (
    .I0(\Result23Reg/Q [11]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_26_rt_3078 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_27_rt  (
    .I0(\Result23Reg/Q [12]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_27_rt_3079 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_28_rt  (
    .I0(\Result23Reg/Q [13]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_28_rt_3080 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_29_rt  (
    .I0(\Result23Reg/Q [14]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_29_rt_3081 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder5/Madd_n0006_cy<0>_30_rt  (
    .I0(\Result23Reg/Q [15]),
    .O(\MULSecondStage/Adder5/Madd_n0006_cy<0>_30_rt_3082 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_rt  (
    .I0(\Result31Reg/Q [0]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_rt_3083 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_0_rt  (
    .I0(\Result31Reg/Q [1]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_0_rt_3084 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_1_rt  (
    .I0(\Result31Reg/Q [2]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_1_rt_3085 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_2_rt  (
    .I0(\Result31Reg/Q [3]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_2_rt_3086 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_3_rt  (
    .I0(\Result31Reg/Q [4]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_3_rt_3087 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_4_rt  (
    .I0(\Result31Reg/Q [5]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_4_rt_3088 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_5_rt  (
    .I0(\Result31Reg/Q [6]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_5_rt_3089 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_6_rt  (
    .I0(\Result31Reg/Q [7]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_6_rt_3090 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_24_rt  (
    .I0(\Result33Reg/Q [9]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_24_rt_3091 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_25_rt  (
    .I0(\Result33Reg/Q [10]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_25_rt_3092 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_26_rt  (
    .I0(\Result33Reg/Q [11]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_26_rt_3093 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_27_rt  (
    .I0(\Result33Reg/Q [12]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_27_rt_3094 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_28_rt  (
    .I0(\Result33Reg/Q [13]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_28_rt_3095 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder6/Madd_n0006_cy<0>_29_rt  (
    .I0(\Result33Reg/Q [14]),
    .O(\MULSecondStage/Adder6/Madd_n0006_cy<0>_29_rt_3096 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_rt  (
    .I0(\Result11Reg/Q [0]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_rt_3097 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_0_rt  (
    .I0(\Result11Reg/Q [1]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_0_rt_3098 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_1_rt  (
    .I0(\Result11Reg/Q [2]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_1_rt_3099 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_2_rt  (
    .I0(\Result11Reg/Q [3]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_2_rt_3100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_3_rt  (
    .I0(\Result11Reg/Q [4]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_3_rt_3101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_4_rt  (
    .I0(\Result11Reg/Q [5]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_4_rt_3102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_5_rt  (
    .I0(\Result11Reg/Q [6]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_5_rt_3103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_6_rt  (
    .I0(\Result11Reg/Q [7]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_6_rt_3104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_24_rt  (
    .I0(\Result13Reg/Q [9]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_24_rt_3105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_25_rt  (
    .I0(\Result13Reg/Q [10]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_25_rt_3106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_26_rt  (
    .I0(\Result13Reg/Q [11]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_26_rt_3107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_27_rt  (
    .I0(\Result13Reg/Q [12]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_27_rt_3108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_28_rt  (
    .I0(\Result13Reg/Q [13]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_28_rt_3109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_29_rt  (
    .I0(\Result13Reg/Q [14]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_29_rt_3110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULSecondStage/Adder4/Madd_n0006_cy<0>_30_rt  (
    .I0(\Result13Reg/Q [15]),
    .O(\MULSecondStage/Adder4/Madd_n0006_cy<0>_30_rt_3111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_rt  (
    .I0(\Result1Reg/Q [0]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_rt_3112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_0_rt  (
    .I0(\Result1Reg/Q [1]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_0_rt_3113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_1_rt  (
    .I0(\Result1Reg/Q [2]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_1_rt_3114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_2_rt  (
    .I0(\Result1Reg/Q [3]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_2_rt_3115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_3_rt  (
    .I0(\Result1Reg/Q [4]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_3_rt_3116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_4_rt  (
    .I0(\Result1Reg/Q [5]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_4_rt_3117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_5_rt  (
    .I0(\Result1Reg/Q [6]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_5_rt_3118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_6_rt  (
    .I0(\Result1Reg/Q [7]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_6_rt_3119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_41_rt  (
    .I0(\Result3Reg/Q [26]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_41_rt_3120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_42_rt  (
    .I0(\Result3Reg/Q [27]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_42_rt_3121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_43_rt  (
    .I0(\Result3Reg/Q [28]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_43_rt_3122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_44_rt  (
    .I0(\Result3Reg/Q [29]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_44_rt_3123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \MULThirdStage/Adder2/Madd_n0006_cy<0>_45_rt  (
    .I0(\Result3Reg/Q [30]),
    .O(\MULThirdStage/Adder2/Madd_n0006_cy<0>_45_rt_3124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage3/TwosCompAdder/Madd_n0006_cy<0>_rt  (
    .I0(\Adder1Reg/Q [0]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy<0>_rt_3125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage3/TwosCompAdder/Madd_n0006_cy<1>_rt  (
    .I0(\Adder1Reg/Q [1]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy<1>_rt_3126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage3/TwosCompAdder/Madd_n0006_cy<2>_rt  (
    .I0(\Adder1Reg/Q [2]),
    .O(\Stage3/TwosCompAdder/Madd_n0006_cy<2>_rt_3127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<1>_rt  (
    .I0(\TobeRoundedReg/Q [1]),
    .O(\Stage5/Rounding/Madd_n0006_cy<1>_rt_3128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<2>_rt  (
    .I0(\TobeRoundedReg/Q [2]),
    .O(\Stage5/Rounding/Madd_n0006_cy<2>_rt_3129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<3>_rt  (
    .I0(\TobeRoundedReg/Q [3]),
    .O(\Stage5/Rounding/Madd_n0006_cy<3>_rt_3130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<4>_rt  (
    .I0(\TobeRoundedReg/Q [4]),
    .O(\Stage5/Rounding/Madd_n0006_cy<4>_rt_3131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<5>_rt  (
    .I0(\TobeRoundedReg/Q [5]),
    .O(\Stage5/Rounding/Madd_n0006_cy<5>_rt_3132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<6>_rt  (
    .I0(\TobeRoundedReg/Q [6]),
    .O(\Stage5/Rounding/Madd_n0006_cy<6>_rt_3133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<7>_rt  (
    .I0(\TobeRoundedReg/Q [7]),
    .O(\Stage5/Rounding/Madd_n0006_cy<7>_rt_3134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<8>_rt  (
    .I0(\TobeRoundedReg/Q [8]),
    .O(\Stage5/Rounding/Madd_n0006_cy<8>_rt_3135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<9>_rt  (
    .I0(\TobeRoundedReg/Q [9]),
    .O(\Stage5/Rounding/Madd_n0006_cy<9>_rt_3136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<10>_rt  (
    .I0(\TobeRoundedReg/Q [10]),
    .O(\Stage5/Rounding/Madd_n0006_cy<10>_rt_3137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<11>_rt  (
    .I0(\TobeRoundedReg/Q [11]),
    .O(\Stage5/Rounding/Madd_n0006_cy<11>_rt_3138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<12>_rt  (
    .I0(\TobeRoundedReg/Q [12]),
    .O(\Stage5/Rounding/Madd_n0006_cy<12>_rt_3139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<13>_rt  (
    .I0(\TobeRoundedReg/Q [13]),
    .O(\Stage5/Rounding/Madd_n0006_cy<13>_rt_3140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<14>_rt  (
    .I0(\TobeRoundedReg/Q [14]),
    .O(\Stage5/Rounding/Madd_n0006_cy<14>_rt_3141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<15>_rt  (
    .I0(\TobeRoundedReg/Q [15]),
    .O(\Stage5/Rounding/Madd_n0006_cy<15>_rt_3142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<16>_rt  (
    .I0(\TobeRoundedReg/Q [16]),
    .O(\Stage5/Rounding/Madd_n0006_cy<16>_rt_3143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<17>_rt  (
    .I0(\TobeRoundedReg/Q [17]),
    .O(\Stage5/Rounding/Madd_n0006_cy<17>_rt_3144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<18>_rt  (
    .I0(\TobeRoundedReg/Q [18]),
    .O(\Stage5/Rounding/Madd_n0006_cy<18>_rt_3145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<19>_rt  (
    .I0(\TobeRoundedReg/Q [19]),
    .O(\Stage5/Rounding/Madd_n0006_cy<19>_rt_3146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<20>_rt  (
    .I0(\TobeRoundedReg/Q [20]),
    .O(\Stage5/Rounding/Madd_n0006_cy<20>_rt_3147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<21>_rt  (
    .I0(\TobeRoundedReg/Q [21]),
    .O(\Stage5/Rounding/Madd_n0006_cy<21>_rt_3148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<22>_rt  (
    .I0(\TobeRoundedReg/Q [22]),
    .O(\Stage5/Rounding/Madd_n0006_cy<22>_rt_3149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Stage5/Rounding/Madd_n0006_cy<23>_rt  (
    .I0(\TobeRoundedReg/Q [23]),
    .O(\Stage5/Rounding/Madd_n0006_cy<23>_rt_3150 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>1  (
    .I0(\inputOperand1/Q [30]),
    .I1(\inputOperand2/Q [30]),
    .O(\Stage1/ExponDifference/Msub_Exponent1[7]_Exponent2[7]_sub_4_OUT_lut<7>1_3151 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFE4 ))
  \Stage2/CalcSticky/StickyBit<0>8  (
    .I0(\NDifferenceReg/Q [2]),
    .I1(\Stage2/NDifference<1>_mmx_out13 ),
    .I2(\Stage2/NDifference<1>_mmx_out9 ),
    .I3(\Stage2/CalcSticky/StickyBit<0>212_2867 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>3_2887 ),
    .I5(N72),
    .O(\Stage2/CalcSticky/StickyBit<0>7 )
  );
  LUT6 #(
    .INIT ( 64'h0202020202020203 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<0>  (
    .I0(\NDifferenceReg/Q [4]),
    .I1(\Stage2/CalcSticky/StickyBit<0>11_2892 ),
    .I2(\Stage2/CalcSticky/StickyBit<0>10_2891 ),
    .I3(\Stage2/CalcSticky/StickyBit<0>9_2890 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>2_2886 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>7 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<0>_1720 )
  );
  LUT5 #(
    .INIT ( 32'h33113310 ))
  \Stage2/CalcSticky/StickyBit<0>12  (
    .I0(\NDifferenceReg/Q [2]),
    .I1(\NDifferenceReg/Q [3]),
    .I2(\Stage2/CalcSticky/StickyBit<0>211_2866 ),
    .I3(\Stage2/CalcSticky/StickyBit<0>13_1667 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>212_2867 ),
    .O(\Stage2/CalcSticky/StickyBit<0>11_2892 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage2/NDifference<0>61  (
    .I0(\Mantissa2Reg/Q [14]),
    .I1(\Mantissa1Reg/Q [14]),
    .I2(\Mantissa2Reg/Q [13]),
    .I3(\Mantissa1Reg/Q [13]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out14 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCAAAAFF00F0F0 ))
  \Stage2/NDifference<0>71  (
    .I0(\Mantissa2Reg/Q [14]),
    .I1(\Mantissa1Reg/Q [14]),
    .I2(\Mantissa2Reg/Q [15]),
    .I3(\Mantissa1Reg/Q [15]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out15 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Stage2/NDifference<0>22  (
    .I0(\Mantissa2Reg/Q [10]),
    .I1(\Mantissa2Reg/Q [9]),
    .I2(\Mantissa1Reg/Q [9]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out10 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Stage2/NDifference<0>81  (
    .I0(\Mantissa2Reg/Q [16]),
    .I1(\Mantissa2Reg/Q [15]),
    .I2(\Mantissa1Reg/Q [15]),
    .I3(\Mantissa1Reg/Q [16]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out16 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Stage2/NDifference<0>91  (
    .I0(\Mantissa2Reg/Q [17]),
    .I1(\Mantissa2Reg/Q [16]),
    .I2(\Mantissa1Reg/Q [16]),
    .I3(\Mantissa1Reg/Q [17]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out17 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Stage2/NDifference<0>101  (
    .I0(\Mantissa2Reg/Q [18]),
    .I1(\Mantissa2Reg/Q [17]),
    .I2(\Mantissa1Reg/Q [17]),
    .I3(\Mantissa1Reg/Q [18]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out18 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage2/NDifference<0>111  (
    .I0(\Mantissa2Reg/Q [19]),
    .I1(\Mantissa1Reg/Q [19]),
    .I2(\Mantissa2Reg/Q [18]),
    .I3(\Mantissa1Reg/Q [18]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out19 )
  );
  LUT6 #(
    .INIT ( 64'hFA50FA50EEEE4444 ))
  \Stage2/NDifference<0>201  (
    .I0(\SignOfDifference1Reg/Q_0_2_3174 ),
    .I1(\Mantissa2Reg/Q [8]),
    .I2(\Mantissa2Reg/Q [7]),
    .I3(\Mantissa1Reg/Q [7]),
    .I4(\Mantissa1Reg/Q [8]),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out8 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555555504 ))
  \Stage2/CalcSticky/StickyBit<0>3  (
    .I0(\NDifferenceReg/Q [2]),
    .I1(\NDifferenceReg/Q [1]),
    .I2(N74),
    .I3(\Stage2/NDifference<1>_mmx_out9 ),
    .I4(\Stage2/CalcSticky/StickyBit<0>1211_2865 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>1_2885 ),
    .O(\Stage2/CalcSticky/StickyBit<0>2_2886 )
  );
  LUT6 #(
    .INIT ( 64'h0404040404040004 ))
  \Stage2/CalcSticky/StickyBit<0>11  (
    .I0(\NDifferenceReg/Q [4]),
    .I1(\NDifferenceReg/Q [2]),
    .I2(\NDifferenceReg/Q [3]),
    .I3(N76),
    .I4(\Stage2/NDifference<1>_mmx_out13 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>1211_2865 ),
    .O(\Stage2/CalcSticky/StickyBit<0>10_2891 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData191  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [25]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<26> ),
    .O(Adder1[26])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData181  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [24]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<25> ),
    .O(Adder1[25])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData171  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [23]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<24> ),
    .O(Adder1[24])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData161  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [22]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<23> ),
    .O(Adder1[23])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData151  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [21]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<22> ),
    .O(Adder1[22])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData141  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [20]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<21> ),
    .O(Adder1[21])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData131  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [19]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<20> ),
    .O(Adder1[20])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData111  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [18]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<19> ),
    .O(Adder1[19])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData101  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [17]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<18> ),
    .O(Adder1[18])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData91  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [16]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<17> ),
    .O(Adder1[17])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData81  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [15]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<16> ),
    .O(Adder1[16])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData71  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [14]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<15> ),
    .O(Adder1[15])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData61  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [13]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<14> ),
    .O(Adder1[14])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData51  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [12]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<13> ),
    .O(Adder1[13])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData41  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [11]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<12> ),
    .O(Adder1[12])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData31  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [10]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<11> ),
    .O(Adder1[11])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData28  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [9]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<10> ),
    .O(Adder1[10])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData271  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [8]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<9> ),
    .O(Adder1[9])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData261  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [7]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<8> ),
    .O(Adder1[8])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData251  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [6]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<7> ),
    .O(Adder1[7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData241  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [5]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<6> ),
    .O(Adder1[6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData231  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [4]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<5> ),
    .O(Adder1[5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData221  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [3]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<4> ),
    .O(Adder1[4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData211  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [2]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<3> ),
    .O(Adder1[3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData201  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [1]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<2> ),
    .O(Adder1[2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData121  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/preAligned [0]),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<1> ),
    .O(Adder1[1])
  );
  LUT4 #(
    .INIT ( 16'h00AB ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<1>  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\Stage2/AlignShifter/Stage5/Mmux_Output11_2869 ),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output12_2870 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output1 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<1>_1718 )
  );
  LUT5 #(
    .INIT ( 32'h0C0E0D0F ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<2>  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output13 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output132_2883 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output131_2882 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1716 )
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<5>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out8 ),
    .I3(N14),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1710 )
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<6>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out10 ),
    .I3(N12),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1708 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \Stage1/ExponDifference/ZeroFlag1  (
    .I0(\Stage1/ExponDifference/npreDiffer [0]),
    .I1(\Stage1/ExponDifference/preDiffer [1]),
    .I2(\Stage1/ExponDifference/preDiffer [2]),
    .I3(\Stage1/ExponDifference/preDiffer [3]),
    .I4(\Stage1/ExponDifference/preDiffer [4]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(ZeroDifference)
  );
  LUT5 #(
    .INIT ( 32'h888DAAAF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<3>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output211_2879 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output21 ),
    .I4(\Stage2/Difference<2>_mmx_out4 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1714 )
  );
  LUT5 #(
    .INIT ( 32'hAAAF888D ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<4>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/AlignShifter/Stage5/Mmux_Output231_2877 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output23 ),
    .I4(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1712 )
  );
  LUT5 #(
    .INIT ( 32'hA8AAFDFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<7>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out11 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output26 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1706 )
  );
  LUT5 #(
    .INIT ( 32'hAAA8FFFD ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<8>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out16 ),
    .I4(\Stage2/AlignShifter/Stage5/Mmux_Output27 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1704 )
  );
  LUT4 #(
    .INIT ( 16'hA8FD ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<9>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out17 ),
    .I3(\Stage2/AlignShifter/Stage5/Mmux_Output28 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1702 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAEAFFAFBFEFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<11>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [2]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out8 ),
    .I4(\Stage2/Difference<1>_mmx_out9 ),
    .I5(\Stage2/Difference<2>_mmx_out4 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1698 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFABFBFFFF0151 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<12>  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\Stage2/Difference<1>_mmx_out13 ),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out14 ),
    .I4(\DifferenceReg/Q [4]),
    .I5(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1696 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFABFBFFFF0151 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<13>  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\Stage2/Difference<1>_mmx_out18 ),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out19 ),
    .I4(\DifferenceReg/Q [4]),
    .I5(\Stage2/Difference<2>_mmx_out8 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1694 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFABFBFFFF0151 ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<14>  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\Stage2/Difference<1>_mmx_out2 ),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out3 ),
    .I4(\DifferenceReg/Q [4]),
    .I5(\Stage2/Difference<2>_mmx_out10 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1692 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<20>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out6 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1680 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<21>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out8 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1678 )
  );
  LUT6 #(
    .INIT ( 64'h000F000F000F000E ))
  \Stage3/ZerosCounter/Mmux__n0087_B121  (
    .I0(AdderResult[9]),
    .I1(AdderResult[10]),
    .I2(AdderResult[13]),
    .I3(AdderResult[14]),
    .I4(AdderResult[11]),
    .I5(AdderResult[12]),
    .O(\Stage3/ZerosCounter/Mmux__n0087_B12 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \Stage2/NDifference<0>31  (
    .I0(\Mantissa2Reg/Q [11]),
    .I1(\Mantissa1Reg/Q [11]),
    .I2(\Mantissa2Reg/Q [10]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\SignOfDifference1Reg/Q_0_1_3172 ),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out11 )
  );
  LUT6 #(
    .INIT ( 64'hE4E4E4E4FFAA5500 ))
  \Stage2/NDifference<0>211  (
    .I0(\SignOfDifference1Reg/Q_0_2_3174 ),
    .I1(\Mantissa2Reg/Q [8]),
    .I2(\Mantissa1Reg/Q [8]),
    .I3(\Mantissa2Reg/Q [9]),
    .I4(\Mantissa1Reg/Q [9]),
    .I5(\NDifferenceReg/Q [0]),
    .O(\Stage2/NDifference<0>_mmx_out9 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Stage2/Difference<0>41  (
    .I0(\Mantissa2Reg/Q [2]),
    .I1(\Mantissa2Reg/Q [3]),
    .I2(\Mantissa1Reg/Q [3]),
    .I3(\Mantissa1Reg/Q [2]),
    .I4(\DifferenceReg/Q [0]),
    .I5(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<0>_mmx_out12 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \Stage2/Difference<0>91  (
    .I0(\Mantissa2Reg/Q [0]),
    .I1(\Mantissa1Reg/Q [0]),
    .I2(\Mantissa2Reg/Q [1]),
    .I3(\Mantissa1Reg/Q [1]),
    .I4(\DifferenceReg/Q [0]),
    .I5(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<0>_mmx_out17 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \Stage2/Difference<0>2  (
    .I0(\Mantissa2Reg/Q [1]),
    .I1(\Mantissa2Reg/Q [2]),
    .I2(\Mantissa1Reg/Q [2]),
    .I3(\Mantissa1Reg/Q [1]),
    .I4(\DifferenceReg/Q [0]),
    .I5(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<0>_mmx_out )
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \Stage2/Difference<0>11  (
    .I0(\Mantissa2Reg/Q [4]),
    .I1(\Mantissa1Reg/Q [4]),
    .I2(\Mantissa2Reg/Q [3]),
    .I3(\Mantissa1Reg/Q [3]),
    .I4(\DifferenceReg/Q [0]),
    .I5(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<0>_mmx_out1 )
  );
  LUT6 #(
    .INIT ( 64'h10EFF00FEEEE0000 ))
  \Stage3/ZerosCounter/Mmux__n0087_rs_lut<1>  (
    .I0(AdderResult[11]),
    .I1(AdderResult[12]),
    .I2(N20),
    .I3(\Stage3/ZerosCounter/Mmux_Shifts411 ),
    .I4(\Stage3/ZerosCounter/Mmux__n0087_B12 ),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .O(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[1] )
  );
  LUT6 #(
    .INIT ( 64'h8088828AD5DDD7DF ))
  \Stage2/Difference<2>141  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\Stage2/SignOfDifference_mmx_out22 ),
    .I4(\Stage2/SignOfDifference_mmx_out20 ),
    .I5(\Stage2/Difference<1>_mmx_out15 ),
    .O(\Stage2/Difference<2>_mmx_out6 )
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte3Byte3/C21 ),
    .I1(\MULFirstStage/Byte3Byte3/S23 ),
    .I2(\MULFirstStage/Byte3Byte3/S25 ),
    .I3(\MULFirstStage/Byte3Byte3/S22 ),
    .I4(\MULFirstStage/Byte3Byte3/S34 ),
    .I5(\MULFirstStage/Byte3Byte3/C44 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte3Byte2/C21 ),
    .I1(\MULFirstStage/Byte3Byte2/S23 ),
    .I2(\MULFirstStage/Byte3Byte2/S25 ),
    .I3(\MULFirstStage/Byte3Byte2/S22 ),
    .I4(\MULFirstStage/Byte3Byte2/S34 ),
    .I5(\MULFirstStage/Byte3Byte2/C44 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte3Byte1/C21 ),
    .I1(\MULFirstStage/Byte3Byte1/S23 ),
    .I2(\MULFirstStage/Byte3Byte1/S25 ),
    .I3(\MULFirstStage/Byte3Byte1/S22 ),
    .I4(\MULFirstStage/Byte3Byte1/S34 ),
    .I5(\MULFirstStage/Byte3Byte1/C44 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte2Byte3/C21 ),
    .I1(\MULFirstStage/Byte2Byte3/S23 ),
    .I2(\MULFirstStage/Byte2Byte3/S25 ),
    .I3(\MULFirstStage/Byte2Byte3/S22 ),
    .I4(\MULFirstStage/Byte2Byte3/S34 ),
    .I5(\MULFirstStage/Byte2Byte3/C44 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte2Byte2/C21 ),
    .I1(\MULFirstStage/Byte2Byte2/S23 ),
    .I2(\MULFirstStage/Byte2Byte2/S25 ),
    .I3(\MULFirstStage/Byte2Byte2/S22 ),
    .I4(\MULFirstStage/Byte2Byte2/S34 ),
    .I5(\MULFirstStage/Byte2Byte2/C44 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte2Byte1/C21 ),
    .I1(\MULFirstStage/Byte2Byte1/S23 ),
    .I2(\MULFirstStage/Byte2Byte1/S25 ),
    .I3(\MULFirstStage/Byte2Byte1/S22 ),
    .I4(\MULFirstStage/Byte2Byte1/S34 ),
    .I5(\MULFirstStage/Byte2Byte1/C44 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte1Byte3/C21 ),
    .I1(\MULFirstStage/Byte1Byte3/S23 ),
    .I2(\MULFirstStage/Byte1Byte3/S25 ),
    .I3(\MULFirstStage/Byte1Byte3/S22 ),
    .I4(\MULFirstStage/Byte1Byte3/S34 ),
    .I5(\MULFirstStage/Byte1Byte3/C44 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte1Byte2/C21 ),
    .I1(\MULFirstStage/Byte1Byte2/S23 ),
    .I2(\MULFirstStage/Byte1Byte2/S25 ),
    .I3(\MULFirstStage/Byte1Byte2/S22 ),
    .I4(\MULFirstStage/Byte1Byte2/S34 ),
    .I5(\MULFirstStage/Byte1Byte2/C44 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h1E78E187E1871E78 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<6>  (
    .I0(\MULFirstStage/Byte1Byte1/C21 ),
    .I1(\MULFirstStage/Byte1Byte1/S23 ),
    .I2(\MULFirstStage/Byte1Byte1/S25 ),
    .I3(\MULFirstStage/Byte1Byte1/S22 ),
    .I4(\MULFirstStage/Byte1Byte1/S34 ),
    .I5(\MULFirstStage/Byte1Byte1/C44 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h3C6969C3C396963C ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte3Byte3/S211 ),
    .I1(\MULFirstStage/Byte3Byte3/S213 ),
    .I2(\MULFirstStage/Byte3Byte3/S38 ),
    .I3(\MULFirstStage/Byte3Byte3/C36 ),
    .I4(\MULFirstStage/Byte3Byte3/S37 ),
    .I5(\MULFirstStage/Byte3Byte3/C37 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte3Byte2/S213 ),
    .I1(\MULFirstStage/Byte3Byte2/S211 ),
    .I2(\MULFirstStage/Byte3Byte2/S38 ),
    .I3(\MULFirstStage/Byte3Byte2/C36 ),
    .I4(\MULFirstStage/Byte3Byte2/C37 ),
    .I5(\MULFirstStage/Byte3Byte2/S37 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte3Byte1/S213 ),
    .I1(\MULFirstStage/Byte3Byte1/S211 ),
    .I2(\MULFirstStage/Byte3Byte1/S38 ),
    .I3(\MULFirstStage/Byte3Byte1/C36 ),
    .I4(\MULFirstStage/Byte3Byte1/C37 ),
    .I5(\MULFirstStage/Byte3Byte1/S37 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h3C6969C3C396963C ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte2Byte3/S211 ),
    .I1(\MULFirstStage/Byte2Byte3/S213 ),
    .I2(\MULFirstStage/Byte2Byte3/S38 ),
    .I3(\MULFirstStage/Byte2Byte3/C36 ),
    .I4(\MULFirstStage/Byte2Byte3/S37 ),
    .I5(\MULFirstStage/Byte2Byte3/C37 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte2Byte2/S213 ),
    .I1(\MULFirstStage/Byte2Byte2/S211 ),
    .I2(\MULFirstStage/Byte2Byte2/S38 ),
    .I3(\MULFirstStage/Byte2Byte2/C36 ),
    .I4(\MULFirstStage/Byte2Byte2/C37 ),
    .I5(\MULFirstStage/Byte2Byte2/S37 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte2Byte1/S213 ),
    .I1(\MULFirstStage/Byte2Byte1/S211 ),
    .I2(\MULFirstStage/Byte2Byte1/S38 ),
    .I3(\MULFirstStage/Byte2Byte1/C36 ),
    .I4(\MULFirstStage/Byte2Byte1/C37 ),
    .I5(\MULFirstStage/Byte2Byte1/S37 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h3C6969C3C396963C ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte1Byte3/S211 ),
    .I1(\MULFirstStage/Byte1Byte3/S213 ),
    .I2(\MULFirstStage/Byte1Byte3/S38 ),
    .I3(\MULFirstStage/Byte1Byte3/C36 ),
    .I4(\MULFirstStage/Byte1Byte3/S37 ),
    .I5(\MULFirstStage/Byte1Byte3/C37 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte1Byte2/S213 ),
    .I1(\MULFirstStage/Byte1Byte2/S211 ),
    .I2(\MULFirstStage/Byte1Byte2/S38 ),
    .I3(\MULFirstStage/Byte1Byte2/C36 ),
    .I4(\MULFirstStage/Byte1Byte2/C37 ),
    .I5(\MULFirstStage/Byte1Byte2/S37 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h5A69A59669A5965A ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<10>  (
    .I0(\MULFirstStage/Byte1Byte1/S213 ),
    .I1(\MULFirstStage/Byte1Byte1/S211 ),
    .I2(\MULFirstStage/Byte1Byte1/S38 ),
    .I3(\MULFirstStage/Byte1Byte1/C36 ),
    .I4(\MULFirstStage/Byte1Byte1/C37 ),
    .I5(\MULFirstStage/Byte1Byte1/S37 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [10])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0B00F4F0000 ))
  \Stage2/InverterAlign/Mmux_OutData110  (
    .I0(\CompareReg/Q [0]),
    .I1(\ZeroDifferenceReg/Q_0_245 ),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Stage2/StickyBit ),
    .I5(\Stage2/InverterAlign/InData[26]_unary_minus_2_OUT<0> ),
    .O(Adder1[0])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte3Byte3/C23 ),
    .I1(\MULFirstStage/Byte3Byte3/S27 ),
    .I2(\MULFirstStage/Byte3Byte3/C22 ),
    .I3(\MULFirstStage/Byte3Byte3/S24 ),
    .I4(\MULFirstStage/Byte3Byte3/S35 ),
    .I5(\MULFirstStage/Byte3Byte3/C45 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte3Byte2/C23 ),
    .I1(\MULFirstStage/Byte3Byte2/S27 ),
    .I2(\MULFirstStage/Byte3Byte2/C22 ),
    .I3(\MULFirstStage/Byte3Byte2/S24 ),
    .I4(\MULFirstStage/Byte3Byte2/S35 ),
    .I5(\MULFirstStage/Byte3Byte2/C45 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte3Byte1/C23 ),
    .I1(\MULFirstStage/Byte3Byte1/S27 ),
    .I2(\MULFirstStage/Byte3Byte1/C22 ),
    .I3(\MULFirstStage/Byte3Byte1/S24 ),
    .I4(\MULFirstStage/Byte3Byte1/S35 ),
    .I5(\MULFirstStage/Byte3Byte1/C45 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte2Byte3/C23 ),
    .I1(\MULFirstStage/Byte2Byte3/S27 ),
    .I2(\MULFirstStage/Byte2Byte3/C22 ),
    .I3(\MULFirstStage/Byte2Byte3/S24 ),
    .I4(\MULFirstStage/Byte2Byte3/S35 ),
    .I5(\MULFirstStage/Byte2Byte3/C45 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte2Byte2/C23 ),
    .I1(\MULFirstStage/Byte2Byte2/S27 ),
    .I2(\MULFirstStage/Byte2Byte2/C22 ),
    .I3(\MULFirstStage/Byte2Byte2/S24 ),
    .I4(\MULFirstStage/Byte2Byte2/S35 ),
    .I5(\MULFirstStage/Byte2Byte2/C45 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte2Byte1/C23 ),
    .I1(\MULFirstStage/Byte2Byte1/S27 ),
    .I2(\MULFirstStage/Byte2Byte1/C22 ),
    .I3(\MULFirstStage/Byte2Byte1/S24 ),
    .I4(\MULFirstStage/Byte2Byte1/S35 ),
    .I5(\MULFirstStage/Byte2Byte1/C45 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte1Byte3/C23 ),
    .I1(\MULFirstStage/Byte1Byte3/S27 ),
    .I2(\MULFirstStage/Byte1Byte3/C22 ),
    .I3(\MULFirstStage/Byte1Byte3/S24 ),
    .I4(\MULFirstStage/Byte1Byte3/S35 ),
    .I5(\MULFirstStage/Byte1Byte3/C45 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte1Byte2/C23 ),
    .I1(\MULFirstStage/Byte1Byte2/S27 ),
    .I2(\MULFirstStage/Byte1Byte2/C22 ),
    .I3(\MULFirstStage/Byte1Byte2/S24 ),
    .I4(\MULFirstStage/Byte1Byte2/S35 ),
    .I5(\MULFirstStage/Byte1Byte2/C45 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<7>  (
    .I0(\MULFirstStage/Byte1Byte1/C23 ),
    .I1(\MULFirstStage/Byte1Byte1/S27 ),
    .I2(\MULFirstStage/Byte1Byte1/C22 ),
    .I3(\MULFirstStage/Byte1Byte1/S24 ),
    .I4(\MULFirstStage/Byte1Byte1/S35 ),
    .I5(\MULFirstStage/Byte1Byte1/C45 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte3Byte3/C25 ),
    .I1(\MULFirstStage/Byte3Byte3/S29 ),
    .I2(\MULFirstStage/Byte3Byte3/C24 ),
    .I3(\MULFirstStage/Byte3Byte3/S26 ),
    .I4(\MULFirstStage/Byte3Byte3/S36 ),
    .I5(\MULFirstStage/Byte3Byte3/C46 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte3Byte2/C25 ),
    .I1(\MULFirstStage/Byte3Byte2/S29 ),
    .I2(\MULFirstStage/Byte3Byte2/C24 ),
    .I3(\MULFirstStage/Byte3Byte2/S26 ),
    .I4(\MULFirstStage/Byte3Byte2/S36 ),
    .I5(\MULFirstStage/Byte3Byte2/C46 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte3Byte1/C25 ),
    .I1(\MULFirstStage/Byte3Byte1/S29 ),
    .I2(\MULFirstStage/Byte3Byte1/C24 ),
    .I3(\MULFirstStage/Byte3Byte1/S26 ),
    .I4(\MULFirstStage/Byte3Byte1/S36 ),
    .I5(\MULFirstStage/Byte3Byte1/C46 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte2Byte3/C25 ),
    .I1(\MULFirstStage/Byte2Byte3/S29 ),
    .I2(\MULFirstStage/Byte2Byte3/C24 ),
    .I3(\MULFirstStage/Byte2Byte3/S26 ),
    .I4(\MULFirstStage/Byte2Byte3/S36 ),
    .I5(\MULFirstStage/Byte2Byte3/C46 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte2Byte2/C25 ),
    .I1(\MULFirstStage/Byte2Byte2/S29 ),
    .I2(\MULFirstStage/Byte2Byte2/C24 ),
    .I3(\MULFirstStage/Byte2Byte2/S26 ),
    .I4(\MULFirstStage/Byte2Byte2/S36 ),
    .I5(\MULFirstStage/Byte2Byte2/C46 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte2Byte1/C25 ),
    .I1(\MULFirstStage/Byte2Byte1/S29 ),
    .I2(\MULFirstStage/Byte2Byte1/C24 ),
    .I3(\MULFirstStage/Byte2Byte1/S26 ),
    .I4(\MULFirstStage/Byte2Byte1/S36 ),
    .I5(\MULFirstStage/Byte2Byte1/C46 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte1Byte3/C25 ),
    .I1(\MULFirstStage/Byte1Byte3/S29 ),
    .I2(\MULFirstStage/Byte1Byte3/C24 ),
    .I3(\MULFirstStage/Byte1Byte3/S26 ),
    .I4(\MULFirstStage/Byte1Byte3/S36 ),
    .I5(\MULFirstStage/Byte1Byte3/C46 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte1Byte2/C25 ),
    .I1(\MULFirstStage/Byte1Byte2/S29 ),
    .I2(\MULFirstStage/Byte1Byte2/C24 ),
    .I3(\MULFirstStage/Byte1Byte2/S26 ),
    .I4(\MULFirstStage/Byte1Byte2/S36 ),
    .I5(\MULFirstStage/Byte1Byte2/C46 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h366CC993C993366C ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<8>  (
    .I0(\MULFirstStage/Byte1Byte1/C25 ),
    .I1(\MULFirstStage/Byte1Byte1/S29 ),
    .I2(\MULFirstStage/Byte1Byte1/C24 ),
    .I3(\MULFirstStage/Byte1Byte1/S26 ),
    .I4(\MULFirstStage/Byte1Byte1/S36 ),
    .I5(\MULFirstStage/Byte1Byte1/C46 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte3Byte3/S211 ),
    .I1(\MULFirstStage/Byte3Byte3/C36 ),
    .I2(\MULFirstStage/Byte3Byte3/S37 ),
    .I3(\MULFirstStage/Byte3Byte3/C47 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte3Byte2/S211 ),
    .I1(\MULFirstStage/Byte3Byte2/S37 ),
    .I2(\MULFirstStage/Byte3Byte2/C36 ),
    .I3(\MULFirstStage/Byte3Byte2/C47 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte3Byte1/S211 ),
    .I1(\MULFirstStage/Byte3Byte1/S37 ),
    .I2(\MULFirstStage/Byte3Byte1/C36 ),
    .I3(\MULFirstStage/Byte3Byte1/C47 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte2Byte3/S211 ),
    .I1(\MULFirstStage/Byte2Byte3/C36 ),
    .I2(\MULFirstStage/Byte2Byte3/S37 ),
    .I3(\MULFirstStage/Byte2Byte3/C47 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte2Byte2/S211 ),
    .I1(\MULFirstStage/Byte2Byte2/C36 ),
    .I2(\MULFirstStage/Byte2Byte2/S37 ),
    .I3(\MULFirstStage/Byte2Byte2/C47 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte2Byte1/S211 ),
    .I1(\MULFirstStage/Byte2Byte1/C36 ),
    .I2(\MULFirstStage/Byte2Byte1/S37 ),
    .I3(\MULFirstStage/Byte2Byte1/C47 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte1Byte3/S211 ),
    .I1(\MULFirstStage/Byte1Byte3/C36 ),
    .I2(\MULFirstStage/Byte1Byte3/S37 ),
    .I3(\MULFirstStage/Byte1Byte3/C47 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte1Byte2/S211 ),
    .I1(\MULFirstStage/Byte1Byte2/C36 ),
    .I2(\MULFirstStage/Byte1Byte2/S37 ),
    .I3(\MULFirstStage/Byte1Byte2/C47 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<9>  (
    .I0(\MULFirstStage/Byte1Byte1/S211 ),
    .I1(\MULFirstStage/Byte1Byte1/C36 ),
    .I2(\MULFirstStage/Byte1Byte1/S37 ),
    .I3(\MULFirstStage/Byte1Byte1/C47 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [9])
  );
  LUT6 #(
    .INIT ( 64'hEAEBEEEFFAFBFEFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<15>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [2]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out9 ),
    .I4(\Stage2/Difference<1>_mmx_out10 ),
    .I5(\Stage2/Difference<1>_mmx_out11 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1690 )
  );
  LUT6 #(
    .INIT ( 64'hFAFEFBFFEAEEEBEF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<16>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [2]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out15 ),
    .I4(\Stage2/Difference<1>_mmx_out14 ),
    .I5(\Stage2/Difference<1>_mmx_out16 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1688 )
  );
  LUT6 #(
    .INIT ( 64'hFAAAFEAEFBABFFAF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<17>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [2]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<2>_mmx_out17 ),
    .I4(\Stage2/Difference<1>_mmx_out20 ),
    .I5(\Stage2/Difference<1>_mmx_out19 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1686 )
  );
  LUT6 #(
    .INIT ( 64'hFAAAFBABFEAEFFAF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<18>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [2]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<2>_mmx_out2 ),
    .I4(\Stage2/Difference<1>_mmx_out3 ),
    .I5(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1684 )
  );
  LUT5 #(
    .INIT ( 32'hFCFDFEFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<19>  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out10 ),
    .I4(\Stage2/Difference<1>_mmx_out11 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1682 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0F3FFFFF0F5 ))
  \Stage2/Difference<2>91  (
    .I0(\Mantissa2Reg/Q [22]),
    .I1(\Mantissa1Reg/Q [22]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\DifferenceReg/Q [0]),
    .I4(\DifferenceReg/Q [2]),
    .I5(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<2>_mmx_out17 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte2Byte3/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [20]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte2Byte3/S212 )
  );
  LUT6 #(
    .INIT ( 64'hA278DAF02A002A00 ))
  \MULFirstStage/Byte2Byte2/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [11]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte2Byte2/S212 )
  );
  LUT6 #(
    .INIT ( 64'hA278DAF02A002A00 ))
  \MULFirstStage/Byte2Byte1/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [14]),
    .I3(\inputOperand2/Q [3]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte2Byte1/S212 )
  );
  LUT6 #(
    .INIT ( 64'h9208F808B8887888 ))
  \MULFirstStage/Byte1Byte3/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [19]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [20]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [18]),
    .O(\MULFirstStage/Byte1Byte3/S212 )
  );
  LUT6 #(
    .INIT ( 64'hA278DAF02A002A00 ))
  \MULFirstStage/Byte1Byte2/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [11]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte1Byte2/S212 )
  );
  LUT6 #(
    .INIT ( 64'hA278DAF02A002A00 ))
  \MULFirstStage/Byte1Byte1/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [6]),
    .I3(\inputOperand2/Q [3]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte1Byte1/S212 )
  );
  LUT5 #(
    .INIT ( 32'h9EE622AA ))
  \MULFirstStage/Byte3Byte3/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [18]),
    .I4(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/S212 )
  );
  LUT5 #(
    .INIT ( 32'hD6BC7070 ))
  \MULFirstStage/Byte3Byte2/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [11]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [12]),
    .O(\MULFirstStage/Byte3Byte2/S212 )
  );
  LUT5 #(
    .INIT ( 32'hD6BC7070 ))
  \MULFirstStage/Byte3Byte1/FA212/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [3]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [4]),
    .O(\MULFirstStage/Byte3Byte1/S212 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA8FFFFFFFD ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<10>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\DifferenceReg/Q [0]),
    .I4(\DifferenceReg/Q [2]),
    .I5(\Stage2/AlignShifter/Stage5/Mmux_Output29 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1700 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte3/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte3Byte3/C22 ),
    .I5(\MULFirstStage/Byte3Byte3/S24 ),
    .O(\MULFirstStage/Byte3Byte3/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte2/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte3Byte2/C22 ),
    .I5(\MULFirstStage/Byte3Byte2/S24 ),
    .O(\MULFirstStage/Byte3Byte2/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte1/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [18]),
    .I2(\inputOperand1/Q [17]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte3Byte1/C22 ),
    .I5(\MULFirstStage/Byte3Byte1/S24 ),
    .O(\MULFirstStage/Byte3Byte1/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte3/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte2Byte3/C22 ),
    .I5(\MULFirstStage/Byte2Byte3/S24 ),
    .O(\MULFirstStage/Byte2Byte3/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte2/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte2Byte2/C22 ),
    .I5(\MULFirstStage/Byte2Byte2/S24 ),
    .O(\MULFirstStage/Byte2Byte2/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte1/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [10]),
    .I2(\inputOperand1/Q [9]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte2Byte1/C22 ),
    .I5(\MULFirstStage/Byte2Byte1/S24 ),
    .O(\MULFirstStage/Byte2Byte1/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte3/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte1Byte3/C22 ),
    .I5(\MULFirstStage/Byte1Byte3/S24 ),
    .O(\MULFirstStage/Byte1Byte3/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte2/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte1Byte2/C22 ),
    .I5(\MULFirstStage/Byte1Byte2/S24 ),
    .O(\MULFirstStage/Byte1Byte2/S34 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte1/FA34/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [2]),
    .I2(\inputOperand1/Q [1]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte1Byte1/C22 ),
    .I5(\MULFirstStage/Byte1Byte1/S24 ),
    .O(\MULFirstStage/Byte1Byte1/S34 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte3Byte3/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte3/C11 ),
    .I1(\MULFirstStage/Byte3Byte3/S13 ),
    .I2(\MULFirstStage/Byte3Byte3/C25 ),
    .I3(\MULFirstStage/Byte3Byte3/S12 ),
    .I4(\MULFirstStage/Byte3Byte3/C24 ),
    .O(\MULFirstStage/Byte3Byte3/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte3Byte2/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte2/C11 ),
    .I1(\MULFirstStage/Byte3Byte2/S13 ),
    .I2(\MULFirstStage/Byte3Byte2/C25 ),
    .I3(\MULFirstStage/Byte3Byte2/S12 ),
    .I4(\MULFirstStage/Byte3Byte2/C24 ),
    .O(\MULFirstStage/Byte3Byte2/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte3Byte1/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte3Byte1/C11 ),
    .I1(\MULFirstStage/Byte3Byte1/S13 ),
    .I2(\MULFirstStage/Byte3Byte1/C25 ),
    .I3(\MULFirstStage/Byte3Byte1/S12 ),
    .I4(\MULFirstStage/Byte3Byte1/C24 ),
    .O(\MULFirstStage/Byte3Byte1/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte2Byte3/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte3/C11 ),
    .I1(\MULFirstStage/Byte2Byte3/S13 ),
    .I2(\MULFirstStage/Byte2Byte3/C25 ),
    .I3(\MULFirstStage/Byte2Byte3/S12 ),
    .I4(\MULFirstStage/Byte2Byte3/C24 ),
    .O(\MULFirstStage/Byte2Byte3/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte2Byte2/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte2/C11 ),
    .I1(\MULFirstStage/Byte2Byte2/S13 ),
    .I2(\MULFirstStage/Byte2Byte2/C25 ),
    .I3(\MULFirstStage/Byte2Byte2/S12 ),
    .I4(\MULFirstStage/Byte2Byte2/C24 ),
    .O(\MULFirstStage/Byte2Byte2/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte2Byte1/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte2Byte1/C11 ),
    .I1(\MULFirstStage/Byte2Byte1/S13 ),
    .I2(\MULFirstStage/Byte2Byte1/C25 ),
    .I3(\MULFirstStage/Byte2Byte1/S12 ),
    .I4(\MULFirstStage/Byte2Byte1/C24 ),
    .O(\MULFirstStage/Byte2Byte1/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte1Byte3/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte3/C11 ),
    .I1(\MULFirstStage/Byte1Byte3/S13 ),
    .I2(\MULFirstStage/Byte1Byte3/C25 ),
    .I3(\MULFirstStage/Byte1Byte3/S12 ),
    .I4(\MULFirstStage/Byte1Byte3/C24 ),
    .O(\MULFirstStage/Byte1Byte3/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte1Byte2/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte2/C11 ),
    .I1(\MULFirstStage/Byte1Byte2/S13 ),
    .I2(\MULFirstStage/Byte1Byte2/C25 ),
    .I3(\MULFirstStage/Byte1Byte2/S12 ),
    .I4(\MULFirstStage/Byte1Byte2/C24 ),
    .O(\MULFirstStage/Byte1Byte2/S35 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \MULFirstStage/Byte1Byte1/FA35/Second/Mxor_Sum_xo<0>1  (
    .I0(\MULFirstStage/Byte1Byte1/C11 ),
    .I1(\MULFirstStage/Byte1Byte1/S13 ),
    .I2(\MULFirstStage/Byte1Byte1/C25 ),
    .I3(\MULFirstStage/Byte1Byte1/S12 ),
    .I4(\MULFirstStage/Byte1Byte1/C24 ),
    .O(\MULFirstStage/Byte1Byte1/S35 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA082AAAAA5D7F ))
  \Stage2/Difference<1>81  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\SignOfDifference1Reg/Q_0_244 ),
    .I2(\Mantissa1Reg/Q [22]),
    .I3(\Mantissa2Reg/Q [22]),
    .I4(\DifferenceReg/Q [1]),
    .I5(\Stage2/SignOfDifference_mmx_out20 ),
    .O(\Stage2/Difference<1>_mmx_out16 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte3/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte3Byte3/C12 ),
    .I5(\MULFirstStage/Byte3Byte3/S14 ),
    .O(\MULFirstStage/Byte3Byte3/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte2/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte3Byte2/C12 ),
    .I5(\MULFirstStage/Byte3Byte2/S14 ),
    .O(\MULFirstStage/Byte3Byte2/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte1/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte3Byte1/C12 ),
    .I5(\MULFirstStage/Byte3Byte1/S14 ),
    .O(\MULFirstStage/Byte3Byte1/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte3/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte2Byte3/C12 ),
    .I5(\MULFirstStage/Byte2Byte3/S14 ),
    .O(\MULFirstStage/Byte2Byte3/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte2/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte2Byte2/C12 ),
    .I5(\MULFirstStage/Byte2Byte2/S14 ),
    .O(\MULFirstStage/Byte2Byte2/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte1/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte2Byte1/C12 ),
    .I5(\MULFirstStage/Byte2Byte1/S14 ),
    .O(\MULFirstStage/Byte2Byte1/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte3/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [19]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte1Byte3/C12 ),
    .I5(\MULFirstStage/Byte1Byte3/S14 ),
    .O(\MULFirstStage/Byte1Byte3/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte2/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [11]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte1Byte2/C12 ),
    .I5(\MULFirstStage/Byte1Byte2/S14 ),
    .O(\MULFirstStage/Byte1Byte2/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte1/FA28/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [3]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte1Byte1/C12 ),
    .I5(\MULFirstStage/Byte1Byte1/S14 ),
    .O(\MULFirstStage/Byte1Byte1/S28 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte3/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte3Byte3/C14 ),
    .I5(\MULFirstStage/Byte3Byte3/S16 ),
    .O(\MULFirstStage/Byte3Byte3/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte2/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte3Byte2/C14 ),
    .I5(\MULFirstStage/Byte3Byte2/S16 ),
    .O(\MULFirstStage/Byte3Byte2/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte1/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [20]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte3Byte1/C14 ),
    .I5(\MULFirstStage/Byte3Byte1/S16 ),
    .O(\MULFirstStage/Byte3Byte1/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte3/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte2Byte3/C14 ),
    .I5(\MULFirstStage/Byte2Byte3/S16 ),
    .O(\MULFirstStage/Byte2Byte3/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte2/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte2Byte2/S16 ),
    .I5(\MULFirstStage/Byte2Byte2/C14 ),
    .O(\MULFirstStage/Byte2Byte2/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte1/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [12]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte2Byte1/S16 ),
    .I5(\MULFirstStage/Byte2Byte1/C14 ),
    .O(\MULFirstStage/Byte2Byte1/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte3/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [21]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [20]),
    .I4(\MULFirstStage/Byte1Byte3/C14 ),
    .I5(\MULFirstStage/Byte1Byte3/S16 ),
    .O(\MULFirstStage/Byte1Byte3/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte2/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [13]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [12]),
    .I4(\MULFirstStage/Byte1Byte2/S16 ),
    .I5(\MULFirstStage/Byte1Byte2/C14 ),
    .O(\MULFirstStage/Byte1Byte2/S210 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte1/FA210/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [5]),
    .I1(\inputOperand1/Q [4]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [4]),
    .I4(\MULFirstStage/Byte1Byte1/S16 ),
    .I5(\MULFirstStage/Byte1Byte1/C14 ),
    .O(\MULFirstStage/Byte1Byte1/S210 )
  );
  MUXF7   \Stage4/tobeRoundMux/Mmux_Output2312  (
    .I0(N81),
    .I1(N82),
    .S(\NormShiftsReg/Q [0]),
    .O(\Stage4/tobeRoundMux/Mmux_Output2312_2920 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \Stage4/tobeRoundMux/Mmux_Output2312_F  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [12]),
    .I3(\AdderResultReg/Q [10]),
    .O(N81)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \Stage4/tobeRoundMux/Mmux_Output2312_G  (
    .I0(\NormShiftsReg/Q [3]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [17]),
    .I3(\AdderResultReg/Q [19]),
    .I4(\Stage4/NormShifts<1>2 ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h56A9A9566A95956A ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<11>  (
    .I0(\inputOperand1/Q [20]),
    .I1(\MULFirstStage/Byte3Byte3/S213 ),
    .I2(\MULFirstStage/Byte3Byte3/S38 ),
    .I3(\MULFirstStage/Byte3Byte3/C38 ),
    .I4(\MULFirstStage/Byte3Byte3/S39 ),
    .I5(\MULFirstStage/Byte3Byte3/C37 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h56A9A9566A95956A ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<11>  (
    .I0(\inputOperand1/Q [12]),
    .I1(\MULFirstStage/Byte2Byte3/S213 ),
    .I2(\MULFirstStage/Byte2Byte3/S38 ),
    .I3(\MULFirstStage/Byte2Byte3/C38 ),
    .I4(\MULFirstStage/Byte2Byte3/S39 ),
    .I5(\MULFirstStage/Byte2Byte3/C37 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h56A9A9566A95956A ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<11>  (
    .I0(\inputOperand1/Q [4]),
    .I1(\MULFirstStage/Byte1Byte3/S213 ),
    .I2(\MULFirstStage/Byte1Byte3/S38 ),
    .I3(\MULFirstStage/Byte1Byte3/C38 ),
    .I4(\MULFirstStage/Byte1Byte3/S39 ),
    .I5(\MULFirstStage/Byte1Byte3/C37 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h3C6969C3C396963C ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<12>  (
    .I0(\inputOperand1/Q [20]),
    .I1(\inputOperand1/Q [21]),
    .I2(\MULFirstStage/Byte3Byte3/S310 ),
    .I3(\MULFirstStage/Byte3Byte3/C38 ),
    .I4(\MULFirstStage/Byte3Byte3/S39 ),
    .I5(\MULFirstStage/Byte3Byte3/C39 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h6969699669969696 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<12>  (
    .I0(\MULFirstStage/Byte2Byte3/S310 ),
    .I1(\inputOperand1/Q [13]),
    .I2(\MULFirstStage/Byte2Byte3/C39 ),
    .I3(\MULFirstStage/Byte2Byte3/S39 ),
    .I4(\inputOperand1/Q [12]),
    .I5(\MULFirstStage/Byte2Byte3/C38 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h6969699669969696 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<12>  (
    .I0(\MULFirstStage/Byte1Byte3/S310 ),
    .I1(\inputOperand1/Q [5]),
    .I2(\MULFirstStage/Byte1Byte3/C39 ),
    .I3(\MULFirstStage/Byte1Byte3/S39 ),
    .I4(\inputOperand1/Q [4]),
    .I5(\MULFirstStage/Byte1Byte3/C38 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h6969699669969696 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<13>  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [22]),
    .I2(\MULFirstStage/Byte3Byte3/C310 ),
    .I3(\MULFirstStage/Byte3Byte3/S310 ),
    .I4(\inputOperand1/Q [21]),
    .I5(\MULFirstStage/Byte3Byte3/C39 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [13])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte3Byte3/C42 ),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [20]),
    .I3(\MULFirstStage/Byte3Byte3/C31 ),
    .I4(\MULFirstStage/Byte3Byte3/S32 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte3Byte2/C42 ),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [12]),
    .I3(\MULFirstStage/Byte3Byte2/C31 ),
    .I4(\MULFirstStage/Byte3Byte2/S32 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte3Byte1/C42 ),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [4]),
    .I3(\MULFirstStage/Byte3Byte1/C31 ),
    .I4(\MULFirstStage/Byte3Byte1/S32 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte2Byte3/C42 ),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [20]),
    .I3(\MULFirstStage/Byte2Byte3/C31 ),
    .I4(\MULFirstStage/Byte2Byte3/S32 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte2Byte2/C42 ),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [12]),
    .I3(\MULFirstStage/Byte2Byte2/C31 ),
    .I4(\MULFirstStage/Byte2Byte2/S32 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte2Byte1/C42 ),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [4]),
    .I3(\MULFirstStage/Byte2Byte1/C31 ),
    .I4(\MULFirstStage/Byte2Byte1/S32 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte1Byte3/C42 ),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [20]),
    .I3(\MULFirstStage/Byte1Byte3/C31 ),
    .I4(\MULFirstStage/Byte1Byte3/S32 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte1Byte2/C42 ),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [12]),
    .I3(\MULFirstStage/Byte1Byte2/C31 ),
    .I4(\MULFirstStage/Byte1Byte2/S32 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h6A95956A ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<4>  (
    .I0(\MULFirstStage/Byte1Byte1/C42 ),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [4]),
    .I3(\MULFirstStage/Byte1Byte1/C31 ),
    .I4(\MULFirstStage/Byte1Byte1/S32 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<0>  (
    .I0(\ResultExponentReg/Q [0]),
    .I1(\EffCarryReg1/Q_0_493 ),
    .I2(\NormShiftsReg/Q [0]),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hAAAA9996 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<2>  (
    .I0(\ResultExponentReg/Q [2]),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [0]),
    .I3(\NormShiftsReg/Q [1]),
    .I4(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999996 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<3>  (
    .I0(\ResultExponentReg/Q [3]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\NormShiftsReg/Q [1]),
    .I4(\NormShiftsReg/Q [0]),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [19]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [11]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [17]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [16]),
    .I3(\inputOperand2/Q [3]),
    .O(N87)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [19]),
    .O(N89)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [11]),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [9]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [8]),
    .I3(\inputOperand2/Q [3]),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [18]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [19]),
    .O(N95)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [10]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [11]),
    .O(N97)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<3>_SW0  (
    .I0(\inputOperand1/Q [1]),
    .I1(\inputOperand2/Q [2]),
    .I2(\inputOperand1/Q [0]),
    .I3(\inputOperand2/Q [3]),
    .O(N99)
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [20]),
    .I2(\MULFirstStage/Byte3Byte2/C38 ),
    .I3(\MULFirstStage/Byte3Byte2/S39 ),
    .I4(\MULFirstStage/Byte3Byte2/C49 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [20]),
    .I2(\MULFirstStage/Byte3Byte1/C38 ),
    .I3(\MULFirstStage/Byte3Byte1/S39 ),
    .I4(\MULFirstStage/Byte3Byte1/C49 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [12]),
    .I2(\MULFirstStage/Byte2Byte2/C38 ),
    .I3(\MULFirstStage/Byte2Byte2/S39 ),
    .I4(\MULFirstStage/Byte2Byte2/C49 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [12]),
    .I2(\MULFirstStage/Byte2Byte1/C38 ),
    .I3(\MULFirstStage/Byte2Byte1/S39 ),
    .I4(\MULFirstStage/Byte2Byte1/C49 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [4]),
    .I2(\MULFirstStage/Byte1Byte2/C38 ),
    .I3(\MULFirstStage/Byte1Byte2/S39 ),
    .I4(\MULFirstStage/Byte1Byte2/C49 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<11>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [4]),
    .I2(\MULFirstStage/Byte1Byte1/C38 ),
    .I3(\MULFirstStage/Byte1Byte1/S39 ),
    .I4(\MULFirstStage/Byte1Byte1/C49 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte3Byte3/C32 ),
    .I3(\MULFirstStage/Byte3Byte3/S33 ),
    .I4(\MULFirstStage/Byte3Byte3/C43 ),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte3Byte2/C32 ),
    .I3(\MULFirstStage/Byte3Byte2/S33 ),
    .I4(\MULFirstStage/Byte3Byte2/C43 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [16]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte3Byte1/C32 ),
    .I3(\MULFirstStage/Byte3Byte1/S33 ),
    .I4(\MULFirstStage/Byte3Byte1/C43 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte2Byte3/C32 ),
    .I3(\MULFirstStage/Byte2Byte3/S33 ),
    .I4(\MULFirstStage/Byte2Byte3/C43 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte2Byte2/C32 ),
    .I3(\MULFirstStage/Byte2Byte2/S33 ),
    .I4(\MULFirstStage/Byte2Byte2/C43 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [8]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte2Byte1/C32 ),
    .I3(\MULFirstStage/Byte2Byte1/S33 ),
    .I4(\MULFirstStage/Byte2Byte1/C43 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [21]),
    .I2(\MULFirstStage/Byte1Byte3/C32 ),
    .I3(\MULFirstStage/Byte1Byte3/S33 ),
    .I4(\MULFirstStage/Byte1Byte3/C43 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [13]),
    .I2(\MULFirstStage/Byte1Byte2/C32 ),
    .I3(\MULFirstStage/Byte1Byte2/S33 ),
    .I4(\MULFirstStage/Byte1Byte2/C43 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<5>  (
    .I0(\inputOperand1/Q [0]),
    .I1(\inputOperand2/Q [5]),
    .I2(\MULFirstStage/Byte1Byte1/C32 ),
    .I3(\MULFirstStage/Byte1Byte1/S33 ),
    .I4(\MULFirstStage/Byte1Byte1/C43 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [21]),
    .I2(\MULFirstStage/Byte3Byte2/S310 ),
    .I3(\MULFirstStage/Byte3Byte2/C39 ),
    .I4(\MULFirstStage/Byte3Byte2/C410 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [21]),
    .I2(\MULFirstStage/Byte3Byte1/S310 ),
    .I3(\MULFirstStage/Byte3Byte1/C39 ),
    .I4(\MULFirstStage/Byte3Byte1/C410 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [13]),
    .I2(\MULFirstStage/Byte2Byte2/S310 ),
    .I3(\MULFirstStage/Byte2Byte2/C39 ),
    .I4(\MULFirstStage/Byte2Byte2/C410 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [13]),
    .I2(\MULFirstStage/Byte2Byte1/S310 ),
    .I3(\MULFirstStage/Byte2Byte1/C39 ),
    .I4(\MULFirstStage/Byte2Byte1/C410 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [5]),
    .I2(\MULFirstStage/Byte1Byte2/S310 ),
    .I3(\MULFirstStage/Byte1Byte2/C39 ),
    .I4(\MULFirstStage/Byte1Byte2/C410 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<12>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [5]),
    .I2(\MULFirstStage/Byte1Byte1/S310 ),
    .I3(\MULFirstStage/Byte1Byte1/C39 ),
    .I4(\MULFirstStage/Byte1Byte1/C410 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h6C93936C ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<13>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand1/Q [22]),
    .I3(\MULFirstStage/Byte3Byte2/C310 ),
    .I4(\MULFirstStage/Byte3Byte2/C411 ),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [13])
  );
  LUT5 #(
    .INIT ( 32'h6C93936C ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<13>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand1/Q [22]),
    .I3(\MULFirstStage/Byte3Byte1/C310 ),
    .I4(\MULFirstStage/Byte3Byte1/C411 ),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [13])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [14]),
    .I3(\MULFirstStage/Byte2Byte3/C310 ),
    .I4(\MULFirstStage/Byte2Byte3/C411 ),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h6CA0935F935F6CA0 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand1/Q [14]),
    .I4(\MULFirstStage/Byte2Byte2/C310 ),
    .I5(\MULFirstStage/Byte2Byte2/C411 ),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h6CA0935F935F6CA0 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand1/Q [14]),
    .I4(\MULFirstStage/Byte2Byte1/C310 ),
    .I5(\MULFirstStage/Byte2Byte1/C411 ),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [13])
  );
  LUT5 #(
    .INIT ( 32'h78878778 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [6]),
    .I3(\MULFirstStage/Byte1Byte3/C310 ),
    .I4(\MULFirstStage/Byte1Byte3/C411 ),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h6CA0935F935F6CA0 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\inputOperand1/Q [6]),
    .I4(\MULFirstStage/Byte1Byte2/C310 ),
    .I5(\MULFirstStage/Byte1Byte2/C411 ),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h6CA0935F935F6CA0 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<13>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\inputOperand1/Q [6]),
    .I4(\MULFirstStage/Byte1Byte1/C310 ),
    .I5(\MULFirstStage/Byte1Byte1/C411 ),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [13])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFCFFFFFFFD ))
  \Stage3/ZerosCounter/Mmux_Shifts43  (
    .I0(AdderResult[3]),
    .I1(AdderResult[15]),
    .I2(AdderResult[16]),
    .I3(AdderResult[17]),
    .I4(AdderResult[18]),
    .I5(N101),
    .O(\Stage3/ZerosCounter/Mmux_Shifts42 )
  );
  LUT5 #(
    .INIT ( 32'hF3717130 ))
  \Stage1/ExponDifference/Sign21_SW0  (
    .I0(\inputOperand1/Q [27]),
    .I1(\inputOperand1/Q [28]),
    .I2(\inputOperand2/Q [28]),
    .I3(\inputOperand2/Q [27]),
    .I4(\Stage1/ExponDifference/Sign11_2863 ),
    .O(N103)
  );
  LUT5 #(
    .INIT ( 32'hF3717130 ))
  \Stage1/ExponDifference/Sign21  (
    .I0(\inputOperand1/Q [29]),
    .I1(\inputOperand1/Q [30]),
    .I2(\inputOperand2/Q [30]),
    .I3(\inputOperand2/Q [29]),
    .I4(N103),
    .O(SignOfDifference)
  );
  LUT3 #(
    .INIT ( 8'hB2 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<11>  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [22]),
    .I2(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<10>_1523 ),
    .O(Compare[0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEF0FFFFFEFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<22>  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\DifferenceReg/Q [4]),
    .I3(\DifferenceReg/Q [2]),
    .I4(\DifferenceReg/Q [3]),
    .I5(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1676 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<23>  (
    .I0(\DifferenceReg/Q [3]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out11 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1674 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<24>  (
    .I0(\DifferenceReg/Q [2]),
    .I1(\DifferenceReg/Q [4]),
    .I2(\DifferenceReg/Q [3]),
    .I3(\Stage2/Difference<1>_mmx_out16 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1672 )
  );
  LUT6 #(
    .INIT ( 64'h02A252F207A757F7 ))
  \Stage4/tobeRoundMux/Mmux_Output184_SW0  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\AdderResultReg/Q [21]),
    .I2(\NormShiftsReg/Q [1]),
    .I3(\AdderResultReg/Q [19]),
    .I4(\AdderResultReg/Q [20]),
    .I5(\AdderResultReg/Q [22]),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output101  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\Stage2/Difference<1>_mmx_out11 ),
    .I4(\Stage2/Difference<1>_mmx_out10 ),
    .O(\Stage2/preAligned [18])
  );
  LUT6 #(
    .INIT ( 64'h0101011100000010 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output151  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\DifferenceReg/Q [1]),
    .I4(\DifferenceReg/Q [0]),
    .I5(\Stage2/Difference<1>_mmx_out5 ),
    .O(\Stage2/preAligned [21])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<25>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\Stage2/Difference<2>_mmx_out17 ),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<25>_1670 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<2>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [0]),
    .I2(\Mantissa1Reg/Q [0]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<2>_1767 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<3>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [1]),
    .I2(\Mantissa1Reg/Q [1]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<3>_1765 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<4>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [2]),
    .I2(\Mantissa1Reg/Q [2]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<4>_1763 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<5>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [3]),
    .I2(\Mantissa1Reg/Q [3]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<5>_1761 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<6>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [4]),
    .I2(\Mantissa1Reg/Q [4]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<6>_1759 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<7>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [5]),
    .I2(\Mantissa1Reg/Q [5]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<7>_1757 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<8>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [6]),
    .I2(\Mantissa1Reg/Q [6]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<8>_1755 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<9>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [7]),
    .I2(\Mantissa1Reg/Q [7]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<9>_1753 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<10>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [8]),
    .I2(\Mantissa1Reg/Q [8]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<10>_1751 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<11>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [9]),
    .I2(\Mantissa1Reg/Q [9]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<11>_1749 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \Stage4/ExponentMux/Mmux_Output311  (
    .I0(\ResultExponentReg/Q [0]),
    .I1(\MULResultReg/Q [47]),
    .I2(\ResultExponentReg/Q [1]),
    .O(\Stage4/ExponentMux/Mmux_Output31 )
  );
  LUT5 #(
    .INIT ( 32'h00404000 ))
  \Stage4/RoundControlMux/Mmux_Output12  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\AdderResultReg/Q [0]),
    .I2(\AdderResultReg/Q [1]),
    .I3(\NormShiftsReg/Q [0]),
    .I4(\NormShiftsReg/Q [1]),
    .O(\Stage4/RoundControlMux/Mmux_Output11_2935 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<12>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [10]),
    .I2(\Mantissa1Reg/Q [10]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<12>_1747 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<13>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [11]),
    .I2(\Mantissa1Reg/Q [11]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<13>_1745 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<14>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [12]),
    .I2(\Mantissa1Reg/Q [12]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<14>_1743 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<15>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [13]),
    .I2(\Mantissa1Reg/Q [13]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<15>_1741 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<16>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [14]),
    .I2(\Mantissa1Reg/Q [14]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<16>_1739 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<17>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [15]),
    .I2(\Mantissa1Reg/Q [15]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<17>_1737 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<18>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [16]),
    .I2(\Mantissa1Reg/Q [16]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<18>_1735 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<19>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [17]),
    .I2(\Mantissa1Reg/Q [17]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<19>_1733 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<20>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [18]),
    .I2(\Mantissa1Reg/Q [18]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<20>_1731 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<21>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [19]),
    .I2(\Mantissa1Reg/Q [19]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<21>_1729 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<22>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [20]),
    .I2(\Mantissa1Reg/Q [20]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<22>_1727 )
  );
  LUT6 #(
    .INIT ( 64'hEA88C88880000000 ))
  \MULFirstStage/Byte2Byte3/FA412/Cout1  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [13]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand2/Q [20]),
    .I5(\inputOperand1/Q [14]),
    .O(\MULFirstStage/Byte2Byte3/C412 )
  );
  LUT6 #(
    .INIT ( 64'hEA88C88880000000 ))
  \MULFirstStage/Byte1Byte3/FA412/Cout1  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [22]),
    .I2(\inputOperand1/Q [5]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand2/Q [20]),
    .I5(\inputOperand1/Q [6]),
    .O(\MULFirstStage/Byte1Byte3/C412 )
  );
  LUT5 #(
    .INIT ( 32'hFAAA8000 ))
  \MULFirstStage/Byte3Byte3/FA412/Cout1  (
    .I0(\inputOperand2/Q [22]),
    .I1(\inputOperand1/Q [21]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [22]),
    .O(\MULFirstStage/Byte3Byte3/C412 )
  );
  LUT6 #(
    .INIT ( 64'hE8A88888C8888000 ))
  \MULFirstStage/Byte3Byte2/FA412/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [14]),
    .I2(\inputOperand2/Q [12]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [13]),
    .I5(\inputOperand2/Q [15]),
    .O(\MULFirstStage/Byte3Byte2/C412 )
  );
  LUT6 #(
    .INIT ( 64'hE8A88888C8888000 ))
  \MULFirstStage/Byte3Byte1/FA412/Cout1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [6]),
    .I2(\inputOperand2/Q [4]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [5]),
    .I5(\inputOperand2/Q [7]),
    .O(\MULFirstStage/Byte3Byte1/C412 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<23>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [21]),
    .I2(\Mantissa1Reg/Q [21]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<23>_1725 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<24>  (
    .I0(\SignOfDifference1Reg/Q_0_244 ),
    .I1(\Mantissa2Reg/Q [22]),
    .I2(\Mantissa1Reg/Q [22]),
    .O(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<24>_1723 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22200020 ))
  \Stage4/tobeRoundMux/Mmux_Output31  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output142_1952 ),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output1211_1960 ),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\Stage4/tobeRoundMux/Mmux_Output122_1968 ),
    .I5(N52),
    .O(TobeRounded[4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \MDExponent<5>1  (
    .I0(\inputOperand2/Q [28]),
    .I1(\inputOperand2/Q [26]),
    .I2(\inputOperand2/Q [27]),
    .I3(\inputOperand2/Q [23]),
    .I4(\inputOperand2/Q [24]),
    .I5(\inputOperand2/Q [25]),
    .O(MDExponent[5])
  );
  LUT5 #(
    .INIT ( 32'h78F0F0F0 ))
  \MDExponent<4>1  (
    .I0(\inputOperand2/Q [26]),
    .I1(\inputOperand2/Q [23]),
    .I2(\inputOperand2/Q [27]),
    .I3(\inputOperand2/Q [24]),
    .I4(\inputOperand2/Q [25]),
    .O(MDExponent[4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \MDExponent<3>1  (
    .I0(\inputOperand2/Q [26]),
    .I1(\inputOperand2/Q [23]),
    .I2(\inputOperand2/Q [24]),
    .I3(\inputOperand2/Q [25]),
    .O(MDExponent[3])
  );
  LUT6 #(
    .INIT ( 64'h8888888800080000 ))
  \Stage3/ZerosCounter/Mmux_Shifts51  (
    .I0(\Stage3/ZerosCounter/Mmux_Shifts312 ),
    .I1(\Stage3/ZerosCounter/Mmux_Shifts52 ),
    .I2(AdderResult[11]),
    .I3(AdderResult[12]),
    .I4(\Stage3/ZerosCounter/Mmux__n0087_B12 ),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .O(NormShifts[4])
  );
  LUT6 #(
    .INIT ( 64'h0000000000CACACA ))
  \Stage1/ExponDifference/ControlnDifferMux/Mmux_Output11  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<0> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<0> ),
    .I2(SignOfDifference),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer [3]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(NDifference[0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000CACACA ))
  \Stage1/ExponDifference/ControlDifferMux/Mmux_Output31  (
    .I0(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<2> ),
    .I1(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<2> ),
    .I2(SignOfDifference),
    .I3(\Stage1/ExponDifference/preDiffer [4]),
    .I4(\Stage1/ExponDifference/preDiffer [3]),
    .I5(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(Difference[2])
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \Stage1/ExponDifference/ControlDifferMux/Mmux_Output41  (
    .I0(SignOfDifference),
    .I1(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<3> ),
    .I2(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<3> ),
    .I3(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(Difference[3])
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \Stage1/ExponDifference/ControlDifferMux/Mmux_Output51  (
    .I0(SignOfDifference),
    .I1(\Stage1/ExponDifference/Exponent1[7]_Exponent2[7]_sub_4_OUT<4> ),
    .I2(\Stage1/ExponDifference/Exponent2[7]_Exponent1[7]_sub_2_OUT<4> ),
    .I3(\Stage1/ExponDifference/preDiffer[5]_preDiffer[7]_OR_37_o ),
    .O(Difference[4])
  );
  LUT6 #(
    .INIT ( 64'h00FF01FF00000100 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output292  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\DifferenceReg/Q [2]),
    .I3(\DifferenceReg/Q [4]),
    .I4(\DifferenceReg/Q [3]),
    .I5(\Stage2/AlignShifter/Stage5/Mmux_Output29 ),
    .O(\Stage2/preAligned [9])
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte3/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .I4(\MULFirstStage/Byte3Byte3/S23 ),
    .I5(\MULFirstStage/Byte3Byte3/S22 ),
    .O(\MULFirstStage/Byte3Byte3/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte2/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .I4(\MULFirstStage/Byte3Byte2/S23 ),
    .I5(\MULFirstStage/Byte3Byte2/S22 ),
    .O(\MULFirstStage/Byte3Byte2/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte1/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [20]),
    .I3(\inputOperand1/Q [19]),
    .I4(\MULFirstStage/Byte3Byte1/S23 ),
    .I5(\MULFirstStage/Byte3Byte1/S22 ),
    .O(\MULFirstStage/Byte3Byte1/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte3/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .I4(\MULFirstStage/Byte2Byte3/S23 ),
    .I5(\MULFirstStage/Byte2Byte3/S22 ),
    .O(\MULFirstStage/Byte2Byte3/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte2/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .I4(\MULFirstStage/Byte2Byte2/S23 ),
    .I5(\MULFirstStage/Byte2Byte2/S22 ),
    .O(\MULFirstStage/Byte2Byte2/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte1/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [12]),
    .I3(\inputOperand1/Q [11]),
    .I4(\MULFirstStage/Byte2Byte1/S23 ),
    .I5(\MULFirstStage/Byte2Byte1/S22 ),
    .O(\MULFirstStage/Byte2Byte1/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte3/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [16]),
    .I1(\inputOperand2/Q [17]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .I4(\MULFirstStage/Byte1Byte3/S23 ),
    .I5(\MULFirstStage/Byte1Byte3/S22 ),
    .O(\MULFirstStage/Byte1Byte3/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte2/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [8]),
    .I1(\inputOperand2/Q [9]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .I4(\MULFirstStage/Byte1Byte2/S23 ),
    .I5(\MULFirstStage/Byte1Byte2/S22 ),
    .O(\MULFirstStage/Byte1Byte2/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte1/FA33/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand2/Q [0]),
    .I1(\inputOperand2/Q [1]),
    .I2(\inputOperand1/Q [4]),
    .I3(\inputOperand1/Q [3]),
    .I4(\MULFirstStage/Byte1Byte1/S23 ),
    .I5(\MULFirstStage/Byte1Byte1/S22 ),
    .O(\MULFirstStage/Byte1Byte1/S33 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte3/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [21]),
    .I4(\MULFirstStage/Byte3Byte3/S13 ),
    .I5(\MULFirstStage/Byte3Byte3/S12 ),
    .O(\MULFirstStage/Byte3Byte3/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte2/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [21]),
    .I4(\MULFirstStage/Byte3Byte2/S12 ),
    .I5(\MULFirstStage/Byte3Byte2/S13 ),
    .O(\MULFirstStage/Byte3Byte2/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte3Byte1/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [21]),
    .I4(\MULFirstStage/Byte3Byte1/S12 ),
    .I5(\MULFirstStage/Byte3Byte1/S13 ),
    .O(\MULFirstStage/Byte3Byte1/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte3/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [13]),
    .I4(\MULFirstStage/Byte2Byte3/S13 ),
    .I5(\MULFirstStage/Byte2Byte3/S12 ),
    .O(\MULFirstStage/Byte2Byte3/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte2/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [13]),
    .I4(\MULFirstStage/Byte2Byte2/S12 ),
    .I5(\MULFirstStage/Byte2Byte2/S13 ),
    .O(\MULFirstStage/Byte2Byte2/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte2Byte1/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [14]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [13]),
    .I4(\MULFirstStage/Byte2Byte1/S12 ),
    .I5(\MULFirstStage/Byte2Byte1/S13 ),
    .O(\MULFirstStage/Byte2Byte1/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte3/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand2/Q [17]),
    .I3(\inputOperand1/Q [5]),
    .I4(\MULFirstStage/Byte1Byte3/S13 ),
    .I5(\MULFirstStage/Byte1Byte3/S12 ),
    .O(\MULFirstStage/Byte1Byte3/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte2/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand2/Q [9]),
    .I3(\inputOperand1/Q [5]),
    .I4(\MULFirstStage/Byte1Byte2/S12 ),
    .I5(\MULFirstStage/Byte1Byte2/S13 ),
    .O(\MULFirstStage/Byte1Byte2/S26 )
  );
  LUT6 #(
    .INIT ( 64'h80007FFF7FFF8000 ))
  \MULFirstStage/Byte1Byte1/FA26/Second/Mxor_Sum_xo<0>1  (
    .I0(\inputOperand1/Q [6]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand2/Q [1]),
    .I3(\inputOperand1/Q [5]),
    .I4(\MULFirstStage/Byte1Byte1/S12 ),
    .I5(\MULFirstStage/Byte1Byte1/S13 ),
    .O(\MULFirstStage/Byte1Byte1/S26 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \Stage2/InverterNormal/Mmux_OutData191  (
    .I0(\CompareReg/Q [1]),
    .I1(\EffectivOperationReg1/Q_0_246 ),
    .I2(\ZeroDifferenceReg/Q_0_245 ),
    .I3(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<26> ),
    .O(Adder2[26])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData181  (
    .I0(\Stage2/swapedOperand2 [22]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<25> ),
    .O(Adder2[25])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData171  (
    .I0(\Stage2/swapedOperand2 [21]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<24> ),
    .O(Adder2[24])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData161  (
    .I0(\Stage2/swapedOperand2 [20]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<23> ),
    .O(Adder2[23])
  );
  LUT5 #(
    .INIT ( 32'h7DDD2888 ))
  \Stage4/ExponentMux/Mmux_Output21  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [1]),
    .I2(\ResultExponentReg/Q [0]),
    .I3(\MULResultReg/Q [47]),
    .I4(\Stage4/ExponentAdderResult1 [1]),
    .O(ExponentAdderResult1[1])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData151  (
    .I0(\Stage2/swapedOperand2 [19]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<22> ),
    .O(Adder2[22])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData141  (
    .I0(\Stage2/swapedOperand2 [18]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<21> ),
    .O(Adder2[21])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData131  (
    .I0(\Stage2/swapedOperand2 [17]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<20> ),
    .O(Adder2[20])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData111  (
    .I0(\Stage2/swapedOperand2 [16]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<19> ),
    .O(Adder2[19])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData101  (
    .I0(\Stage2/swapedOperand2 [15]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<18> ),
    .O(Adder2[18])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData91  (
    .I0(\Stage2/swapedOperand2 [14]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<17> ),
    .O(Adder2[17])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAEA ))
  \Stage4/tobeRoundMux/Mmux_Output263  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output26 ),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output262_1970 ),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\AlgorthimSelReg3/Q_0_499 ),
    .I5(\NormShiftsReg/Q [2]),
    .O(\Stage4/tobeRoundMux/Mmux_Output263_2911 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \Stage4/tobeRoundMux/Mmux_Output183  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output182_1969 ),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\NormShiftsReg/Q [4]),
    .I4(\AlgorthimSelReg3/Q_0_499 ),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output183_2916 )
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData81  (
    .I0(\Stage2/swapedOperand2 [13]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<16> ),
    .O(Adder2[16])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData71  (
    .I0(\Stage2/swapedOperand2 [12]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<15> ),
    .O(Adder2[15])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData61  (
    .I0(\Stage2/swapedOperand2 [11]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<14> ),
    .O(Adder2[14])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData51  (
    .I0(\Stage2/swapedOperand2 [10]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<13> ),
    .O(Adder2[13])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData41  (
    .I0(\Stage2/swapedOperand2 [9]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<12> ),
    .O(Adder2[12])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData31  (
    .I0(\Stage2/swapedOperand2 [8]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<11> ),
    .O(Adder2[11])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData28  (
    .I0(\Stage2/swapedOperand2 [7]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<10> ),
    .O(Adder2[10])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData271  (
    .I0(\Stage2/swapedOperand2 [6]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<9> ),
    .O(Adder2[9])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData261  (
    .I0(\Stage2/swapedOperand2 [5]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<8> ),
    .O(Adder2[8])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData251  (
    .I0(\Stage2/swapedOperand2 [4]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<7> ),
    .O(Adder2[7])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData241  (
    .I0(\Stage2/swapedOperand2 [3]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<6> ),
    .O(Adder2[6])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData231  (
    .I0(\Stage2/swapedOperand2 [2]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<5> ),
    .O(Adder2[5])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData221  (
    .I0(\Stage2/swapedOperand2 [1]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<4> ),
    .O(Adder2[4])
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \Stage2/InverterNormal/Mmux_OutData211  (
    .I0(\Stage2/swapedOperand2 [0]),
    .I1(\CompareReg/Q [1]),
    .I2(\EffectivOperationReg1/Q_0_246 ),
    .I3(\ZeroDifferenceReg/Q_0_245 ),
    .I4(\Stage2/InverterNormal/InData[26]_unary_minus_2_OUT<3> ),
    .O(Adder2[3])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \Stage4/ExponentMux/Mmux_Output11  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [0]),
    .I2(\MULResultReg/Q [47]),
    .I3(\Stage4/ExponentAdderResult1 [0]),
    .O(ExponentAdderResult1[0])
  );
  LUT5 #(
    .INIT ( 32'h333B0008 ))
  \Stage4/tobeRoundMux/Mmux_Output3611  (
    .I0(\AdderResultReg/Q [0]),
    .I1(\NormShiftsReg/Q [3]),
    .I2(\NormShiftsReg/Q [0]),
    .I3(\NormShiftsReg/Q [1]),
    .I4(\Stage4/NormShifts<1>_mmx_out19 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output361 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAE ))
  \Stage4/tobeRoundMux/Mmux_Output293  (
    .I0(\Stage4/tobeRoundMux/Mmux_Output29 ),
    .I1(\Stage4/tobeRoundMux/Mmux_Output291_2905 ),
    .I2(\NormShiftsReg/Q [4]),
    .I3(\AlgorthimSelReg3/Q_0_499 ),
    .I4(\EffCarryReg1/Q_0_493 ),
    .I5(\NormShiftsReg/Q [3]),
    .O(TobeRounded[2])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \Stage4/tobeRoundMux/Mmux_Output142  (
    .I0(\Stage4/NormShifts<1>_mmx_out19 ),
    .I1(\NormShiftsReg/Q [2]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\NormShiftsReg/Q [4]),
    .I4(\AlgorthimSelReg3/Q_0_499 ),
    .I5(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/tobeRoundMux/Mmux_Output141_2918 )
  );
  LUT6 #(
    .INIT ( 64'hAA33AA03AA30AA00 ))
  \Stage4/tobeRoundMux/Mmux_Output36_SW1  (
    .I0(\AdderResultReg/Q [13]),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output361 ),
    .I5(\Stage4/tobeRoundMux/Mmux_Output362_1964 ),
    .O(N105)
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output36  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [33]),
    .I3(\MULResultReg/Q [32]),
    .I4(N105),
    .O(TobeRounded[9])
  );
  LUT6 #(
    .INIT ( 64'hBBBAABAA11100100 ))
  \Stage4/tobeRoundMux/Mmux_Output4_SW1  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [3]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output212_1967 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output211_1977 ),
    .I5(\AdderResultReg/Q [16]),
    .O(N107)
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output4  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [36]),
    .I3(\MULResultReg/Q [35]),
    .I4(N107),
    .O(TobeRounded[12])
  );
  LUT6 #(
    .INIT ( 64'hBBBAABAA11100100 ))
  \Stage4/tobeRoundMux/Mmux_Output2_SW1  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\NormShiftsReg/Q [2]),
    .I3(\Stage4/tobeRoundMux/Mmux_Output81_1973 ),
    .I4(\Stage4/tobeRoundMux/Mmux_Output22 ),
    .I5(\AdderResultReg/Q [14]),
    .O(N109)
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output2  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [34]),
    .I3(\MULResultReg/Q [33]),
    .I4(N109),
    .O(TobeRounded[10])
  );
  LUT6 #(
    .INIT ( 64'h88888888888888D8 ))
  \Stage4/tobeRoundMux/Mmux_Output1_SW1  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\AdderResultReg/Q [4]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output122_1968 ),
    .I3(\NormShiftsReg/Q [2]),
    .I4(\NormShiftsReg/Q [3]),
    .I5(\NormShiftsReg/Q [4]),
    .O(N111)
  );
  LUT5 #(
    .INIT ( 32'hF7D5A280 ))
  \Stage4/tobeRoundMux/Mmux_Output1  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\MULResultReg/Q [47]),
    .I2(\MULResultReg/Q [24]),
    .I3(\MULResultReg/Q [23]),
    .I4(N111),
    .O(TobeRounded[0])
  );
  LUT5 #(
    .INIT ( 32'h64082888 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\MULFirstStage/Byte2Byte2/C310 ),
    .I4(\inputOperand1/Q [14]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [14])
  );
  LUT5 #(
    .INIT ( 32'h64082888 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\MULFirstStage/Byte2Byte1/C310 ),
    .I4(\inputOperand1/Q [14]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [14])
  );
  LUT5 #(
    .INIT ( 32'h64082888 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [15]),
    .I2(\inputOperand2/Q [14]),
    .I3(\MULFirstStage/Byte1Byte2/C310 ),
    .I4(\inputOperand1/Q [6]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [14])
  );
  LUT5 #(
    .INIT ( 32'h64082888 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand2/Q [7]),
    .I2(\inputOperand2/Q [6]),
    .I3(\MULFirstStage/Byte1Byte1/C310 ),
    .I4(\inputOperand1/Q [6]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [17]),
    .I5(N83),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [17]),
    .I5(N85),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [18]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [19]),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [17]),
    .I5(N87),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [9]),
    .I5(N89),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [9]),
    .I5(N91),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [10]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [11]),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [9]),
    .I5(N93),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [16]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [17]),
    .I4(\inputOperand1/Q [1]),
    .I5(N95),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [8]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [9]),
    .I4(\inputOperand1/Q [1]),
    .I5(N97),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1D3F953FE2C06AC0 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<3>  (
    .I0(\inputOperand1/Q [2]),
    .I1(\inputOperand2/Q [0]),
    .I2(\inputOperand1/Q [3]),
    .I3(\inputOperand2/Q [1]),
    .I4(\inputOperand1/Q [1]),
    .I5(N99),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hF096 ))
  \Stage4/ExponentAdder1/Madd_n0006_lut<1>  (
    .I0(\NormShiftsReg/Q [0]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\ResultExponentReg/Q [1]),
    .I3(\EffCarryReg1/Q_0_493 ),
    .O(\Stage4/ExponentAdder1/Madd_n0006_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [16]),
    .I3(\inputOperand1/Q [17]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [8]),
    .I3(\inputOperand1/Q [17]),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [16]),
    .I2(\inputOperand2/Q [0]),
    .I3(\inputOperand1/Q [17]),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [18]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [16]),
    .I3(\inputOperand1/Q [9]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte2/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [8]),
    .I3(\inputOperand1/Q [9]),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte2/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte2Byte1/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [8]),
    .I2(\inputOperand2/Q [0]),
    .I3(\inputOperand1/Q [9]),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [10]),
    .O(\MULFirstStage/Byte2Byte1/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [18]),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [16]),
    .I3(\inputOperand1/Q [1]),
    .I4(\inputOperand2/Q [17]),
    .I5(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte2/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [10]),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [8]),
    .I3(\inputOperand1/Q [1]),
    .I4(\inputOperand2/Q [9]),
    .I5(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte2/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h8778787877888888 ))
  \MULFirstStage/Byte1Byte1/Madd_Result_lut<2>  (
    .I0(\inputOperand2/Q [2]),
    .I1(\inputOperand1/Q [0]),
    .I2(\inputOperand2/Q [0]),
    .I3(\inputOperand1/Q [1]),
    .I4(\inputOperand2/Q [1]),
    .I5(\inputOperand1/Q [2]),
    .O(\MULFirstStage/Byte1Byte1/Madd_Result_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \Stage4/ExponentMux/Mmux_Output7_SW0  (
    .I0(\ResultExponentReg/Q [4]),
    .I1(\ResultExponentReg/Q [2]),
    .I2(\ResultExponentReg/Q [3]),
    .I3(\ResultExponentReg/Q [0]),
    .I4(\MULResultReg/Q [47]),
    .I5(\ResultExponentReg/Q [1]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h566262622A2AAAAA ))
  \MULFirstStage/Byte3Byte2/Madd_Result_lut<14>  (
    .I0(\inputOperand2/Q [15]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [13]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [12]),
    .I5(\inputOperand2/Q [14]),
    .O(\MULFirstStage/Byte3Byte2/Madd_Result_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h566262622A2AAAAA ))
  \MULFirstStage/Byte3Byte1/Madd_Result_lut<14>  (
    .I0(\inputOperand2/Q [7]),
    .I1(\inputOperand1/Q [22]),
    .I2(\inputOperand2/Q [5]),
    .I3(\inputOperand1/Q [21]),
    .I4(\inputOperand2/Q [4]),
    .I5(\inputOperand2/Q [6]),
    .O(\MULFirstStage/Byte3Byte1/Madd_Result_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h462222222AAA2AAA ))
  \MULFirstStage/Byte2Byte3/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [15]),
    .I1(\inputOperand1/Q [14]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [13]),
    .I5(\inputOperand2/Q [22]),
    .O(\MULFirstStage/Byte2Byte3/Madd_Result_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h462222222AAA2AAA ))
  \MULFirstStage/Byte1Byte3/Madd_Result_lut<14>  (
    .I0(\inputOperand1/Q [7]),
    .I1(\inputOperand1/Q [6]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand2/Q [21]),
    .I4(\inputOperand1/Q [5]),
    .I5(\inputOperand2/Q [22]),
    .O(\MULFirstStage/Byte1Byte3/Madd_Result_lut [14])
  );
  LUT5 #(
    .INIT ( 32'h157755FF ))
  \MULFirstStage/Byte3Byte3/Madd_Result_lut<14>1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand1/Q [21]),
    .I3(\inputOperand2/Q [22]),
    .I4(\inputOperand2/Q [20]),
    .O(\MULFirstStage/Byte3Byte3/Madd_Result_lut [14])
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output191  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\DifferenceReg/Q [0]),
    .I4(\DifferenceReg/Q [2]),
    .O(\Stage2/preAligned [25])
  );
  LUT3 #(
    .INIT ( 8'h71 ))
  \Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<11>_inv1  (
    .I0(\inputOperand1/Q [22]),
    .I1(\Stage1/Cmp/Mcompar_Mantissa1[23]_Mantissa2[23]_LessThan_1_o_cy<10>_1523 ),
    .I2(\inputOperand2/Q [22]),
    .O(Compare[1])
  );
  LUT6 #(
    .INIT ( 64'hFBEEAEEE8A280888 ))
  \MULFirstStage/Byte3Byte3/FA411/Cout1  (
    .I0(\inputOperand1/Q [21]),
    .I1(\inputOperand2/Q [21]),
    .I2(\inputOperand2/Q [20]),
    .I3(\inputOperand1/Q [22]),
    .I4(\inputOperand2/Q [22]),
    .I5(\MULFirstStage/Byte3Byte3/C39 ),
    .O(\MULFirstStage/Byte3Byte3/C411 )
  );
  LUT6 #(
    .INIT ( 64'h7DDDDDDD28888888 ))
  \Stage4/ExponentMux/Mmux_Output32  (
    .I0(\AlgorthimSelReg3/Q_0_499 ),
    .I1(\ResultExponentReg/Q [2]),
    .I2(\ResultExponentReg/Q [0]),
    .I3(\MULResultReg/Q [47]),
    .I4(\ResultExponentReg/Q [1]),
    .I5(\Stage4/ExponentAdderResult1 [2]),
    .O(ExponentAdderResult1[2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \Stage3/ZerosCounter/Mmux_Shifts43_SW0  (
    .I0(AdderResult[4]),
    .I1(AdderResult[5]),
    .I2(AdderResult[6]),
    .I3(AdderResult[7]),
    .I4(AdderResult[8]),
    .I5(\Stage3/ZerosCounter/Mmux__n0087_rs_lut[4] ),
    .O(N101)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<26>  (
    .I0(\DifferenceReg/Q [4]),
    .I1(\DifferenceReg/Q [3]),
    .I2(\DifferenceReg/Q [1]),
    .I3(\DifferenceReg/Q [0]),
    .I4(\DifferenceReg/Q [2]),
    .O(\Stage2/InverterAlign/Msub_InData[26]_unary_minus_2_OUT_lut<26>_1668 )
  );
  FD   \SignOfDifference1Reg/Q_0_1  (
    .C(CLK_BUFGP_66),
    .D(SignOfDifference),
    .Q(\SignOfDifference1Reg/Q_0_1_3172 )
  );
  FD   \NDifferenceReg/Q_1_1  (
    .C(CLK_BUFGP_66),
    .D(NDifference[1]),
    .Q(\NDifferenceReg/Q_1_1_3173 )
  );
  FD   \SignOfDifference1Reg/Q_0_2  (
    .C(CLK_BUFGP_66),
    .D(SignOfDifference),
    .Q(\SignOfDifference1Reg/Q_0_2_3174 )
  );
  FD   \NDifferenceReg/Q_0_1  (
    .C(CLK_BUFGP_66),
    .D(NDifference[0]),
    .Q(\NDifferenceReg/Q_0_1_3175 )
  );
  FD   \inputOperand2/Q_16_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_16_IBUF_47),
    .Q(\inputOperand2/Q_16_1_3176 )
  );
  FD   \inputOperand2/Q_8_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_8_IBUF_55),
    .Q(\inputOperand2/Q_8_1_3177 )
  );
  FD   \inputOperand2/Q_0_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_0_IBUF_63),
    .Q(\inputOperand2/Q_0_1_3178 )
  );
  FD   \inputOperand2/Q_18_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_18_IBUF_45),
    .Q(\inputOperand2/Q_18_1_3179 )
  );
  FD   \inputOperand2/Q_11_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_11_IBUF_52),
    .Q(\inputOperand2/Q_11_1_3180 )
  );
  FD   \inputOperand2/Q_3_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_3_IBUF_60),
    .Q(\inputOperand2/Q_3_1_3181 )
  );
  FD   \inputOperand1/Q_22_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_22_IBUF_9),
    .Q(\inputOperand1/Q_22_1_3182 )
  );
  FD   \inputOperand1/Q_14_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_14_IBUF_17),
    .Q(\inputOperand1/Q_14_1_3183 )
  );
  FD   \inputOperand1/Q_6_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_6_IBUF_25),
    .Q(\inputOperand1/Q_6_1_3184 )
  );
  FD   \inputOperand2/Q_10_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_10_IBUF_53),
    .Q(\inputOperand2/Q_10_1_3185 )
  );
  FD   \inputOperand2/Q_2_1  (
    .C(CLK_BUFGP_66),
    .D(Operand2_2_IBUF_61),
    .Q(\inputOperand2/Q_2_1_3186 )
  );
  FD   \inputOperand1/Q_15_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_15_IBUF_16),
    .Q(\inputOperand1/Q_15_1_3187 )
  );
  FD   \inputOperand1/Q_7_1  (
    .C(CLK_BUFGP_66),
    .D(Operand1_7_IBUF_24),
    .Q(\inputOperand1/Q_7_1_3188 )
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_66)
  );
  INV   \Stage5/Rounding/Madd_n0006_lut<0>_INV_0  (
    .I(\TobeRoundedReg/Q [0]),
    .O(\Stage5/Rounding/Madd_n0006_lut [0])
  );
  INV   \Stage1/BaseAdder/Madd_n0006_xor<0>11_INV_0  (
    .I(\inputOperand2/Q [23]),
    .O(MDExponent[0])
  );
  MUXF7   \Stage4/tobeRoundMux/Mmux_Output2622  (
    .I0(N113),
    .I1(N114),
    .S(\NormShiftsReg/Q [0]),
    .O(\Stage4/tobeRoundMux/Mmux_Output262_1970 )
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \Stage4/tobeRoundMux/Mmux_Output2622_F  (
    .I0(\NormShiftsReg/Q [4]),
    .I1(\NormShiftsReg/Q [1]),
    .I2(\AdderResultReg/Q [15]),
    .I3(\AdderResultReg/Q [17]),
    .I4(\AdderResultReg/Q [1]),
    .O(N113)
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \Stage4/tobeRoundMux/Mmux_Output2622_G  (
    .I0(\NormShiftsReg/Q [1]),
    .I1(\NormShiftsReg/Q [4]),
    .I2(\AdderResultReg/Q [0]),
    .I3(\AdderResultReg/Q [16]),
    .I4(\AdderResultReg/Q [14]),
    .O(N114)
  );
  MUXF7   \Stage4/tobeRoundMux/Mmux_Output38  (
    .I0(N115),
    .I1(N116),
    .S(\AlgorthimSelReg3/Q_0_499 ),
    .O(TobeRounded[11])
  );
  LUT4 #(
    .INIT ( 16'h88D8 ))
  \Stage4/tobeRoundMux/Mmux_Output38_F  (
    .I0(\EffCarryReg1/Q_0_493 ),
    .I1(\AdderResultReg/Q [15]),
    .I2(\Stage4/tobeRoundMux/Mmux_Output31_2926 ),
    .I3(\NormShiftsReg/Q [4]),
    .O(N115)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Stage4/tobeRoundMux/Mmux_Output38_G  (
    .I0(\MULResultReg/Q [47]),
    .I1(\MULResultReg/Q [34]),
    .I2(\MULResultReg/Q [35]),
    .O(N116)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>211  (
    .I0(N117),
    .I1(N118),
    .S(\SignOfDifference1Reg/Q_0_1_3172 ),
    .O(\Stage2/CalcSticky/StickyBit<0>211_2866 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55555504 ))
  \Stage2/CalcSticky/StickyBit<0>211_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\Mantissa2Reg/Q [7]),
    .I2(\NDifferenceReg/Q_0_1_3175 ),
    .I3(\Mantissa2Reg/Q [6]),
    .I4(\Mantissa2Reg/Q [5]),
    .I5(\Mantissa2Reg/Q [4]),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55555504 ))
  \Stage2/CalcSticky/StickyBit<0>211_G  (
    .I0(\NDifferenceReg/Q_1_1_3173 ),
    .I1(\Mantissa1Reg/Q [7]),
    .I2(\NDifferenceReg/Q_0_1_3175 ),
    .I3(\Mantissa1Reg/Q [6]),
    .I4(\Mantissa1Reg/Q [5]),
    .I5(\Mantissa1Reg/Q [4]),
    .O(N118)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>131  (
    .I0(N119),
    .I1(N120),
    .S(\SignOfDifference1Reg/Q_0_2_3174 ),
    .O(\Stage2/CalcSticky/StickyBit<0>13_1667 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF54F554F4 ))
  \Stage2/CalcSticky/StickyBit<0>131_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\Mantissa2Reg/Q [2]),
    .I2(\Mantissa2Reg/Q [1]),
    .I3(\NDifferenceReg/Q_0_1_3175 ),
    .I4(\Mantissa2Reg/Q [3]),
    .I5(\Mantissa2Reg/Q [0]),
    .O(N119)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF54F554F4 ))
  \Stage2/CalcSticky/StickyBit<0>131_G  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\Mantissa1Reg/Q [2]),
    .I2(\Mantissa1Reg/Q [1]),
    .I3(\NDifferenceReg/Q_0_1_3175 ),
    .I4(\Mantissa1Reg/Q [3]),
    .I5(\Mantissa1Reg/Q [0]),
    .O(N120)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>212  (
    .I0(N121),
    .I1(N122),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/CalcSticky/StickyBit<0>212_2867 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFBBB3EEEEAA80 ))
  \Stage2/CalcSticky/StickyBit<0>212_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [1]),
    .I3(\Mantissa2Reg/Q [2]),
    .I4(\Mantissa2Reg/Q [3]),
    .I5(\Mantissa2Reg/Q [5]),
    .O(N121)
  );
  LUT6 #(
    .INIT ( 64'hFFFFBBB3EEEEAA80 ))
  \Stage2/CalcSticky/StickyBit<0>212_G  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [1]),
    .I3(\Mantissa1Reg/Q [2]),
    .I4(\Mantissa1Reg/Q [3]),
    .I5(\Mantissa1Reg/Q [5]),
    .O(N122)
  );
  MUXF7   \Stage2/NDifference<1>191  (
    .I0(N123),
    .I1(N124),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/NDifference<1>_mmx_out9 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/NDifference<1>191_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [7]),
    .I3(\Mantissa2Reg/Q [6]),
    .I4(\Mantissa2Reg/Q [8]),
    .I5(\Mantissa2Reg/Q [9]),
    .O(N123)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/NDifference<1>191_G  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [7]),
    .I3(\Mantissa1Reg/Q [6]),
    .I4(\Mantissa1Reg/Q [8]),
    .I5(\Mantissa1Reg/Q [9]),
    .O(N124)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>1  (
    .I0(N125),
    .I1(N126),
    .S(\SignOfDifference1Reg/Q_0_1_3172 ),
    .O(\Stage2/CalcSticky/StickyBit [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFF55F45 ))
  \Stage2/CalcSticky/StickyBit<0>1_F  (
    .I0(\NDifferenceReg/Q_1_1_3173 ),
    .I1(\Mantissa2Reg/Q [22]),
    .I2(\NDifferenceReg/Q_0_1_3175 ),
    .I3(\Mantissa2Reg/Q [21]),
    .I4(\Mantissa2Reg/Q [19]),
    .I5(\Mantissa2Reg/Q [20]),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFF55F45 ))
  \Stage2/CalcSticky/StickyBit<0>1_G  (
    .I0(\NDifferenceReg/Q_1_1_3173 ),
    .I1(\Mantissa1Reg/Q [22]),
    .I2(\NDifferenceReg/Q_0_1_3175 ),
    .I3(\Mantissa1Reg/Q [21]),
    .I4(\Mantissa1Reg/Q [19]),
    .I5(\Mantissa1Reg/Q [20]),
    .O(N126)
  );
  MUXF7   \Stage2/AlignShifter/Stage5/Mmux_Output132  (
    .I0(N127),
    .I1(N128),
    .S(\DifferenceReg/Q [4]),
    .O(\Stage2/AlignShifter/Stage5/Mmux_Output131_2882 )
  );
  LUT6 #(
    .INIT ( 64'hEAEEEAAA40444000 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output132_F  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [0]),
    .I3(\SignOfDifference1Reg/Q_0_244 ),
    .I4(\Mantissa2Reg/Q [0]),
    .I5(\Stage2/Difference<0>_mmx_out ),
    .O(N127)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/AlignShifter/Stage5/Mmux_Output132_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Stage2/SignOfDifference_mmx_out15 ),
    .I3(\Stage2/SignOfDifference_mmx_out17 ),
    .I4(\Stage2/SignOfDifference_mmx_out16 ),
    .I5(\Stage2/SignOfDifference_mmx_out14 ),
    .O(N128)
  );
  MUXF7   \Stage2/Difference<1>191  (
    .I0(N129),
    .I1(N130),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out7 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>191_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [5]),
    .I3(\Mantissa2Reg/Q [7]),
    .I4(\Mantissa2Reg/Q [6]),
    .I5(\Mantissa2Reg/Q [4]),
    .O(N129)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>191_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [5]),
    .I3(\Mantissa1Reg/Q [7]),
    .I4(\Mantissa1Reg/Q [6]),
    .I5(\Mantissa1Reg/Q [4]),
    .O(N130)
  );
  MUXF7   \Stage2/Difference<1>41  (
    .I0(N131),
    .I1(N132),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out12 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>41_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [6]),
    .I3(\Mantissa2Reg/Q [8]),
    .I4(\Mantissa2Reg/Q [7]),
    .I5(\Mantissa2Reg/Q [5]),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>41_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [6]),
    .I3(\Mantissa1Reg/Q [8]),
    .I4(\Mantissa1Reg/Q [7]),
    .I5(\Mantissa1Reg/Q [5]),
    .O(N132)
  );
  MUXF7   \Stage2/Difference<1>3  (
    .I0(N133),
    .I1(N134),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>3_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [4]),
    .I3(\Mantissa2Reg/Q [6]),
    .I4(\Mantissa2Reg/Q [5]),
    .I5(\Mantissa2Reg/Q [3]),
    .O(N133)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>3_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [4]),
    .I3(\Mantissa1Reg/Q [6]),
    .I4(\Mantissa1Reg/Q [5]),
    .I5(\Mantissa1Reg/Q [3]),
    .O(N134)
  );
  MUXF7   \Stage2/Difference<1>161  (
    .I0(N135),
    .I1(N136),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out4 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>161_F  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [4]),
    .I3(\Mantissa2Reg/Q [5]),
    .I4(\Mantissa2Reg/Q [3]),
    .I5(\Mantissa2Reg/Q [2]),
    .O(N135)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>161_G  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\DifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [4]),
    .I3(\Mantissa1Reg/Q [5]),
    .I4(\Mantissa1Reg/Q [3]),
    .I5(\Mantissa1Reg/Q [2]),
    .O(N136)
  );
  MUXF7   \Stage2/NDifference<1>51  (
    .I0(N137),
    .I1(N138),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/NDifference<1>_mmx_out13 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/NDifference<1>51_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [11]),
    .I3(\Mantissa2Reg/Q [10]),
    .I4(\Mantissa2Reg/Q [12]),
    .I5(\Mantissa2Reg/Q [13]),
    .O(N137)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/NDifference<1>51_G  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [11]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\Mantissa1Reg/Q [12]),
    .I5(\Mantissa1Reg/Q [13]),
    .O(N138)
  );
  MUXF7   \Stage2/Difference<1>51  (
    .I0(N139),
    .I1(N140),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out13 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>51_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [10]),
    .I3(\Mantissa2Reg/Q [12]),
    .I4(\Mantissa2Reg/Q [11]),
    .I5(\Mantissa2Reg/Q [9]),
    .O(N139)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>51_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [10]),
    .I3(\Mantissa1Reg/Q [12]),
    .I4(\Mantissa1Reg/Q [11]),
    .I5(\Mantissa1Reg/Q [9]),
    .O(N140)
  );
  MUXF7   \Stage2/Difference<1>111  (
    .I0(N141),
    .I1(N142),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out19 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>111_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [15]),
    .I3(\Mantissa2Reg/Q [17]),
    .I4(\Mantissa2Reg/Q [16]),
    .I5(\Mantissa2Reg/Q [14]),
    .O(N141)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>111_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [15]),
    .I3(\Mantissa1Reg/Q [17]),
    .I4(\Mantissa1Reg/Q [16]),
    .I5(\Mantissa1Reg/Q [14]),
    .O(N142)
  );
  MUXF7   \Stage2/Difference<1>21  (
    .I0(N143),
    .I1(N144),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out10 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>21_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [17]),
    .I3(\Mantissa2Reg/Q [19]),
    .I4(\Mantissa2Reg/Q [18]),
    .I5(\Mantissa2Reg/Q [16]),
    .O(N143)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>21_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [17]),
    .I3(\Mantissa1Reg/Q [19]),
    .I4(\Mantissa1Reg/Q [18]),
    .I5(\Mantissa1Reg/Q [16]),
    .O(N144)
  );
  MUXF7   \Stage2/Difference<1>131  (
    .I0(N145),
    .I1(N146),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out20 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>131_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [19]),
    .I3(\Mantissa2Reg/Q [21]),
    .I4(\Mantissa2Reg/Q [20]),
    .I5(\Mantissa2Reg/Q [18]),
    .O(N145)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>131_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [19]),
    .I3(\Mantissa1Reg/Q [21]),
    .I4(\Mantissa1Reg/Q [20]),
    .I5(\Mantissa1Reg/Q [18]),
    .O(N146)
  );
  MUXF7   \Stage2/Difference<1>71  (
    .I0(N147),
    .I1(N148),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out15 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>71_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [18]),
    .I3(\Mantissa2Reg/Q [20]),
    .I4(\Mantissa2Reg/Q [19]),
    .I5(\Mantissa2Reg/Q [17]),
    .O(N147)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>71_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [18]),
    .I3(\Mantissa1Reg/Q [20]),
    .I4(\Mantissa1Reg/Q [19]),
    .I5(\Mantissa1Reg/Q [17]),
    .O(N148)
  );
  MUXF7   \Stage2/Difference<1>91  (
    .I0(N149),
    .I1(N150),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out17 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>91_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [7]),
    .I3(\Mantissa2Reg/Q [9]),
    .I4(\Mantissa2Reg/Q [8]),
    .I5(\Mantissa2Reg/Q [6]),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>91_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [7]),
    .I3(\Mantissa1Reg/Q [9]),
    .I4(\Mantissa1Reg/Q [8]),
    .I5(\Mantissa1Reg/Q [6]),
    .O(N150)
  );
  MUXF7   \Stage2/Difference<1>101  (
    .I0(N151),
    .I1(N152),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out18 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>101_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [11]),
    .I3(\Mantissa2Reg/Q [13]),
    .I4(\Mantissa2Reg/Q [12]),
    .I5(\Mantissa2Reg/Q [10]),
    .O(N151)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>101_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [11]),
    .I3(\Mantissa1Reg/Q [13]),
    .I4(\Mantissa1Reg/Q [12]),
    .I5(\Mantissa1Reg/Q [10]),
    .O(N152)
  );
  MUXF7   \Stage2/Difference<1>151  (
    .I0(N153),
    .I1(N154),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out3 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>151_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [16]),
    .I3(\Mantissa2Reg/Q [18]),
    .I4(\Mantissa2Reg/Q [17]),
    .I5(\Mantissa2Reg/Q [15]),
    .O(N153)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>151_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [16]),
    .I3(\Mantissa1Reg/Q [18]),
    .I4(\Mantissa1Reg/Q [17]),
    .I5(\Mantissa1Reg/Q [15]),
    .O(N154)
  );
  MUXF7   \Stage2/Difference<1>201  (
    .I0(N155),
    .I1(N156),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out8 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>201_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [9]),
    .I3(\Mantissa2Reg/Q [11]),
    .I4(\Mantissa2Reg/Q [10]),
    .I5(\Mantissa2Reg/Q [8]),
    .O(N155)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>201_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [9]),
    .I3(\Mantissa1Reg/Q [11]),
    .I4(\Mantissa1Reg/Q [10]),
    .I5(\Mantissa1Reg/Q [8]),
    .O(N156)
  );
  MUXF7   \Stage2/Difference<1>121  (
    .I0(N157),
    .I1(N158),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out2 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>121_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [12]),
    .I3(\Mantissa2Reg/Q [14]),
    .I4(\Mantissa2Reg/Q [13]),
    .I5(\Mantissa2Reg/Q [11]),
    .O(N157)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>121_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [12]),
    .I3(\Mantissa1Reg/Q [14]),
    .I4(\Mantissa1Reg/Q [13]),
    .I5(\Mantissa1Reg/Q [11]),
    .O(N158)
  );
  MUXF7   \Stage2/Difference<1>211  (
    .I0(N159),
    .I1(N160),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out9 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>211_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [13]),
    .I3(\Mantissa2Reg/Q [15]),
    .I4(\Mantissa2Reg/Q [14]),
    .I5(\Mantissa2Reg/Q [12]),
    .O(N159)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>211_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [13]),
    .I3(\Mantissa1Reg/Q [15]),
    .I4(\Mantissa1Reg/Q [14]),
    .I5(\Mantissa1Reg/Q [12]),
    .O(N160)
  );
  MUXF7   \Stage2/Difference<1>171  (
    .I0(N161),
    .I1(N162),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out5 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>171_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [20]),
    .I3(\Mantissa2Reg/Q [22]),
    .I4(\Mantissa2Reg/Q [21]),
    .I5(\Mantissa2Reg/Q [19]),
    .O(N161)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>171_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [20]),
    .I3(\Mantissa1Reg/Q [22]),
    .I4(\Mantissa1Reg/Q [21]),
    .I5(\Mantissa1Reg/Q [19]),
    .O(N162)
  );
  MUXF7   \Stage2/Difference<1>12  (
    .I0(N163),
    .I1(N164),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out1 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>12_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [8]),
    .I3(\Mantissa2Reg/Q [10]),
    .I4(\Mantissa2Reg/Q [9]),
    .I5(\Mantissa2Reg/Q [7]),
    .O(N163)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>12_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [8]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\Mantissa1Reg/Q [9]),
    .I5(\Mantissa1Reg/Q [7]),
    .O(N164)
  );
  MUXF7   \Stage2/Difference<1>61  (
    .I0(N165),
    .I1(N166),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(\Stage2/Difference<1>_mmx_out14 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>61_F  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa2Reg/Q [14]),
    .I3(\Mantissa2Reg/Q [16]),
    .I4(\Mantissa2Reg/Q [15]),
    .I5(\Mantissa2Reg/Q [13]),
    .O(N165)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>61_G  (
    .I0(\DifferenceReg/Q [0]),
    .I1(\DifferenceReg/Q [1]),
    .I2(\Mantissa1Reg/Q [14]),
    .I3(\Mantissa1Reg/Q [16]),
    .I4(\Mantissa1Reg/Q [15]),
    .I5(\Mantissa1Reg/Q [13]),
    .O(N166)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>1212_SW1  (
    .I0(N167),
    .I1(N168),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'h00014445FFFFFFFF ))
  \Stage2/CalcSticky/StickyBit<0>1212_SW1_F  (
    .I0(\Mantissa2Reg/Q [12]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [13]),
    .I3(\Mantissa2Reg/Q [10]),
    .I4(\Mantissa2Reg/Q [9]),
    .I5(\NDifferenceReg/Q [1]),
    .O(N167)
  );
  LUT6 #(
    .INIT ( 64'h00014445FFFFFFFF ))
  \Stage2/CalcSticky/StickyBit<0>1212_SW1_G  (
    .I0(\Mantissa1Reg/Q [12]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [13]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\Mantissa1Reg/Q [9]),
    .I5(\NDifferenceReg/Q [1]),
    .O(N168)
  );
  MUXF7   \Stage2/Difference<1>31  (
    .I0(N169),
    .I1(N170),
    .S(\DifferenceReg/Q [0]),
    .O(\Stage2/Difference<1>_mmx_out11 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Stage2/Difference<1>31_F  (
    .I0(\DifferenceReg/Q [1]),
    .I1(\SignOfDifference1Reg/Q_0_2_3174 ),
    .I2(\Mantissa2Reg/Q [22]),
    .I3(\Mantissa1Reg/Q [22]),
    .I4(\Mantissa1Reg/Q [20]),
    .I5(\Mantissa2Reg/Q [20]),
    .O(N169)
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \Stage2/Difference<1>31_G  (
    .I0(\SignOfDifference1Reg/Q_0_2_3174 ),
    .I1(\Mantissa2Reg/Q [21]),
    .I2(\Mantissa1Reg/Q [21]),
    .I3(\DifferenceReg/Q [1]),
    .O(N170)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>8_SW0  (
    .I0(N171),
    .I1(N172),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA820 ))
  \Stage2/CalcSticky/StickyBit<0>8_SW0_F  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [6]),
    .I3(\Mantissa2Reg/Q [5]),
    .I4(\Stage2/CalcSticky/StickyBit<0>211_2866 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>13_1667 ),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA820 ))
  \Stage2/CalcSticky/StickyBit<0>8_SW0_G  (
    .I0(\NDifferenceReg/Q [1]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [6]),
    .I3(\Mantissa1Reg/Q [5]),
    .I4(\Stage2/CalcSticky/StickyBit<0>211_2866 ),
    .I5(\Stage2/CalcSticky/StickyBit<0>13_1667 ),
    .O(N172)
  );
  MUXF7   \Stage2/CalcSticky/StickyBit<0>1212_SW0  (
    .I0(N173),
    .I1(N174),
    .S(\SignOfDifference1Reg/Q_0_244 ),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'h00014445 ))
  \Stage2/CalcSticky/StickyBit<0>1212_SW0_F  (
    .I0(\Mantissa2Reg/Q [12]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa2Reg/Q [13]),
    .I3(\Mantissa2Reg/Q [10]),
    .I4(\Mantissa2Reg/Q [9]),
    .O(N173)
  );
  LUT5 #(
    .INIT ( 32'h00014445 ))
  \Stage2/CalcSticky/StickyBit<0>1212_SW0_G  (
    .I0(\Mantissa1Reg/Q [12]),
    .I1(\NDifferenceReg/Q [0]),
    .I2(\Mantissa1Reg/Q [13]),
    .I3(\Mantissa1Reg/Q [10]),
    .I4(\Mantissa1Reg/Q [9]),
    .O(N174)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ResultSignReg3/Mshreg_Q_0  (
    .A0(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .A1(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .A2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .A3(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .CE(\MULFirstStage/Byte3Byte3/X77 ),
    .CLK(CLK_BUFGP_66),
    .D(\ResultSignReg1/Q_0_500 ),
    .Q(\ResultSignReg3/Mshreg_Q_0_3251 ),
    .Q15(\NLW_ResultSignReg3/Mshreg_Q_0_Q15_UNCONNECTED )
  );
  FDE   \ResultSignReg3/Q_0  (
    .C(CLK_BUFGP_66),
    .CE(\MULFirstStage/Byte3Byte3/X77 ),
    .D(\ResultSignReg3/Mshreg_Q_0_3251 ),
    .Q(\ResultSignReg3/Q_0_527 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AlgorthimSelReg2/Mshreg_Q_0  (
    .A0(\MULFirstStage/Byte3Byte3/X77 ),
    .A1(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .A2(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .A3(\Stage2/InverterNormal/Msub_InData[26]_unary_minus_2_OUT_lut<25> ),
    .CE(\MULFirstStage/Byte3Byte3/X77 ),
    .CLK(CLK_BUFGP_66),
    .D(Operation_1_IBUF_64),
    .Q(\AlgorthimSelReg2/Mshreg_Q_0_3252 ),
    .Q15(\NLW_AlgorthimSelReg2/Mshreg_Q_0_Q15_UNCONNECTED )
  );
  FDE   \AlgorthimSelReg2/Q_0  (
    .C(CLK_BUFGP_66),
    .CE(\MULFirstStage/Byte3Byte3/X77 ),
    .D(\AlgorthimSelReg2/Mshreg_Q_0_3252 ),
    .Q(\AlgorthimSelReg2/Q_0_409 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

