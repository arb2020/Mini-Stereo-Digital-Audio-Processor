/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Mar  5 11:21:23 2026
/////////////////////////////////////////////////////////////


module MSDAP_ALU ( x, rj, rj_address, coeff, coeff_address, x_address, y, Sclk, 
        en_ALU, done );
  input [15:0] x;
  input [15:0] rj;
  output [3:0] rj_address;
  input [15:0] coeff;
  output [8:0] coeff_address;
  output [7:0] x_address;
  output [39:0] y;
  input Sclk, en_ALU;
  output done;
  wire   opcode, \AS/N206 , \AS/N205 , \AS/N204 , \AS/N203 , \AS/N202 ,
         \AS/N201 , \AS/N200 , \AS/N199 , \AS/N198 , \AS/N197 , \AS/N196 ,
         \AS/N195 , \AS/N194 , \AS/N193 , \AS/N192 , \AS/N191 , \AS/N190 ,
         \AS/N189 , \AS/N188 , \AS/N187 , \AS/N186 , \AS/N185 , \AS/N184 ,
         \DP_OP_50J1_123_6515/n68 , \DP_OP_50J1_123_6515/n67 ,
         \DP_OP_50J1_123_6515/n66 , \DP_OP_50J1_123_6515/n65 ,
         \DP_OP_50J1_123_6515/n64 , \DP_OP_50J1_123_6515/n63 ,
         \DP_OP_50J1_123_6515/n62 , \DP_OP_50J1_123_6515/n61 ,
         \DP_OP_50J1_123_6515/n60 , \DP_OP_50J1_123_6515/n59 ,
         \DP_OP_50J1_123_6515/n58 , \DP_OP_50J1_123_6515/n57 ,
         \DP_OP_50J1_123_6515/n56 , \DP_OP_50J1_123_6515/n55 ,
         \DP_OP_50J1_123_6515/n54 , \DP_OP_50J1_123_6515/n53 ,
         \DP_OP_50J1_123_6515/n24 , \DP_OP_50J1_123_6515/n23 ,
         \DP_OP_50J1_123_6515/n22 , \DP_OP_50J1_123_6515/n21 ,
         \DP_OP_50J1_123_6515/n20 , \DP_OP_50J1_123_6515/n19 ,
         \DP_OP_50J1_123_6515/n18 , \DP_OP_50J1_123_6515/n17 ,
         \DP_OP_50J1_123_6515/n16 , \DP_OP_50J1_123_6515/n15 ,
         \DP_OP_50J1_123_6515/n14 , \DP_OP_50J1_123_6515/n13 ,
         \DP_OP_50J1_123_6515/n12 , \DP_OP_50J1_123_6515/n11 ,
         \DP_OP_50J1_123_6515/n10 , \DP_OP_50J1_123_6515/n9 ,
         \DP_OP_50J1_123_6515/n8 , \DP_OP_50J1_123_6515/n7 ,
         \DP_OP_50J1_123_6515/n6 , \DP_OP_50J1_123_6515/n5 ,
         \DP_OP_50J1_123_6515/n4 , \DP_OP_50J1_123_6515/n3 ,
         \DP_OP_50J1_123_6515/n2 , shift_en, \shiftIO[39] , n492, n491, n490,
         n489, n488, n487, n486, n485, n484, n483, n482, n481, n480, n479,
         n478, n477, n476, n475, n474, n473, n472, n471, n470, n469, n468,
         n467, n466, n465, n464, n463, n462, n461, n460, n459, n458, n457,
         n456, n455, n454, n453, n452, n451, n450, n449, n448, n447, n446,
         n445, n444, n443, n442, n441, n440, n439, n438, n437, n436, n435,
         n434, n433, n432, n431, n430, n429, n428, n427, n426, n425, n424,
         n423, n422, n421, n420, n419, n418, n417, n416, n415, n414, n413,
         n412, n411, n410, n409, n408, n407, n406, n405, n404, n403, n402,
         n401, n400, n399, n398, n397, n396, n395, n394, n393, n392, n391,
         n390, n389, n388, n387, n386, n385, n384, n383, n382, n381, n380,
         n379, n378, n377, n376, n375, n374, n373, n372, n371, n370, n369,
         n368, n367, n366, n365, n364, n363, n362, n361, n360, n359, n358,
         n357, n356, n355, n354, n353, n352, n351, n350, n349, n348, n347,
         n346, n345, n344, n343, n342, n341, n340, n339, n338, n337, n336,
         n335, n334, n333, n332, n331, n330, n329, n328, n327, n326, n325,
         n324, n323, n322, n321, n320, n319, n318, n317, n316, n315, n314,
         n313, n312, n311, n310, n309, n308, n307, n306, n305, n304, n303,
         n302, n301, n300, n299, n298, n297, n296, n295, n294, n293, n292,
         n291, n290, n289, n288, n287, n286, n285, n284, n283, n282, n281,
         n280, n279, n278, n277, n276, n275, n274, n273, n272, n271, n270,
         n269, n268, n267, n266, n265, n264, n263, n262, n261, n260, n259,
         n258, n257, n256, n255, n254, n253, n252, n251, n250, n249, n248,
         n247, n246, n245, n244, n243, n242, n239, n238, n237, n236, n235,
         n234, n233, n232, n231, n230, n229, n228, n227, n226, n225, n224,
         n223, n222, n221, n220, n219, n218, n217, n216, n215, n214, n213,
         n212, n211, n210, n209, n208, n207, n206, n205, n204, n203, n202,
         n201, n200, n199, n197, n196, n195, n194, n193, n192, n191, n190,
         n189, n188, n187, n186, n185, n184, n183, n182, n181, n180, n179,
         n178, n177, n176, n175, n174, n173, n172, n171, n170, n169, n168,
         n167, n166, n165, n164, n163, n162, n161, n160, n159, n158, n157,
         n156, n155, n154, n153, n152, n151, n150, n149, n148, n147, n146,
         n145, n144, n143, n142, n141, n140, n139, n138, n137, n136, n135,
         n134, n133, n132, n131, n130, n129, n128, n127, n126, n125, n124,
         n123, n122, n121, load, feedbackLoad, clear, \AS/N183 , \AS/N182 ,
         \AS/N181 , \AS/N180 , \AS/N179 , \AS/N178 , \AS/N177 , \AS/N176 ,
         \AS/N175 , \AS/N174 , \AS/N173 , \AS/N172 , \AS/N171 , \AS/N170 ,
         \AS/N169 , \ALU_Con/xVal[7] , \ALU_Con/xVal[6] , \ALU_Con/xVal[5] ,
         \ALU_Con/xVal[4] , \ALU_Con/xVal[3] , \ALU_Con/xVal[2] ,
         \ALU_Con/xVal[1] , \ALU_Con/xVal[0] , \ALU_Con/xAddrNext[7] ,
         \ALU_Con/xAddrNext[6] , \ALU_Con/xAddrNext[5] ,
         \ALU_Con/xAddrNext[4] , \ALU_Con/xAddrNext[3] ,
         \ALU_Con/xAddrNext[2] , \ALU_Con/xAddrNext[1] ,
         \ALU_Con/xAddrNext[0] , \ALU_Con/shiftEnable , \ALU_Con/rjCounter[9] ,
         \ALU_Con/rjCounter[8] , \ALU_Con/rjCounter[7] ,
         \ALU_Con/rjCounter[6] , \ALU_Con/rjCounter[5] ,
         \ALU_Con/rjCounter[4] , \ALU_Con/rjCounter[3] ,
         \ALU_Con/rjCounter[2] , \ALU_Con/rjCounter[1] ,
         \ALU_Con/rjCounter[15] , \ALU_Con/rjCounter[14] ,
         \ALU_Con/rjCounter[13] , \ALU_Con/rjCounter[12] ,
         \ALU_Con/rjCounter[11] , \ALU_Con/rjCounter[10] ,
         \ALU_Con/rjCounter[0] , \ALU_Con/opcodeVal , \ALU_Con/loadEnable ,
         \ALU_Con/feedbackLoadVal , \ALU_Con/doneVal ,
         \ALU_Con/currentState[2] , \ALU_Con/currentState[1] ,
         \ALU_Con/currentState[0] , \ALU_Con/clearVal , n493, n494;
  wire   [39:0] extToAddSub;
  wire   [39:0] feedback;
  wire   [39:0] shiftIO;
  wire   [7:0] \ALU_Con/xAddr ;
  wire   [8:0] \ALU_Con/coeffCounter ;
  wire   [3:0] \ALU_Con/rjAddr ;
  assign extToAddSub[31] = x[15];
  assign extToAddSub[30] = x[14];
  assign extToAddSub[29] = x[13];
  assign extToAddSub[28] = x[12];
  assign extToAddSub[27] = x[11];
  assign extToAddSub[26] = x[10];
  assign extToAddSub[25] = x[9];
  assign extToAddSub[24] = x[8];
  assign extToAddSub[23] = x[7];
  assign extToAddSub[22] = x[6];
  assign extToAddSub[21] = x[5];
  assign extToAddSub[20] = x[4];
  assign extToAddSub[19] = x[3];
  assign extToAddSub[18] = x[2];
  assign extToAddSub[17] = x[1];
  assign extToAddSub[16] = x[0];
  assign y[38] = feedback[39];
  assign y[39] = feedback[39];
  assign y[37] = feedback[37];
  assign y[36] = feedback[36];
  assign y[35] = feedback[35];
  assign y[34] = feedback[34];
  assign y[33] = feedback[33];
  assign y[32] = feedback[32];
  assign y[31] = feedback[31];
  assign y[30] = feedback[30];
  assign y[29] = feedback[29];
  assign y[28] = feedback[28];
  assign y[27] = feedback[27];
  assign y[26] = feedback[26];
  assign y[25] = feedback[25];
  assign y[24] = feedback[24];
  assign y[23] = feedback[23];
  assign y[22] = feedback[22];
  assign y[21] = feedback[21];
  assign y[20] = feedback[20];
  assign y[19] = feedback[19];
  assign y[18] = feedback[18];
  assign y[17] = feedback[17];
  assign y[16] = feedback[16];
  assign y[15] = feedback[15];
  assign y[14] = feedback[14];
  assign y[13] = feedback[13];
  assign y[12] = feedback[12];
  assign y[11] = feedback[11];
  assign y[10] = feedback[10];
  assign y[9] = feedback[9];
  assign y[8] = feedback[8];
  assign y[7] = feedback[7];
  assign y[6] = feedback[6];
  assign y[5] = feedback[5];
  assign y[4] = feedback[4];
  assign y[3] = feedback[3];
  assign y[2] = feedback[2];
  assign y[1] = feedback[1];
  assign y[0] = feedback[0];
  assign x_address[7] = \ALU_Con/xAddr  [7];
  assign x_address[6] = \ALU_Con/xAddr  [6];
  assign x_address[5] = \ALU_Con/xAddr  [5];
  assign x_address[4] = \ALU_Con/xAddr  [4];
  assign x_address[3] = \ALU_Con/xAddr  [3];
  assign x_address[2] = \ALU_Con/xAddr  [2];
  assign x_address[1] = \ALU_Con/xAddr  [1];
  assign x_address[0] = \ALU_Con/xAddr  [0];
  assign coeff_address[8] = \ALU_Con/coeffCounter  [8];
  assign coeff_address[7] = \ALU_Con/coeffCounter  [7];
  assign coeff_address[6] = \ALU_Con/coeffCounter  [6];
  assign coeff_address[5] = \ALU_Con/coeffCounter  [5];
  assign coeff_address[4] = \ALU_Con/coeffCounter  [4];
  assign coeff_address[3] = \ALU_Con/coeffCounter  [3];
  assign coeff_address[2] = \ALU_Con/coeffCounter  [2];
  assign coeff_address[1] = \ALU_Con/coeffCounter  [1];
  assign coeff_address[0] = \ALU_Con/coeffCounter  [0];
  assign rj_address[3] = \ALU_Con/rjAddr  [3];
  assign rj_address[2] = \ALU_Con/rjAddr  [2];
  assign rj_address[1] = \ALU_Con/rjAddr  [1];
  assign rj_address[0] = \ALU_Con/rjAddr  [0];

  ADDFX1M \DP_OP_50J1_123_6515/U25  ( .A(\DP_OP_50J1_123_6515/n68 ), .B(
        shiftIO[16]), .CI(opcode), .CO(\DP_OP_50J1_123_6515/n24 ), .S(
        \AS/N184 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U24  ( .A(\DP_OP_50J1_123_6515/n67 ), .B(
        shiftIO[17]), .CI(\DP_OP_50J1_123_6515/n24 ), .CO(
        \DP_OP_50J1_123_6515/n23 ), .S(\AS/N185 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U23  ( .A(\DP_OP_50J1_123_6515/n66 ), .B(
        shiftIO[18]), .CI(\DP_OP_50J1_123_6515/n23 ), .CO(
        \DP_OP_50J1_123_6515/n22 ), .S(\AS/N186 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U22  ( .A(\DP_OP_50J1_123_6515/n65 ), .B(
        shiftIO[19]), .CI(\DP_OP_50J1_123_6515/n22 ), .CO(
        \DP_OP_50J1_123_6515/n21 ), .S(\AS/N187 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U21  ( .A(\DP_OP_50J1_123_6515/n64 ), .B(
        shiftIO[20]), .CI(\DP_OP_50J1_123_6515/n21 ), .CO(
        \DP_OP_50J1_123_6515/n20 ), .S(\AS/N188 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U20  ( .A(\DP_OP_50J1_123_6515/n63 ), .B(
        shiftIO[21]), .CI(\DP_OP_50J1_123_6515/n20 ), .CO(
        \DP_OP_50J1_123_6515/n19 ), .S(\AS/N189 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U19  ( .A(\DP_OP_50J1_123_6515/n62 ), .B(
        shiftIO[22]), .CI(\DP_OP_50J1_123_6515/n19 ), .CO(
        \DP_OP_50J1_123_6515/n18 ), .S(\AS/N190 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U18  ( .A(\DP_OP_50J1_123_6515/n61 ), .B(
        shiftIO[23]), .CI(\DP_OP_50J1_123_6515/n18 ), .CO(
        \DP_OP_50J1_123_6515/n17 ), .S(\AS/N191 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U17  ( .A(\DP_OP_50J1_123_6515/n60 ), .B(
        shiftIO[24]), .CI(\DP_OP_50J1_123_6515/n17 ), .CO(
        \DP_OP_50J1_123_6515/n16 ), .S(\AS/N192 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U16  ( .A(\DP_OP_50J1_123_6515/n59 ), .B(
        shiftIO[25]), .CI(\DP_OP_50J1_123_6515/n16 ), .CO(
        \DP_OP_50J1_123_6515/n15 ), .S(\AS/N193 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U15  ( .A(\DP_OP_50J1_123_6515/n58 ), .B(
        shiftIO[26]), .CI(\DP_OP_50J1_123_6515/n15 ), .CO(
        \DP_OP_50J1_123_6515/n14 ), .S(\AS/N194 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U14  ( .A(\DP_OP_50J1_123_6515/n57 ), .B(
        shiftIO[27]), .CI(\DP_OP_50J1_123_6515/n14 ), .CO(
        \DP_OP_50J1_123_6515/n13 ), .S(\AS/N195 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U13  ( .A(\DP_OP_50J1_123_6515/n56 ), .B(
        shiftIO[28]), .CI(\DP_OP_50J1_123_6515/n13 ), .CO(
        \DP_OP_50J1_123_6515/n12 ), .S(\AS/N196 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U12  ( .A(\DP_OP_50J1_123_6515/n55 ), .B(
        shiftIO[29]), .CI(\DP_OP_50J1_123_6515/n12 ), .CO(
        \DP_OP_50J1_123_6515/n11 ), .S(\AS/N197 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U11  ( .A(\DP_OP_50J1_123_6515/n54 ), .B(
        shiftIO[30]), .CI(\DP_OP_50J1_123_6515/n11 ), .CO(
        \DP_OP_50J1_123_6515/n10 ), .S(\AS/N198 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U10  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[31]), .CI(\DP_OP_50J1_123_6515/n10 ), .CO(
        \DP_OP_50J1_123_6515/n9 ), .S(\AS/N199 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U9  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[32]), .CI(\DP_OP_50J1_123_6515/n9 ), .CO(
        \DP_OP_50J1_123_6515/n8 ), .S(\AS/N200 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U8  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[33]), .CI(\DP_OP_50J1_123_6515/n8 ), .CO(
        \DP_OP_50J1_123_6515/n7 ), .S(\AS/N201 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U7  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[34]), .CI(\DP_OP_50J1_123_6515/n7 ), .CO(
        \DP_OP_50J1_123_6515/n6 ), .S(\AS/N202 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U6  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[35]), .CI(\DP_OP_50J1_123_6515/n6 ), .CO(
        \DP_OP_50J1_123_6515/n5 ), .S(\AS/N203 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U5  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[36]), .CI(\DP_OP_50J1_123_6515/n5 ), .CO(
        \DP_OP_50J1_123_6515/n4 ), .S(\AS/N204 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U4  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[37]), .CI(\DP_OP_50J1_123_6515/n4 ), .CO(
        \DP_OP_50J1_123_6515/n3 ), .S(\AS/N205 ) );
  ADDFX1M \DP_OP_50J1_123_6515/U3  ( .A(\DP_OP_50J1_123_6515/n53 ), .B(
        shiftIO[38]), .CI(\DP_OP_50J1_123_6515/n3 ), .CO(
        \DP_OP_50J1_123_6515/n2 ), .S(\AS/N206 ) );
  OAI2BB2X8M U645 ( .B0(n491), .B1(n490), .A0N(\ALU_Con/rjCounter[15] ), .A1N(
        n489), .Y(n200) );
  OAI2BB2X8M U644 ( .B0(n488), .B1(n490), .A0N(\ALU_Con/rjCounter[14] ), .A1N(
        n489), .Y(n201) );
  OAI22X8M U643 ( .A0(n487), .A1(n486), .B0(n485), .B1(n490), .Y(n202) );
  OAI2BB2X8M U642 ( .B0(n484), .B1(n490), .A0N(\ALU_Con/rjCounter[12] ), .A1N(
        n489), .Y(n203) );
  OAI2BB2X8M U641 ( .B0(n483), .B1(n490), .A0N(\ALU_Con/rjCounter[11] ), .A1N(
        n489), .Y(n204) );
  OAI2BB2X8M U640 ( .B0(n482), .B1(n490), .A0N(\ALU_Con/rjCounter[10] ), .A1N(
        n489), .Y(n205) );
  OAI2BB2X8M U639 ( .B0(n481), .B1(n490), .A0N(\ALU_Con/rjCounter[9] ), .A1N(
        n489), .Y(n206) );
  OAI2BB2X8M U638 ( .B0(n480), .B1(n490), .A0N(\ALU_Con/rjCounter[8] ), .A1N(
        n489), .Y(n207) );
  OAI2BB2X8M U637 ( .B0(n479), .B1(n490), .A0N(\ALU_Con/rjCounter[7] ), .A1N(
        n489), .Y(n208) );
  OAI2BB2X8M U636 ( .B0(n478), .B1(n490), .A0N(\ALU_Con/rjCounter[6] ), .A1N(
        n489), .Y(n209) );
  OAI2BB2X8M U635 ( .B0(n477), .B1(n490), .A0N(\ALU_Con/rjCounter[5] ), .A1N(
        n489), .Y(n210) );
  OAI2BB2X8M U634 ( .B0(n476), .B1(n490), .A0N(\ALU_Con/rjCounter[4] ), .A1N(
        n489), .Y(n211) );
  OAI2BB2X8M U633 ( .B0(n475), .B1(n490), .A0N(\ALU_Con/rjCounter[3] ), .A1N(
        n489), .Y(n212) );
  OAI2BB2X8M U632 ( .B0(n474), .B1(n490), .A0N(\ALU_Con/rjCounter[2] ), .A1N(
        n489), .Y(n213) );
  OAI22X8M U631 ( .A0(n473), .A1(n486), .B0(n472), .B1(n490), .Y(n214) );
  AOI21X8M U630 ( .A0(n471), .A1(n470), .B0(n469), .Y(n216) );
  OA21X8M U629 ( .A0(\ALU_Con/xVal[4] ), .A1(n468), .B0(n470), .Y(n217) );
  AOI21X8M U628 ( .A0(n467), .A1(n466), .B0(n468), .Y(n218) );
  OAI32X4M U627 ( .A0(\ALU_Con/xVal[2] ), .A1(n465), .A2(n464), .B0(n463), 
        .B1(n462), .Y(n219) );
  AOI21X8M U626 ( .A0(n465), .A1(n464), .B0(n463), .Y(n220) );
  OA21X8M U625 ( .A0(\ALU_Con/xVal[0] ), .A1(\ALU_Con/doneVal ), .B0(n464), 
        .Y(n221) );
  OA21X8M U624 ( .A0(\ALU_Con/xVal[6] ), .A1(n469), .B0(n461), .Y(n222) );
  AOI22X4M U623 ( .A0(\ALU_Con/rjCounter[0] ), .A1(n486), .B0(n490), .B1(n460), 
        .Y(n223) );
  NAND2BX12M U622 ( .AN(n459), .B(n458), .Y(n490) );
  OAI22X8M U621 ( .A0(\ALU_Con/currentState[2] ), .A1(n457), .B0(n456), .B1(
        n455), .Y(n224) );
  OAI21X8M U620 ( .A0(\ALU_Con/currentState[2] ), .A1(n454), .B0(n457), .Y(
        n225) );
  AOI221X4M U619 ( .A0(n456), .A1(\ALU_Con/currentState[0] ), .B0(en_ALU), 
        .B1(n453), .C0(\ALU_Con/currentState[1] ), .Y(n454) );
  NOR2X12M U618 ( .A(n459), .B(n452), .Y(n456) );
  AOI222X4M U617 ( .A0(n451), .A1(n450), .B0(n451), .B1(n449), .C0(n450), .C1(
        n448), .Y(n226) );
  OAI32X4M U616 ( .A0(\ALU_Con/coeffCounter [7]), .A1(n455), .A2(n447), .B0(
        n449), .B1(n446), .Y(n227) );
  CLKINVX12M U615 ( .A(\ALU_Con/coeffCounter [7]), .Y(n446) );
  AOI21X8M U614 ( .A0(n447), .A1(\ALU_Con/loadEnable ), .B0(n489), .Y(n449) );
  CLKINVX12M U613 ( .A(n445), .Y(n447) );
  OAI32X4M U612 ( .A0(\ALU_Con/coeffCounter [6]), .A1(n444), .A2(n451), .B0(
        n443), .B1(n442), .Y(n228) );
  OA21X8M U611 ( .A0(n451), .A1(\ALU_Con/coeffCounter [5]), .B0(n441), .Y(n443) );
  OAI32X4M U610 ( .A0(\ALU_Con/coeffCounter [5]), .A1(n440), .A2(n451), .B0(
        n441), .B1(n439), .Y(n229) );
  CLKINVX12M U609 ( .A(\ALU_Con/coeffCounter [5]), .Y(n439) );
  AOI21X8M U608 ( .A0(n440), .A1(n458), .B0(n489), .Y(n441) );
  CLKINVX12M U607 ( .A(n438), .Y(n440) );
  OAI32X4M U606 ( .A0(\ALU_Con/coeffCounter [4]), .A1(n437), .A2(n451), .B0(
        n436), .B1(n435), .Y(n230) );
  OA21X8M U605 ( .A0(n451), .A1(\ALU_Con/coeffCounter [3]), .B0(n434), .Y(n436) );
  OAI32X4M U604 ( .A0(\ALU_Con/coeffCounter [3]), .A1(n433), .A2(n451), .B0(
        n434), .B1(n432), .Y(n231) );
  CLKINVX12M U603 ( .A(\ALU_Con/coeffCounter [3]), .Y(n432) );
  AOI21X8M U602 ( .A0(n433), .A1(n458), .B0(n489), .Y(n434) );
  CLKINVX12M U601 ( .A(n458), .Y(n451) );
  OAI22X8M U600 ( .A0(n431), .A1(n430), .B0(n429), .B1(n428), .Y(n233) );
  AOI22X4M U599 ( .A0(\ALU_Con/coeffCounter [0]), .A1(n486), .B0(n455), .B1(
        n429), .Y(n234) );
  CLKINVX12M U598 ( .A(n489), .Y(n486) );
  OAI32X4M U597 ( .A0(\ALU_Con/rjAddr [3]), .A1(n427), .A2(n426), .B0(n425), 
        .B1(n424), .Y(n235) );
  CLKINVX12M U596 ( .A(\ALU_Con/rjAddr [3]), .Y(n424) );
  AOI21X8M U595 ( .A0(\ALU_Con/loadEnable ), .A1(n427), .B0(n423), .Y(n425) );
  OAI32X4M U594 ( .A0(\ALU_Con/rjAddr [1]), .A1(n422), .A2(n421), .B0(n420), 
        .B1(n419), .Y(n237) );
  CLKINVX12M U593 ( .A(\ALU_Con/rjAddr [1]), .Y(n419) );
  OAI32X4M U592 ( .A0(n418), .A1(\ALU_Con/clearVal ), .A2(n422), .B0(
        \ALU_Con/rjAddr [0]), .B1(n421), .Y(n238) );
  OAI21X8M U591 ( .A0(n417), .A1(n457), .B0(n416), .Y(n239) );
  OAI211X8M U590 ( .A0(\ALU_Con/currentState[2] ), .A1(n452), .B0(
        \ALU_Con/currentState[0] ), .C0(n415), .Y(n416) );
  CLKINVX12M U589 ( .A(\ALU_Con/shiftEnable ), .Y(n457) );
  AO21X8M U588 ( .A0(\ALU_Con/xAddr [6]), .A1(n455), .B0(n414), .Y(
        \ALU_Con/xAddrNext[6] ) );
  AOI21X8M U587 ( .A0(n413), .A1(n412), .B0(n411), .Y(n414) );
  OAI21X8M U586 ( .A0(n413), .A1(n412), .B0(\ALU_Con/loadEnable ), .Y(n411) );
  OAI21BX8M U585 ( .A0(coeff[6]), .A1(n410), .B0N(n409), .Y(n412) );
  AO21X8M U584 ( .A0(\ALU_Con/xAddr [5]), .A1(n455), .B0(n408), .Y(
        \ALU_Con/xAddrNext[5] ) );
  AOI21X8M U583 ( .A0(n407), .A1(n406), .B0(n405), .Y(n408) );
  OAI21X8M U582 ( .A0(n407), .A1(n406), .B0(\ALU_Con/loadEnable ), .Y(n405) );
  NOR2BX12M U581 ( .AN(n404), .B(n403), .Y(n407) );
  AO21X8M U580 ( .A0(\ALU_Con/xAddr [4]), .A1(n455), .B0(n402), .Y(
        \ALU_Con/xAddrNext[4] ) );
  AOI21X8M U579 ( .A0(n401), .A1(n400), .B0(n399), .Y(n402) );
  OAI21X8M U578 ( .A0(n401), .A1(n400), .B0(\ALU_Con/loadEnable ), .Y(n399) );
  OAI21BX8M U577 ( .A0(coeff[4]), .A1(n398), .B0N(n397), .Y(n400) );
  AO21X8M U576 ( .A0(\ALU_Con/xAddr [3]), .A1(n455), .B0(n396), .Y(
        \ALU_Con/xAddrNext[3] ) );
  AOI21X8M U575 ( .A0(n395), .A1(n394), .B0(n393), .Y(n396) );
  OAI21X8M U574 ( .A0(n395), .A1(n394), .B0(\ALU_Con/loadEnable ), .Y(n393) );
  NOR2BX12M U573 ( .AN(n392), .B(n391), .Y(n395) );
  AO21X8M U572 ( .A0(\ALU_Con/xAddr [2]), .A1(n455), .B0(n390), .Y(
        \ALU_Con/xAddrNext[2] ) );
  AOI21X8M U571 ( .A0(n389), .A1(n388), .B0(n387), .Y(n390) );
  OAI21X8M U570 ( .A0(n389), .A1(n388), .B0(\ALU_Con/loadEnable ), .Y(n387) );
  OAI21BX8M U569 ( .A0(coeff[2]), .A1(n462), .B0N(n386), .Y(n388) );
  AO21X8M U568 ( .A0(\ALU_Con/xAddr [1]), .A1(n455), .B0(n385), .Y(
        \ALU_Con/xAddrNext[1] ) );
  AOI21X8M U567 ( .A0(n384), .A1(n383), .B0(n382), .Y(n385) );
  OAI21X8M U566 ( .A0(n384), .A1(n383), .B0(\ALU_Con/loadEnable ), .Y(n382) );
  NOR2BX12M U565 ( .AN(n381), .B(n380), .Y(n384) );
  AO21X8M U564 ( .A0(\ALU_Con/xAddr [0]), .A1(n455), .B0(n379), .Y(
        \ALU_Con/xAddrNext[0] ) );
  OAI32X4M U563 ( .A0(n455), .A1(coeff[0]), .A2(n378), .B0(n383), .B1(n455), 
        .Y(n379) );
  AND2X12M U562 ( .A(\ALU_Con/loadEnable ), .B(coeff[8]), .Y(
        \ALU_Con/opcodeVal ) );
  AOI2BB2X8M U561 ( .B0(\ALU_Con/loadEnable ), .B1(n377), .A0N(
        \ALU_Con/xAddr [7]), .A1N(\ALU_Con/loadEnable ), .Y(
        \ALU_Con/xAddrNext[7] ) );
  XOR3X4M U560 ( .A(\ALU_Con/xVal[7] ), .B(coeff[7]), .C(n376), .Y(n377) );
  OAI22X8M U559 ( .A0(coeff[6]), .A1(n410), .B0(n409), .B1(n413), .Y(n376) );
  AOI21X8M U558 ( .A0(n404), .A1(n406), .B0(n403), .Y(n413) );
  OAI22X8M U557 ( .A0(coeff[4]), .A1(n398), .B0(n397), .B1(n401), .Y(n406) );
  AOI21X8M U556 ( .A0(n392), .A1(n394), .B0(n391), .Y(n401) );
  NOR2X12M U555 ( .A(coeff[3]), .B(n467), .Y(n391) );
  OAI22X8M U554 ( .A0(coeff[2]), .A1(n462), .B0(n386), .B1(n389), .Y(n394) );
  AOI21X8M U553 ( .A0(n383), .A1(n381), .B0(n380), .Y(n389) );
  NOR2X12M U552 ( .A(coeff[1]), .B(n465), .Y(n380) );
  NAND2X8M U551 ( .A(coeff[1]), .B(n465), .Y(n381) );
  NAND2X8M U550 ( .A(coeff[0]), .B(n378), .Y(n383) );
  CLKINVX12M U549 ( .A(\ALU_Con/xVal[0] ), .Y(n378) );
  NOR2BX12M U548 ( .AN(coeff[2]), .B(\ALU_Con/xVal[2] ), .Y(n386) );
  CLKINVX12M U547 ( .A(\ALU_Con/xVal[2] ), .Y(n462) );
  NAND2X8M U546 ( .A(coeff[3]), .B(n467), .Y(n392) );
  NOR2BX12M U545 ( .AN(coeff[4]), .B(\ALU_Con/xVal[4] ), .Y(n397) );
  CLKINVX12M U544 ( .A(\ALU_Con/xVal[4] ), .Y(n398) );
  NAND2X8M U543 ( .A(coeff[5]), .B(n471), .Y(n404) );
  NOR2BX12M U542 ( .AN(coeff[6]), .B(\ALU_Con/xVal[6] ), .Y(n409) );
  CLKINVX12M U541 ( .A(\ALU_Con/xVal[6] ), .Y(n410) );
  AOI32X4M U540 ( .A0(n431), .A1(\ALU_Con/coeffCounter [2]), .A2(n428), .B0(
        n375), .B1(n374), .Y(n232) );
  CLKINVX12M U539 ( .A(\ALU_Con/coeffCounter [2]), .Y(n374) );
  NAND3X12M U538 ( .A(\ALU_Con/coeffCounter [1]), .B(\ALU_Con/coeffCounter [0]), .C(n458), .Y(n375) );
  CLKINVX12M U537 ( .A(\ALU_Con/coeffCounter [1]), .Y(n430) );
  AOI21X8M U536 ( .A0(n458), .A1(n429), .B0(n489), .Y(n431) );
  NOR2X12M U535 ( .A(\ALU_Con/clearVal ), .B(n458), .Y(n489) );
  CLKINVX12M U534 ( .A(\ALU_Con/coeffCounter [0]), .Y(n429) );
  NOR3X12M U533 ( .A(\ALU_Con/currentState[2] ), .B(n415), .C(n453), .Y(
        \ALU_Con/feedbackLoadVal ) );
  XOR2X8M U532 ( .A(opcode), .B(extToAddSub[30]), .Y(\DP_OP_50J1_123_6515/n54 ) );
  XOR2X8M U531 ( .A(opcode), .B(extToAddSub[29]), .Y(\DP_OP_50J1_123_6515/n55 ) );
  XOR2X8M U530 ( .A(opcode), .B(extToAddSub[28]), .Y(\DP_OP_50J1_123_6515/n56 ) );
  XOR2X8M U529 ( .A(opcode), .B(extToAddSub[27]), .Y(\DP_OP_50J1_123_6515/n57 ) );
  XOR2X8M U528 ( .A(opcode), .B(extToAddSub[26]), .Y(\DP_OP_50J1_123_6515/n58 ) );
  XOR2X8M U527 ( .A(opcode), .B(extToAddSub[25]), .Y(\DP_OP_50J1_123_6515/n59 ) );
  XOR2X8M U526 ( .A(opcode), .B(extToAddSub[24]), .Y(\DP_OP_50J1_123_6515/n60 ) );
  XOR2X8M U525 ( .A(opcode), .B(extToAddSub[23]), .Y(\DP_OP_50J1_123_6515/n61 ) );
  XOR2X8M U524 ( .A(opcode), .B(extToAddSub[22]), .Y(\DP_OP_50J1_123_6515/n62 ) );
  XOR2X8M U523 ( .A(opcode), .B(extToAddSub[21]), .Y(\DP_OP_50J1_123_6515/n63 ) );
  XOR2X8M U522 ( .A(opcode), .B(extToAddSub[20]), .Y(\DP_OP_50J1_123_6515/n64 ) );
  XOR2X8M U521 ( .A(opcode), .B(extToAddSub[19]), .Y(\DP_OP_50J1_123_6515/n65 ) );
  XOR2X8M U520 ( .A(opcode), .B(extToAddSub[18]), .Y(\DP_OP_50J1_123_6515/n66 ) );
  XOR2X8M U519 ( .A(opcode), .B(extToAddSub[17]), .Y(\DP_OP_50J1_123_6515/n67 ) );
  XOR2X8M U518 ( .A(opcode), .B(extToAddSub[16]), .Y(\DP_OP_50J1_123_6515/n68 ) );
  OAI2BB1X4M U517 ( .A0N(n494), .A1N(n372), .B0(n371), .Y(n159) );
  AOI21X8M U516 ( .A0(\shiftIO[39] ), .A1(n370), .B0(n369), .Y(n371) );
  XOR2X8M U515 ( .A(\DP_OP_50J1_123_6515/n2 ), .B(n368), .Y(n372) );
  XOR2X8M U514 ( .A(\DP_OP_50J1_123_6515/n53 ), .B(\shiftIO[39] ), .Y(n368) );
  OAI2BB1X4M U513 ( .A0N(n494), .A1N(\AS/N206 ), .B0(n367), .Y(n160) );
  AOI21X8M U512 ( .A0(n370), .A1(shiftIO[38]), .B0(n369), .Y(n367) );
  NOR2BX12M U511 ( .AN(n366), .B(n365), .Y(n369) );
  AOI2BB2X8M U510 ( .B0(n426), .B1(n427), .A0N(n427), .A1N(n423), .Y(n236) );
  OAI21X8M U509 ( .A0(\ALU_Con/rjAddr [1]), .A1(n455), .B0(n420), .Y(n423) );
  AOI21X8M U508 ( .A0(\ALU_Con/loadEnable ), .A1(n422), .B0(n364), .Y(n420) );
  NOR2X12M U507 ( .A(\ALU_Con/clearVal ), .B(n418), .Y(n364) );
  CLKINVX12M U506 ( .A(n421), .Y(n418) );
  CLKINVX12M U505 ( .A(\ALU_Con/rjAddr [2]), .Y(n427) );
  NAND2X8M U504 ( .A(\ALU_Con/rjAddr [1]), .B(n363), .Y(n426) );
  NOR2X12M U503 ( .A(n422), .B(n421), .Y(n363) );
  NAND2X8M U502 ( .A(n459), .B(n458), .Y(n421) );
  NOR2X12M U501 ( .A(n452), .B(n455), .Y(n458) );
  CLKINVX12M U500 ( .A(\ALU_Con/loadEnable ), .Y(n455) );
  NOR2X12M U499 ( .A(n448), .B(n450), .Y(n452) );
  CLKINVX12M U498 ( .A(\ALU_Con/coeffCounter [8]), .Y(n450) );
  NAND2X8M U497 ( .A(n445), .B(\ALU_Con/coeffCounter [7]), .Y(n448) );
  NOR2X12M U496 ( .A(n444), .B(n442), .Y(n445) );
  CLKINVX12M U495 ( .A(\ALU_Con/coeffCounter [6]), .Y(n442) );
  NAND2X8M U494 ( .A(n438), .B(\ALU_Con/coeffCounter [5]), .Y(n444) );
  CLKINVX12M U493 ( .A(\ALU_Con/coeffCounter [4]), .Y(n435) );
  NAND2BX12M U492 ( .AN(n433), .B(\ALU_Con/coeffCounter [3]), .Y(n437) );
  NAND3X12M U491 ( .A(\ALU_Con/coeffCounter [1]), .B(\ALU_Con/coeffCounter [0]), .C(\ALU_Con/coeffCounter [2]), .Y(n433) );
  AOI211X4M U490 ( .A0(rj[15]), .A1(n491), .B0(n362), .C0(n361), .Y(n459) );
  OAI21X8M U489 ( .A0(rj[15]), .A1(n491), .B0(n360), .Y(n361) );
  AOI221X4M U488 ( .A0(n485), .A1(rj[13]), .B0(n488), .B1(rj[14]), .C0(n359), 
        .Y(n360) );
  OAI22X8M U487 ( .A0(rj[14]), .A1(n488), .B0(rj[13]), .B1(n485), .Y(n359) );
  OAI21X8M U486 ( .A0(n358), .A1(\ALU_Con/rjCounter[14] ), .B0(n357), .Y(n488)
         );
  AO21X8M U485 ( .A0(n356), .A1(n487), .B0(n358), .Y(n485) );
  OAI21X8M U484 ( .A0(rj[9]), .A1(n481), .B0(n355), .Y(n362) );
  AOI211X4M U483 ( .A0(rj[9]), .A1(n481), .B0(n354), .C0(n353), .Y(n355) );
  NAND4X12M U482 ( .A(n352), .B(n351), .C(n350), .D(n349), .Y(n353) );
  AOI221X4M U481 ( .A0(n480), .A1(rj[8]), .B0(n479), .B1(rj[7]), .C0(n348), 
        .Y(n349) );
  OAI22X8M U480 ( .A0(rj[7]), .A1(n479), .B0(rj[8]), .B1(n480), .Y(n348) );
  OAI21X8M U479 ( .A0(n347), .A1(\ALU_Con/rjCounter[7] ), .B0(n346), .Y(n479)
         );
  OAI21X8M U478 ( .A0(n345), .A1(\ALU_Con/rjCounter[8] ), .B0(n344), .Y(n480)
         );
  AOI21X8M U477 ( .A0(rj[4]), .A1(n476), .B0(n343), .Y(n350) );
  OAI21X8M U476 ( .A0(rj[4]), .A1(n476), .B0(n342), .Y(n343) );
  AOI221X4M U475 ( .A0(n477), .A1(rj[5]), .B0(n478), .B1(rj[6]), .C0(n341), 
        .Y(n342) );
  OAI22X8M U474 ( .A0(rj[6]), .A1(n478), .B0(rj[5]), .B1(n477), .Y(n341) );
  OAI21X8M U473 ( .A0(n340), .A1(\ALU_Con/rjCounter[6] ), .B0(n339), .Y(n478)
         );
  OAI21X8M U472 ( .A0(n338), .A1(\ALU_Con/rjCounter[5] ), .B0(n337), .Y(n477)
         );
  OAI21X8M U471 ( .A0(n336), .A1(\ALU_Con/rjCounter[4] ), .B0(n335), .Y(n476)
         );
  AOI221X4M U470 ( .A0(n472), .A1(rj[1]), .B0(\ALU_Con/rjCounter[0] ), .B1(
        rj[0]), .C0(n334), .Y(n351) );
  OAI22X8M U469 ( .A0(rj[1]), .A1(n472), .B0(\ALU_Con/rjCounter[0] ), .B1(
        rj[0]), .Y(n334) );
  AO21X8M U468 ( .A0(n473), .A1(n460), .B0(n333), .Y(n472) );
  AOI221X4M U467 ( .A0(n474), .A1(rj[2]), .B0(n475), .B1(rj[3]), .C0(n332), 
        .Y(n352) );
  OAI22X8M U466 ( .A0(rj[3]), .A1(n475), .B0(rj[2]), .B1(n474), .Y(n332) );
  OAI21X8M U465 ( .A0(n331), .A1(\ALU_Con/rjCounter[3] ), .B0(n330), .Y(n475)
         );
  OAI21X8M U464 ( .A0(n333), .A1(\ALU_Con/rjCounter[2] ), .B0(n329), .Y(n474)
         );
  NOR2X12M U463 ( .A(n473), .B(n460), .Y(n333) );
  CLKINVX12M U462 ( .A(\ALU_Con/rjCounter[0] ), .Y(n460) );
  CLKINVX12M U461 ( .A(\ALU_Con/rjCounter[1] ), .Y(n473) );
  OAI211X8M U460 ( .A0(n482), .A1(rj[10]), .B0(n328), .C0(n327), .Y(n354) );
  AOI221X4M U459 ( .A0(n483), .A1(rj[11]), .B0(n484), .B1(rj[12]), .C0(n326), 
        .Y(n327) );
  OAI22X8M U458 ( .A0(rj[12]), .A1(n484), .B0(rj[11]), .B1(n483), .Y(n326) );
  OAI21X8M U457 ( .A0(n325), .A1(\ALU_Con/rjCounter[12] ), .B0(n356), .Y(n484)
         );
  OAI21X8M U456 ( .A0(n324), .A1(\ALU_Con/rjCounter[11] ), .B0(n323), .Y(n483)
         );
  NAND2X8M U455 ( .A(n482), .B(rj[10]), .Y(n328) );
  OAI21X8M U454 ( .A0(n322), .A1(\ALU_Con/rjCounter[10] ), .B0(n321), .Y(n482)
         );
  OAI21X8M U453 ( .A0(n320), .A1(\ALU_Con/rjCounter[9] ), .B0(n319), .Y(n481)
         );
  XOR2X8M U452 ( .A(\ALU_Con/rjCounter[15] ), .B(n357), .Y(n491) );
  NAND2X8M U451 ( .A(n358), .B(\ALU_Con/rjCounter[14] ), .Y(n357) );
  NOR2X12M U450 ( .A(n487), .B(n356), .Y(n358) );
  NAND2X8M U449 ( .A(n325), .B(\ALU_Con/rjCounter[12] ), .Y(n356) );
  CLKINVX12M U448 ( .A(n323), .Y(n325) );
  NAND2X8M U447 ( .A(\ALU_Con/rjCounter[11] ), .B(n324), .Y(n323) );
  CLKINVX12M U446 ( .A(n321), .Y(n324) );
  NAND2X8M U445 ( .A(n322), .B(\ALU_Con/rjCounter[10] ), .Y(n321) );
  CLKINVX12M U444 ( .A(n319), .Y(n322) );
  NAND2X8M U443 ( .A(n320), .B(\ALU_Con/rjCounter[9] ), .Y(n319) );
  CLKINVX12M U442 ( .A(n344), .Y(n320) );
  NAND2X8M U441 ( .A(\ALU_Con/rjCounter[8] ), .B(n345), .Y(n344) );
  CLKINVX12M U440 ( .A(n346), .Y(n345) );
  CLKINVX12M U439 ( .A(n339), .Y(n347) );
  NAND2X8M U438 ( .A(\ALU_Con/rjCounter[6] ), .B(n340), .Y(n339) );
  CLKINVX12M U437 ( .A(n337), .Y(n340) );
  NAND2X8M U436 ( .A(n338), .B(\ALU_Con/rjCounter[5] ), .Y(n337) );
  CLKINVX12M U435 ( .A(n335), .Y(n338) );
  NAND2X8M U434 ( .A(\ALU_Con/rjCounter[4] ), .B(n336), .Y(n335) );
  CLKINVX12M U433 ( .A(n330), .Y(n336) );
  NAND2X8M U432 ( .A(n331), .B(\ALU_Con/rjCounter[3] ), .Y(n330) );
  CLKINVX12M U431 ( .A(n329), .Y(n331) );
  NAND3X12M U430 ( .A(\ALU_Con/rjCounter[1] ), .B(\ALU_Con/rjCounter[0] ), .C(
        \ALU_Con/rjCounter[2] ), .Y(n329) );
  CLKINVX12M U429 ( .A(\ALU_Con/rjCounter[13] ), .Y(n487) );
  CLKINVX12M U428 ( .A(\ALU_Con/rjAddr [0]), .Y(n422) );
  NOR2X12M U427 ( .A(\ALU_Con/currentState[0] ), .B(n415), .Y(
        \ALU_Con/shiftEnable ) );
  CLKINVX12M U426 ( .A(\ALU_Con/currentState[1] ), .Y(n415) );
  CLKINVX12M U425 ( .A(n318), .Y(n181) );
  AOI222X4M U424 ( .A0(n366), .A1(feedback[17]), .B0(n370), .B1(shiftIO[17]), 
        .C0(n494), .C1(\AS/N185 ), .Y(n318) );
  CLKINVX12M U423 ( .A(n317), .Y(n182) );
  AOI222X4M U422 ( .A0(n366), .A1(feedback[16]), .B0(n370), .B1(shiftIO[16]), 
        .C0(n494), .C1(\AS/N184 ), .Y(n317) );
  CLKINVX12M U421 ( .A(n316), .Y(n187) );
  AOI222X4M U420 ( .A0(n366), .A1(feedback[11]), .B0(n370), .B1(\AS/N179 ), 
        .C0(n494), .C1(\AS/N179 ), .Y(n316) );
  CLKINVX12M U419 ( .A(n315), .Y(n188) );
  AOI222X4M U418 ( .A0(n366), .A1(feedback[10]), .B0(n370), .B1(\AS/N178 ), 
        .C0(n494), .C1(\AS/N178 ), .Y(n315) );
  CLKINVX12M U417 ( .A(n314), .Y(n193) );
  AOI222X4M U416 ( .A0(n366), .A1(feedback[5]), .B0(n370), .B1(\AS/N173 ), 
        .C0(n494), .C1(\AS/N173 ), .Y(n314) );
  CLKINVX12M U415 ( .A(n313), .Y(n194) );
  AOI222X4M U414 ( .A0(n366), .A1(feedback[4]), .B0(n370), .B1(\AS/N172 ), 
        .C0(n494), .C1(\AS/N172 ), .Y(n313) );
  CLKINVX12M U413 ( .A(n312), .Y(n186) );
  AOI222X4M U412 ( .A0(n366), .A1(feedback[12]), .B0(n370), .B1(\AS/N180 ), 
        .C0(n494), .C1(\AS/N180 ), .Y(n312) );
  CLKINVX12M U411 ( .A(n311), .Y(n196) );
  AOI222X4M U410 ( .A0(n366), .A1(feedback[2]), .B0(n370), .B1(\AS/N170 ), 
        .C0(n494), .C1(\AS/N170 ), .Y(n311) );
  CLKINVX12M U409 ( .A(n310), .Y(n197) );
  AOI222X4M U408 ( .A0(n366), .A1(feedback[1]), .B0(n370), .B1(\AS/N169 ), 
        .C0(n494), .C1(\AS/N169 ), .Y(n310) );
  CLKINVX12M U407 ( .A(n309), .Y(n195) );
  AOI222X4M U406 ( .A0(n366), .A1(feedback[3]), .B0(n370), .B1(\AS/N171 ), 
        .C0(n494), .C1(\AS/N171 ), .Y(n309) );
  CLKINVX12M U405 ( .A(n308), .Y(n191) );
  AOI222X4M U404 ( .A0(n366), .A1(feedback[7]), .B0(n370), .B1(\AS/N175 ), 
        .C0(n494), .C1(\AS/N175 ), .Y(n308) );
  CLKINVX12M U403 ( .A(n307), .Y(n192) );
  AOI222X4M U402 ( .A0(n366), .A1(feedback[6]), .B0(n370), .B1(\AS/N174 ), 
        .C0(n494), .C1(\AS/N174 ), .Y(n307) );
  CLKINVX12M U401 ( .A(n306), .Y(n183) );
  AOI222X4M U400 ( .A0(n366), .A1(feedback[15]), .B0(n370), .B1(\AS/N183 ), 
        .C0(n494), .C1(\AS/N183 ), .Y(n306) );
  CLKINVX12M U399 ( .A(n305), .Y(n184) );
  AOI222X4M U398 ( .A0(n366), .A1(feedback[14]), .B0(n370), .B1(\AS/N182 ), 
        .C0(n494), .C1(\AS/N182 ), .Y(n305) );
  AOI222X4M U397 ( .A0(n366), .A1(feedback[13]), .B0(n370), .B1(\AS/N181 ), 
        .C0(n494), .C1(\AS/N181 ), .Y(n304) );
  CLKINVX12M U396 ( .A(n303), .Y(n189) );
  AOI222X4M U395 ( .A0(n366), .A1(feedback[9]), .B0(n370), .B1(\AS/N177 ), 
        .C0(n494), .C1(\AS/N177 ), .Y(n303) );
  CLKINVX12M U394 ( .A(n302), .Y(n190) );
  AOI222X4M U393 ( .A0(n366), .A1(feedback[8]), .B0(n370), .B1(\AS/N176 ), 
        .C0(n494), .C1(\AS/N176 ), .Y(n302) );
  CLKINVX12M U392 ( .A(n301), .Y(n161) );
  AOI222X4M U391 ( .A0(n366), .A1(feedback[37]), .B0(n370), .B1(shiftIO[37]), 
        .C0(n494), .C1(\AS/N205 ), .Y(n301) );
  CLKINVX12M U390 ( .A(n300), .Y(n162) );
  AOI222X4M U389 ( .A0(n366), .A1(feedback[36]), .B0(n370), .B1(shiftIO[36]), 
        .C0(n494), .C1(\AS/N204 ), .Y(n300) );
  CLKINVX12M U388 ( .A(n299), .Y(n163) );
  AOI222X4M U387 ( .A0(n366), .A1(feedback[35]), .B0(n370), .B1(shiftIO[35]), 
        .C0(n494), .C1(\AS/N203 ), .Y(n299) );
  CLKINVX12M U386 ( .A(n298), .Y(n164) );
  AOI222X4M U385 ( .A0(n366), .A1(feedback[34]), .B0(n370), .B1(shiftIO[34]), 
        .C0(n494), .C1(\AS/N202 ), .Y(n298) );
  CLKINVX12M U384 ( .A(n297), .Y(n165) );
  AOI222X4M U383 ( .A0(n366), .A1(feedback[33]), .B0(n370), .B1(shiftIO[33]), 
        .C0(n494), .C1(\AS/N201 ), .Y(n297) );
  CLKINVX12M U382 ( .A(n296), .Y(n166) );
  AOI222X4M U381 ( .A0(n366), .A1(feedback[32]), .B0(n370), .B1(shiftIO[32]), 
        .C0(n494), .C1(\AS/N200 ), .Y(n296) );
  CLKINVX12M U380 ( .A(n295), .Y(n167) );
  AOI222X4M U379 ( .A0(n366), .A1(feedback[31]), .B0(n370), .B1(shiftIO[31]), 
        .C0(n494), .C1(\AS/N199 ), .Y(n295) );
  CLKINVX12M U378 ( .A(n294), .Y(n168) );
  AOI222X4M U377 ( .A0(n366), .A1(feedback[30]), .B0(n370), .B1(shiftIO[30]), 
        .C0(n494), .C1(\AS/N198 ), .Y(n294) );
  CLKINVX12M U376 ( .A(n293), .Y(n169) );
  AOI222X4M U375 ( .A0(n366), .A1(feedback[29]), .B0(n370), .B1(shiftIO[29]), 
        .C0(n494), .C1(\AS/N197 ), .Y(n293) );
  AOI222X4M U374 ( .A0(n366), .A1(feedback[28]), .B0(n370), .B1(shiftIO[28]), 
        .C0(n494), .C1(\AS/N196 ), .Y(n292) );
  CLKINVX12M U373 ( .A(n291), .Y(n171) );
  AOI222X4M U372 ( .A0(n366), .A1(feedback[27]), .B0(n370), .B1(shiftIO[27]), 
        .C0(n494), .C1(\AS/N195 ), .Y(n291) );
  CLKINVX12M U371 ( .A(n290), .Y(n172) );
  AOI222X4M U370 ( .A0(n366), .A1(feedback[26]), .B0(n370), .B1(shiftIO[26]), 
        .C0(n494), .C1(\AS/N194 ), .Y(n290) );
  CLKINVX12M U369 ( .A(n289), .Y(n173) );
  AOI222X4M U368 ( .A0(n366), .A1(feedback[25]), .B0(n370), .B1(shiftIO[25]), 
        .C0(n494), .C1(\AS/N193 ), .Y(n289) );
  CLKINVX12M U367 ( .A(n288), .Y(n174) );
  AOI222X4M U366 ( .A0(n366), .A1(feedback[24]), .B0(n370), .B1(shiftIO[24]), 
        .C0(n494), .C1(\AS/N192 ), .Y(n288) );
  CLKINVX12M U365 ( .A(n287), .Y(n175) );
  AOI222X4M U364 ( .A0(n366), .A1(feedback[23]), .B0(n370), .B1(shiftIO[23]), 
        .C0(n494), .C1(\AS/N191 ), .Y(n287) );
  NOR3X12M U363 ( .A(\ALU_Con/currentState[2] ), .B(\ALU_Con/currentState[1] ), 
        .C(n453), .Y(\ALU_Con/loadEnable ) );
  CLKINVX12M U362 ( .A(n286), .Y(n176) );
  AOI222X4M U361 ( .A0(n366), .A1(feedback[22]), .B0(n370), .B1(shiftIO[22]), 
        .C0(n494), .C1(\AS/N190 ), .Y(n286) );
  NOR3X12M U360 ( .A(\ALU_Con/currentState[1] ), .B(\ALU_Con/currentState[0] ), 
        .C(n417), .Y(\ALU_Con/clearVal ) );
  CLKINVX12M U359 ( .A(n285), .Y(n177) );
  AOI222X4M U358 ( .A0(n366), .A1(feedback[21]), .B0(n370), .B1(shiftIO[21]), 
        .C0(n494), .C1(\AS/N189 ), .Y(n285) );
  CLKINVX12M U357 ( .A(n284), .Y(n178) );
  AOI222X4M U356 ( .A0(n366), .A1(feedback[20]), .B0(n370), .B1(shiftIO[20]), 
        .C0(n494), .C1(\AS/N188 ), .Y(n284) );
  CLKINVX12M U355 ( .A(n283), .Y(n179) );
  AOI222X4M U354 ( .A0(n366), .A1(feedback[19]), .B0(n370), .B1(shiftIO[19]), 
        .C0(n494), .C1(\AS/N187 ), .Y(n283) );
  CLKINVX12M U353 ( .A(n282), .Y(n180) );
  AOI222X4M U352 ( .A0(n366), .A1(feedback[18]), .B0(n370), .B1(shiftIO[18]), 
        .C0(n494), .C1(\AS/N186 ), .Y(n282) );
  AND2X12M U350 ( .A(feedbackLoad), .B(n492), .Y(n366) );
  XNOR2X8M U349 ( .A(\ALU_Con/xVal[7] ), .B(n461), .Y(n215) );
  NAND2X8M U348 ( .A(\ALU_Con/xVal[6] ), .B(n469), .Y(n461) );
  NOR2X12M U347 ( .A(n471), .B(n470), .Y(n469) );
  NAND2X8M U346 ( .A(\ALU_Con/xVal[4] ), .B(n468), .Y(n470) );
  NOR2X12M U345 ( .A(n467), .B(n466), .Y(n468) );
  NAND2X8M U344 ( .A(\ALU_Con/xVal[2] ), .B(n463), .Y(n466) );
  NAND2X8M U343 ( .A(\ALU_Con/xVal[0] ), .B(\ALU_Con/doneVal ), .Y(n464) );
  CLKINVX12M U342 ( .A(\ALU_Con/xVal[1] ), .Y(n465) );
  CLKINVX12M U341 ( .A(\ALU_Con/xVal[3] ), .Y(n467) );
  CLKINVX12M U340 ( .A(\ALU_Con/xVal[5] ), .Y(n471) );
  NOR3X12M U339 ( .A(\ALU_Con/currentState[1] ), .B(n417), .C(n453), .Y(
        \ALU_Con/doneVal ) );
  CLKINVX12M U338 ( .A(\ALU_Con/currentState[0] ), .Y(n453) );
  CLKINVX12M U337 ( .A(\ALU_Con/currentState[2] ), .Y(n417) );
  CLKINVX12M U336 ( .A(feedback[1]), .Y(n280) );
  OAI2B2X8M U335 ( .A1N(\AS/N171 ), .A0(n281), .B0(n278), .B1(n279), .Y(n156)
         );
  CLKINVX12M U334 ( .A(feedback[2]), .Y(n278) );
  OAI2B2X8M U333 ( .A1N(\AS/N172 ), .A0(n281), .B0(n277), .B1(n279), .Y(n155)
         );
  CLKINVX12M U332 ( .A(feedback[3]), .Y(n277) );
  OAI2B2X8M U331 ( .A1N(\AS/N173 ), .A0(n281), .B0(n276), .B1(n279), .Y(n154)
         );
  CLKINVX12M U330 ( .A(feedback[4]), .Y(n276) );
  OAI2B2X8M U329 ( .A1N(\AS/N174 ), .A0(n281), .B0(n275), .B1(n279), .Y(n153)
         );
  OAI2B2X8M U328 ( .A1N(\AS/N175 ), .A0(n281), .B0(n274), .B1(n279), .Y(n152)
         );
  CLKINVX12M U327 ( .A(feedback[6]), .Y(n274) );
  OAI2B2X8M U326 ( .A1N(\AS/N176 ), .A0(n281), .B0(n273), .B1(n279), .Y(n151)
         );
  CLKINVX12M U325 ( .A(feedback[7]), .Y(n273) );
  CLKINVX12M U324 ( .A(feedback[8]), .Y(n272) );
  OAI2B2X8M U323 ( .A1N(\AS/N178 ), .A0(n281), .B0(n271), .B1(n279), .Y(n149)
         );
  CLKINVX12M U322 ( .A(feedback[9]), .Y(n271) );
  OAI2B2X8M U321 ( .A1N(\AS/N179 ), .A0(n281), .B0(n270), .B1(n279), .Y(n148)
         );
  CLKINVX12M U320 ( .A(feedback[10]), .Y(n270) );
  OAI2B2X8M U319 ( .A1N(\AS/N180 ), .A0(n281), .B0(n269), .B1(n279), .Y(n147)
         );
  CLKINVX12M U318 ( .A(feedback[11]), .Y(n269) );
  OAI2B2X8M U317 ( .A1N(\AS/N182 ), .A0(n281), .B0(n268), .B1(n279), .Y(n145)
         );
  CLKINVX12M U316 ( .A(feedback[13]), .Y(n268) );
  OAI2B2X8M U315 ( .A1N(\AS/N183 ), .A0(n281), .B0(n267), .B1(n279), .Y(n144)
         );
  CLKINVX12M U314 ( .A(feedback[14]), .Y(n267) );
  OAI2B2X8M U313 ( .A1N(shiftIO[16]), .A0(n281), .B0(n266), .B1(n279), .Y(n143) );
  CLKINVX12M U312 ( .A(feedback[15]), .Y(n266) );
  OAI2B2X8M U311 ( .A1N(shiftIO[17]), .A0(n281), .B0(n265), .B1(n279), .Y(n142) );
  CLKINVX12M U310 ( .A(feedback[16]), .Y(n265) );
  OAI2B2X8M U309 ( .A1N(shiftIO[18]), .A0(n281), .B0(n264), .B1(n279), .Y(n141) );
  CLKINVX12M U308 ( .A(feedback[17]), .Y(n264) );
  OAI2B2X8M U307 ( .A1N(shiftIO[19]), .A0(n281), .B0(n263), .B1(n279), .Y(n140) );
  CLKINVX12M U306 ( .A(feedback[18]), .Y(n263) );
  OAI2B2X8M U305 ( .A1N(\AS/N181 ), .A0(n281), .B0(n262), .B1(n279), .Y(n146)
         );
  CLKINVX12M U304 ( .A(feedback[12]), .Y(n262) );
  OAI2B2X8M U303 ( .A1N(shiftIO[20]), .A0(n281), .B0(n261), .B1(n279), .Y(n139) );
  CLKINVX12M U302 ( .A(feedback[19]), .Y(n261) );
  OAI2B2X8M U301 ( .A1N(shiftIO[21]), .A0(n281), .B0(n260), .B1(n279), .Y(n138) );
  OAI2B2X8M U300 ( .A1N(shiftIO[22]), .A0(n281), .B0(n259), .B1(n279), .Y(n137) );
  CLKINVX12M U299 ( .A(feedback[21]), .Y(n259) );
  OAI2B2X8M U298 ( .A1N(shiftIO[23]), .A0(n281), .B0(n258), .B1(n279), .Y(n136) );
  CLKINVX12M U297 ( .A(feedback[22]), .Y(n258) );
  CLKINVX12M U296 ( .A(feedback[23]), .Y(n257) );
  OAI2B2X8M U295 ( .A1N(shiftIO[25]), .A0(n281), .B0(n256), .B1(n279), .Y(n134) );
  CLKINVX12M U294 ( .A(feedback[24]), .Y(n256) );
  OAI2B2X8M U293 ( .A1N(shiftIO[37]), .A0(n281), .B0(n255), .B1(n279), .Y(n122) );
  CLKINVX12M U292 ( .A(feedback[36]), .Y(n255) );
  OAI2B2X8M U291 ( .A1N(shiftIO[26]), .A0(n281), .B0(n254), .B1(n279), .Y(n133) );
  CLKINVX12M U290 ( .A(feedback[25]), .Y(n254) );
  OAI2B2X8M U289 ( .A1N(shiftIO[27]), .A0(n281), .B0(n253), .B1(n279), .Y(n132) );
  CLKINVX12M U288 ( .A(feedback[26]), .Y(n253) );
  OAI2B2X8M U287 ( .A1N(shiftIO[28]), .A0(n281), .B0(n252), .B1(n279), .Y(n131) );
  CLKINVX12M U286 ( .A(feedback[27]), .Y(n252) );
  OAI2B2X8M U285 ( .A1N(shiftIO[29]), .A0(n281), .B0(n251), .B1(n279), .Y(n130) );
  CLKINVX12M U284 ( .A(feedback[28]), .Y(n251) );
  OAI2B2X8M U283 ( .A1N(shiftIO[30]), .A0(n281), .B0(n250), .B1(n279), .Y(n129) );
  CLKINVX12M U282 ( .A(feedback[29]), .Y(n250) );
  OAI2B2X8M U281 ( .A1N(shiftIO[31]), .A0(n281), .B0(n249), .B1(n279), .Y(n128) );
  CLKINVX12M U280 ( .A(feedback[30]), .Y(n249) );
  OAI2B2X8M U279 ( .A1N(shiftIO[32]), .A0(n281), .B0(n248), .B1(n279), .Y(n127) );
  CLKINVX12M U278 ( .A(feedback[31]), .Y(n248) );
  OAI2B2X8M U277 ( .A1N(shiftIO[33]), .A0(n281), .B0(n247), .B1(n279), .Y(n126) );
  CLKINVX12M U276 ( .A(feedback[32]), .Y(n247) );
  OAI2B2X8M U275 ( .A1N(shiftIO[34]), .A0(n281), .B0(n246), .B1(n279), .Y(n125) );
  CLKINVX12M U274 ( .A(feedback[33]), .Y(n246) );
  OAI2B2X8M U273 ( .A1N(shiftIO[35]), .A0(n281), .B0(n245), .B1(n279), .Y(n124) );
  CLKINVX12M U272 ( .A(feedback[34]), .Y(n245) );
  OAI2B2X8M U271 ( .A1N(shiftIO[36]), .A0(n281), .B0(n244), .B1(n279), .Y(n123) );
  CLKINVX12M U270 ( .A(feedback[0]), .Y(n243) );
  OAI2B2X8M U269 ( .A1N(\shiftIO[39] ), .A0(n281), .B0(n365), .B1(n279), .Y(
        n199) );
  CLKINVX12M U268 ( .A(feedback[39]), .Y(n365) );
  OAI2B2X8M U267 ( .A1N(shiftIO[38]), .A0(n281), .B0(n242), .B1(n279), .Y(n121) );
  NAND2BX12M U266 ( .AN(shift_en), .B(n492), .Y(n279) );
  CLKINVX12M U265 ( .A(feedback[37]), .Y(n242) );
  NAND2X8M U264 ( .A(shift_en), .B(n492), .Y(n281) );
  CLKINVX12M U263 ( .A(n292), .Y(n170) );
  CLKINVX12M U262 ( .A(n304), .Y(n185) );
  OAI2B2X8M U261 ( .A1N(\AS/N169 ), .A0(n281), .B0(n243), .B1(n279), .Y(n158)
         );
  OAI2B2X8M U260 ( .A1N(shiftIO[24]), .A0(n281), .B0(n257), .B1(n279), .Y(n135) );
  OAI2B2X8M U259 ( .A1N(\AS/N177 ), .A0(n281), .B0(n272), .B1(n279), .Y(n150)
         );
  OAI2B2X8M U258 ( .A1N(\AS/N170 ), .A0(n281), .B0(n280), .B1(n279), .Y(n157)
         );
  NOR2X12M U257 ( .A(n465), .B(n464), .Y(n463) );
  CLKINVX12M U256 ( .A(feedback[35]), .Y(n244) );
  CLKINVX12M U255 ( .A(feedback[20]), .Y(n260) );
  CLKINVX12M U254 ( .A(feedback[5]), .Y(n275) );
  NAND2X8M U253 ( .A(n458), .B(n430), .Y(n428) );
  NAND2X8M U252 ( .A(n347), .B(\ALU_Con/rjCounter[7] ), .Y(n346) );
  XOR2X8M U251 ( .A(opcode), .B(extToAddSub[31]), .Y(\DP_OP_50J1_123_6515/n53 ) );
  NOR2X12M U250 ( .A(n437), .B(n435), .Y(n438) );
  NOR2X12M U249 ( .A(coeff[5]), .B(n471), .Y(n403) );
  NOR3X12M U248 ( .A(clear), .B(feedbackLoad), .C(load), .Y(n370) );
  DFFRHQX8M \ALU_Con/currentState_reg[2]  ( .D(n239), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/currentState[2] ) );
  DFFRHQX8M \ALU_Con/load_reg  ( .D(\ALU_Con/loadEnable ), .CK(Sclk), .RN(
        en_ALU), .Q(load) );
  DFFRHQX8M \ALU_Con/opcode_reg  ( .D(\ALU_Con/opcodeVal ), .CK(Sclk), .RN(
        en_ALU), .Q(opcode) );
  DFFRHQX8M \ALU_Con/currentState_reg[1]  ( .D(n224), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/currentState[1] ) );
  DFFRHQX8M \ALU_Con/currentState_reg[0]  ( .D(n225), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/currentState[0] ) );
  DFFRHQX8M \ALU_Con/shift_en_reg  ( .D(\ALU_Con/shiftEnable ), .CK(Sclk), 
        .RN(en_ALU), .Q(shift_en) );
  DFFRHQX8M \ALU_Con/done_reg  ( .D(\ALU_Con/doneVal ), .CK(Sclk), .RN(en_ALU), 
        .Q(done) );
  DFFRHQX8M \ALU_Con/xVal_reg[6]  ( .D(n222), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[6] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[0]  ( .D(n221), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[0] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[1]  ( .D(n220), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[1] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[2]  ( .D(n219), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[2] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[3]  ( .D(n218), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[3] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[4]  ( .D(n217), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[4] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[5]  ( .D(n216), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[5] ) );
  DFFRHQX8M \ALU_Con/xVal_reg[7]  ( .D(n215), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/xVal[7] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[0]  ( .D(n223), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[0] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[1]  ( .D(n214), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[1] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[2]  ( .D(n213), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[2] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[3]  ( .D(n212), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[3] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[4]  ( .D(n211), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[4] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[5]  ( .D(n210), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[5] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[6]  ( .D(n209), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[6] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[7]  ( .D(n208), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[7] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[8]  ( .D(n207), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[8] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[9]  ( .D(n206), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjCounter[9] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[10]  ( .D(n205), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[10] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[11]  ( .D(n204), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[11] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[12]  ( .D(n203), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[12] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[13]  ( .D(n202), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[13] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[14]  ( .D(n201), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[14] ) );
  DFFRHQX8M \ALU_Con/rjCounter_reg[15]  ( .D(n200), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/rjCounter[15] ) );
  DFFRHQX8M \ALU_Con/feedbackLoad_reg  ( .D(\ALU_Con/feedbackLoadVal ), .CK(
        Sclk), .RN(en_ALU), .Q(feedbackLoad) );
  DFFHQX8M \AS/result_reg[38]  ( .D(n160), .CK(Sclk), .Q(shiftIO[38]) );
  DFFHQX8M \AS/result_reg[37]  ( .D(n161), .CK(Sclk), .Q(shiftIO[37]) );
  DFFHQX8M \AS/result_reg[36]  ( .D(n162), .CK(Sclk), .Q(shiftIO[36]) );
  DFFHQX8M \AS/result_reg[35]  ( .D(n163), .CK(Sclk), .Q(shiftIO[35]) );
  DFFHQX8M \AS/result_reg[34]  ( .D(n164), .CK(Sclk), .Q(shiftIO[34]) );
  DFFHQX8M \AS/result_reg[33]  ( .D(n165), .CK(Sclk), .Q(shiftIO[33]) );
  DFFHQX8M \AS/result_reg[32]  ( .D(n166), .CK(Sclk), .Q(shiftIO[32]) );
  DFFHQX8M \AS/result_reg[31]  ( .D(n167), .CK(Sclk), .Q(shiftIO[31]) );
  DFFHQX8M \AS/result_reg[30]  ( .D(n168), .CK(Sclk), .Q(shiftIO[30]) );
  DFFHQX8M \AS/result_reg[29]  ( .D(n169), .CK(Sclk), .Q(shiftIO[29]) );
  DFFHQX8M \AS/result_reg[28]  ( .D(n170), .CK(Sclk), .Q(shiftIO[28]) );
  DFFHQX8M \AS/result_reg[27]  ( .D(n171), .CK(Sclk), .Q(shiftIO[27]) );
  DFFHQX8M \AS/result_reg[26]  ( .D(n172), .CK(Sclk), .Q(shiftIO[26]) );
  DFFHQX8M \AS/result_reg[25]  ( .D(n173), .CK(Sclk), .Q(shiftIO[25]) );
  DFFHQX8M \AS/result_reg[24]  ( .D(n174), .CK(Sclk), .Q(shiftIO[24]) );
  DFFHQX8M \AS/result_reg[23]  ( .D(n175), .CK(Sclk), .Q(shiftIO[23]) );
  DFFHQX8M \AS/result_reg[22]  ( .D(n176), .CK(Sclk), .Q(shiftIO[22]) );
  DFFHQX8M \AS/result_reg[21]  ( .D(n177), .CK(Sclk), .Q(shiftIO[21]) );
  DFFHQX8M \AS/result_reg[20]  ( .D(n178), .CK(Sclk), .Q(shiftIO[20]) );
  DFFHQX8M \AS/result_reg[19]  ( .D(n179), .CK(Sclk), .Q(shiftIO[19]) );
  DFFHQX8M \AS/result_reg[18]  ( .D(n180), .CK(Sclk), .Q(shiftIO[18]) );
  DFFHQX8M \AS/result_reg[17]  ( .D(n181), .CK(Sclk), .Q(shiftIO[17]) );
  DFFHQX8M \AS/result_reg[16]  ( .D(n182), .CK(Sclk), .Q(shiftIO[16]) );
  DFFHQX8M \AS/result_reg[15]  ( .D(n183), .CK(Sclk), .Q(\AS/N183 ) );
  DFFHQX8M \AS/result_reg[14]  ( .D(n184), .CK(Sclk), .Q(\AS/N182 ) );
  DFFHQX8M \AS/result_reg[13]  ( .D(n185), .CK(Sclk), .Q(\AS/N181 ) );
  DFFHQX8M \AS/result_reg[12]  ( .D(n186), .CK(Sclk), .Q(\AS/N180 ) );
  DFFHQX8M \AS/result_reg[11]  ( .D(n187), .CK(Sclk), .Q(\AS/N179 ) );
  DFFHQX8M \AS/result_reg[10]  ( .D(n188), .CK(Sclk), .Q(\AS/N178 ) );
  DFFHQX8M \AS/result_reg[9]  ( .D(n189), .CK(Sclk), .Q(\AS/N177 ) );
  DFFHQX8M \AS/result_reg[8]  ( .D(n190), .CK(Sclk), .Q(\AS/N176 ) );
  DFFHQX8M \AS/result_reg[7]  ( .D(n191), .CK(Sclk), .Q(\AS/N175 ) );
  DFFHQX8M \AS/result_reg[6]  ( .D(n192), .CK(Sclk), .Q(\AS/N174 ) );
  DFFHQX8M \AS/result_reg[5]  ( .D(n193), .CK(Sclk), .Q(\AS/N173 ) );
  DFFHQX8M \AS/result_reg[4]  ( .D(n194), .CK(Sclk), .Q(\AS/N172 ) );
  DFFHQX8M \AS/result_reg[3]  ( .D(n195), .CK(Sclk), .Q(\AS/N171 ) );
  DFFHQX8M \AS/result_reg[2]  ( .D(n196), .CK(Sclk), .Q(\AS/N170 ) );
  DFFHQX8M \AS/result_reg[1]  ( .D(n197), .CK(Sclk), .Q(\AS/N169 ) );
  DFFHQX8M \AS/result_reg[39]  ( .D(n159), .CK(Sclk), .Q(\shiftIO[39] ) );
  DFFSX4M \ALU_Con/clear_reg  ( .D(\ALU_Con/clearVal ), .CK(Sclk), .SN(en_ALU), 
        .Q(clear), .QN(n492) );
  DFFHQX8M \oBS/yOut_reg[36]  ( .D(n122), .CK(Sclk), .Q(feedback[36]) );
  DFFHQX8M \oBS/yOut_reg[21]  ( .D(n137), .CK(Sclk), .Q(feedback[21]) );
  DFFHQX8M \oBS/yOut_reg[6]  ( .D(n152), .CK(Sclk), .Q(feedback[6]) );
  DFFRHQX8M \ALU_Con/rjAddr_reg[0]  ( .D(n238), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjAddr [0]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[0]  ( .D(n234), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [0]) );
  DFFHQX8M \oBS/yOut_reg[39]  ( .D(n199), .CK(Sclk), .Q(feedback[39]) );
  DFFHQX8M \oBS/yOut_reg[0]  ( .D(n158), .CK(Sclk), .Q(feedback[0]) );
  DFFHQX8M \oBS/yOut_reg[37]  ( .D(n121), .CK(Sclk), .Q(feedback[37]) );
  DFFHQX8M \oBS/yOut_reg[35]  ( .D(n123), .CK(Sclk), .Q(feedback[35]) );
  DFFHQX8M \oBS/yOut_reg[34]  ( .D(n124), .CK(Sclk), .Q(feedback[34]) );
  DFFHQX8M \oBS/yOut_reg[33]  ( .D(n125), .CK(Sclk), .Q(feedback[33]) );
  DFFHQX8M \oBS/yOut_reg[32]  ( .D(n126), .CK(Sclk), .Q(feedback[32]) );
  DFFHQX8M \oBS/yOut_reg[31]  ( .D(n127), .CK(Sclk), .Q(feedback[31]) );
  DFFHQX8M \oBS/yOut_reg[30]  ( .D(n128), .CK(Sclk), .Q(feedback[30]) );
  DFFHQX8M \oBS/yOut_reg[29]  ( .D(n129), .CK(Sclk), .Q(feedback[29]) );
  DFFHQX8M \oBS/yOut_reg[28]  ( .D(n130), .CK(Sclk), .Q(feedback[28]) );
  DFFHQX8M \oBS/yOut_reg[27]  ( .D(n131), .CK(Sclk), .Q(feedback[27]) );
  DFFHQX8M \oBS/yOut_reg[26]  ( .D(n132), .CK(Sclk), .Q(feedback[26]) );
  DFFHQX8M \oBS/yOut_reg[25]  ( .D(n133), .CK(Sclk), .Q(feedback[25]) );
  DFFHQX8M \oBS/yOut_reg[24]  ( .D(n134), .CK(Sclk), .Q(feedback[24]) );
  DFFHQX8M \oBS/yOut_reg[23]  ( .D(n135), .CK(Sclk), .Q(feedback[23]) );
  DFFHQX8M \oBS/yOut_reg[22]  ( .D(n136), .CK(Sclk), .Q(feedback[22]) );
  DFFHQX8M \oBS/yOut_reg[20]  ( .D(n138), .CK(Sclk), .Q(feedback[20]) );
  DFFHQX8M \oBS/yOut_reg[19]  ( .D(n139), .CK(Sclk), .Q(feedback[19]) );
  DFFHQX8M \oBS/yOut_reg[18]  ( .D(n140), .CK(Sclk), .Q(feedback[18]) );
  DFFHQX8M \oBS/yOut_reg[17]  ( .D(n141), .CK(Sclk), .Q(feedback[17]) );
  DFFHQX8M \oBS/yOut_reg[16]  ( .D(n142), .CK(Sclk), .Q(feedback[16]) );
  DFFHQX8M \oBS/yOut_reg[15]  ( .D(n143), .CK(Sclk), .Q(feedback[15]) );
  DFFHQX8M \oBS/yOut_reg[14]  ( .D(n144), .CK(Sclk), .Q(feedback[14]) );
  DFFHQX8M \oBS/yOut_reg[13]  ( .D(n145), .CK(Sclk), .Q(feedback[13]) );
  DFFHQX8M \oBS/yOut_reg[12]  ( .D(n146), .CK(Sclk), .Q(feedback[12]) );
  DFFHQX8M \oBS/yOut_reg[11]  ( .D(n147), .CK(Sclk), .Q(feedback[11]) );
  DFFHQX8M \oBS/yOut_reg[10]  ( .D(n148), .CK(Sclk), .Q(feedback[10]) );
  DFFHQX8M \oBS/yOut_reg[9]  ( .D(n149), .CK(Sclk), .Q(feedback[9]) );
  DFFHQX8M \oBS/yOut_reg[8]  ( .D(n150), .CK(Sclk), .Q(feedback[8]) );
  DFFHQX8M \oBS/yOut_reg[7]  ( .D(n151), .CK(Sclk), .Q(feedback[7]) );
  DFFHQX8M \oBS/yOut_reg[5]  ( .D(n153), .CK(Sclk), .Q(feedback[5]) );
  DFFHQX8M \oBS/yOut_reg[4]  ( .D(n154), .CK(Sclk), .Q(feedback[4]) );
  DFFHQX8M \oBS/yOut_reg[3]  ( .D(n155), .CK(Sclk), .Q(feedback[3]) );
  DFFHQX8M \oBS/yOut_reg[2]  ( .D(n156), .CK(Sclk), .Q(feedback[2]) );
  DFFHQX8M \oBS/yOut_reg[1]  ( .D(n157), .CK(Sclk), .Q(feedback[1]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[0]  ( .D(\ALU_Con/xAddrNext[0] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [0]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[1]  ( .D(\ALU_Con/xAddrNext[1] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [1]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[2]  ( .D(\ALU_Con/xAddrNext[2] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [2]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[3]  ( .D(\ALU_Con/xAddrNext[3] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [3]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[4]  ( .D(\ALU_Con/xAddrNext[4] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [4]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[5]  ( .D(\ALU_Con/xAddrNext[5] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [5]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[6]  ( .D(\ALU_Con/xAddrNext[6] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [6]) );
  DFFRHQX8M \ALU_Con/xAddr_reg[7]  ( .D(\ALU_Con/xAddrNext[7] ), .CK(Sclk), 
        .RN(en_ALU), .Q(\ALU_Con/xAddr [7]) );
  DFFRHQX8M \ALU_Con/rjAddr_reg[2]  ( .D(n236), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjAddr [2]) );
  DFFRHQX8M \ALU_Con/rjAddr_reg[3]  ( .D(n235), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjAddr [3]) );
  DFFRHQX8M \ALU_Con/rjAddr_reg[1]  ( .D(n237), .CK(Sclk), .RN(en_ALU), .Q(
        \ALU_Con/rjAddr [1]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[8]  ( .D(n226), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [8]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[4]  ( .D(n230), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [4]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[6]  ( .D(n228), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [6]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[7]  ( .D(n227), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [7]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[3]  ( .D(n231), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [3]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[5]  ( .D(n229), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [5]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[2]  ( .D(n232), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [2]) );
  DFFRHQX8M \ALU_Con/coeffCounter_reg[1]  ( .D(n233), .CK(Sclk), .RN(en_ALU), 
        .Q(\ALU_Con/coeffCounter [1]) );
  CLKINVX8M U351 ( .A(n373), .Y(n493) );
  CLKINVX8M U646 ( .A(n493), .Y(n494) );
  NOR3BX2M U647 ( .AN(load), .B(clear), .C(feedbackLoad), .Y(n373) );
endmodule

