`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/P_Append.v"
`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/P_mux.v"
`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/P_create.v"
`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/xor.v"
`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/equate.v"
`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/decode.v"


module create_tb(a,b,c,out6);

input [15:0] a,b;
input [1:0] c;
output [15:0] out6;

wire [31:0] out;
wire [33:0] s1;
wire [33:0] s2;
wire [33:0] s3;
wire [33:0] s4;
wire [33:0] s5;
wire [33:0]out1;
wire [33:0]out2;
wire [33:0] out3;
wire [33:0] out4;
wire [15:0] out5;
wire [15:0] out6;



op mod0(a,b,out);

//Stage1 comparison 

initiall mod(c[1:0],s1[1:0]);
mux mod00(out[1:0],s1[1:0],s1[3:2]);
mux mod1(out[3:2],out[1:0],s1[5:4]);
mux mod2(out[5:4],out[3:2],s1[7:6]);
mux mod3(out[7:6],out[5:4],s1[9:8]);
mux mod4(out[9:8],out[7:6],s1[11:10]);
mux mod5(out[11:10],out[9:8],s1[13:12]);
mux mod6(out[13:12],out[11:10],s1[15:14]);
mux mod7(out[15:14],out[13:12],s1[17:16]);
mux mod8(out[17:16],out[15:14],s1[19:18]);
mux mod9(out[19:18],out[17:16],s1[21:20]);
mux mod10(out[21:20],out[19:18],s1[23:22]);
mux mod11(out[23:22],out[21:20],s1[25:24]);
mux mod12(out[25:24],out[23:22],s1[27:26]);
mux mod13(out[27:26],out[25:24],s1[29:28]);
mux mod14(out[29:28],out[27:26],s1[31:30]);
equate moda(out[31:30],s1[33:32]);

/*
mux mod15(out[31:30],out[29:28],s1[33:32]);

mux mod16(out[33:32],out[31:30],s1[35:34]);
mux mod17(out[35:34],out[33:32],s1[37:36]);
mux mod18(out[37:36],out[35:34],s1[39:38]);
mux mod19(out[39:38],out[37:36],s1[41:40]);
mux mod20(out[41:40],out[39:38],s1[43:42]);
mux mod21(out[43:42],out[41:40],s1[45:44]);
mux mod22(out[45:44],out[43:42],s1[47:46]);
mux mod23(out[47:46],out[45:44],s1[49:48]);
mux mod24(out[49:48],out[47:46],s1[51:50]);
mux mod25(out[51:50],out[49:48],s1[53:52]);
mux mod26(out[53:52],out[51:50],s1[55:54]);
mux mod27(out[55:54],out[53:52],s1[57:56]);
mux mod28(out[57:56],out[55:54],s1[59:58]);
mux mod29(out[59:58],out[57:56],s1[61:60]);
mux mod30(out[61:60],out[59:58],s1[63:62]);
equate moda(out[63:62],s1[65:64]);
*/
//Stage2 comparison

create mod4100(s1[33:0],s2[33:0]);
initiall mod111(c[1:0],s3[1:0]);
equate mod221(s2[3:2],s3[3:2]);
equate moda2(s2[33:32],s3[33:32]);
mux mod31(s2[5:4],s2[1:0],s3[5:4]);
mux mod32(s2[7:6],s2[3:2],s3[7:6]);
mux mod33(s2[9:8],s2[5:4],s3[9:8]);
mux mod34(s2[11:10],s2[7:6],s3[11:10]);
mux mod35(s2[13:12],s2[9:8],s3[13:12]);
mux mod36(s2[15:14],s2[11:10],s3[15:14]);
mux mod37(s2[17:16],s2[13:12],s3[17:16]);
mux mod38(s2[19:18],s2[15:14],s3[19:18]);
mux mod39(s2[21:20],s2[17:16],s3[21:20]);
mux mod40(s2[23:22],s2[19:18],s3[23:22]);
mux mod410(s2[25:24],s2[21:20],s3[25:24]);
mux mod42(s2[27:26],s2[23:22],s3[27:26]);
mux mod43(s2[29:28],s2[25:24],s3[29:28]);
mux mod404(s2[31:30],s2[27:26],s3[31:30]);
/*
mux mod405(s2[33:32],s2[29:28],s3[33:32]);
mux mod46(s2[35:34],s2[31:30],s3[35:34]);
mux mod47(s2[37:36],s2[33:32],s3[37:36]);
mux mod48(s2[39:38],s2[35:34],s3[39:38]);
mux mod49(s2[41:40],s2[37:36],s3[41:40]);
mux mod50(s2[43:42],s2[39:38],s3[43:42]);
mux mod51(s2[45:44],s2[41:40],s3[45:44]);
mux mod52(s2[47:46],s2[43:42],s3[47:46]);
mux mod53(s2[49:48],s2[45:44],s3[49:48]);
mux mod54(s2[51:50],s2[47:46],s3[51:50]);
mux mod55(s2[53:52],s2[49:48],s3[53:52]);
mux mod56(s2[55:54],s2[51:50],s3[55:54]);
mux mod57(s2[57:56],s2[53:52],s3[57:56]);
mux mod58(s2[59:58],s2[55:54],s3[59:58]);
mux mod59(s2[61:60],s2[57:56],s3[61:60]);
mux mod60(s2[63:62],s2[59:58],s3[63:62]);
*/

//Stage3 comparison




create mod45(s3[33:0],s4[33:0]);
initiall mod1115(c[1:0],s5[1:0]);
equate mod225(s4[3:2],s5[3:2]);
equate moda25(s4[33:32],s5[33:32]);
equate modaa15(s4[5:4],s5[5:4]);
equate modaa17(s4[7:6],s5[7:6]);
equate modaa19(s4[9:8],s5[9:8]);
mux mod61(s4[11:10],s4[3:2],s5[11:10]);
mux mod62(s4[13:12],s4[5:4],s5[13:12]);
mux mod63(s4[15:14],s4[7:6],s5[15:14]);
mux mod64(s4[17:16],s4[9:8],s5[17:16]);
mux mod65(s4[19:18],s4[11:10],s5[19:18]);
mux mod66(s4[21:20],s4[13:12],s5[21:20]);
mux mod67(s4[23:22],s4[15:14],s5[23:22]);
mux mod68(s4[25:24],s4[17:16],s5[25:24]);
mux mod69(s4[27:26],s4[19:18],s5[27:26]);
mux mod70(s4[29:28],s4[21:20],s5[29:28]);
mux mod71(s4[31:30],s4[23:22],s5[31:30]);

/*mux mod72(s4[33:32],s4[25:24],s5[33:32]);
mux mod73(s4[35:34],s4[27:26],s5[35:34]);
mux mod74(s4[37:36],s4[29:28],s5[37:36]);
mux mod75(s4[39:38],s4[31:30],s5[39:38]);
mux mod76(s4[41:40],s4[33:32],s5[41:40]);
mux mod77(s4[43:42],s4[35:34],s5[43:42]);
mux mod78(s4[45:44],s4[37:36],s5[45:44]);
mux mod79(s4[47:46],s4[39:38],s5[47:46]);
mux mod80(s4[49:48],s4[41:40],s5[49:48]);
mux mod81(s4[51:50],s4[43:42],s5[51:50]);
mux mod82(s4[53:52],s4[45:44],s5[53:52]);
mux mod83(s4[55:54],s4[47:46],s5[55:54]);
mux mod84(s4[57:56],s4[49:48],s5[57:56]);
mux mod85(s4[59:58],s4[51:50],s5[59:58]);
mux mod86(s4[61:60],s4[53:52],s5[61:60]);
mux mod87(s4[63:62],s4[55:54],s5[63:62]);
*/

//Stage4 comparison
create mod41(s5[33:0],out1[33:0]);
initiall mod1116(c[1:0],out2[1:0]);
equate moda22225(out1[33:32],out2[33:32]);
equate modaa3333(out1[1:0],out2[1:0]);
equate modaa331(out1[3:2],out2[3:2]);
equate modaa332(out1[5:4],out2[5:4]);
equate modaa333(out1[7:6],out2[7:6]);
equate modaa334(out1[9:8],out2[9:8]);
equate modaa335(out1[11:10],out2[11:10]);
equate modaa336(out1[13:12],out2[13:12]);
equate modaa337(out1[15:14],out2[15:14]);

mux mod88(out1[17:16],out1[1:0],out2[17:16]);
mux mod89(out1[19:18],out1[3:2],out2[19:18]);
mux mod90(out1[21:20],out1[5:4],out2[21:20]);
mux mod91(out1[23:22],out1[7:6],out2[23:22]);
mux mod92(out1[25:24],out1[9:8],out2[25:24]);
mux mod93(out1[27:26],out1[11:10],out2[27:26]);
mux mod94(out1[29:28],out1[13:12],out2[29:28]);
mux mod95(out1[31:30],out1[15:14],out2[31:30]);

/*
mux mod96(out1[33:32],out1[17:16],out2[33:32]);
mux mod97(out1[35:34],out1[19:18],out2[35:34]);
mux mod98(out1[37:36],out1[21:20],out2[37:36]);
mux mod99(out1[39:38],out1[23:22],out2[39:38]);
mux mod110(out1[41:40],out1[25:24],out2[41:40]);
mux mod1191(out1[43:42],out1[27:26],out2[43:42]);
mux mod112(out1[45:44],out1[29:28],out2[45:44]);
mux mod113(out1[47:46],out1[31:30],out2[47:46]);
mux mod114(out1[49:48],out1[33:32],out2[49:48]);
mux mod115(out1[51:50],out1[35:34],out2[51:50]);
mux mod116(out1[53:52],out1[37:36],out2[53:52]);
mux mod117(out1[55:54],out1[39:38],out2[55:54]);
mux mod118(out1[57:56],out1[41:40],out2[57:56]);
mux mod119(out1[59:58],out1[43:42],out2[59:58]);
mux mod1109(out1[61:60],out1[45:44],out2[61:60]);
mux mod1111(out1[63:62],out1[47:46],out2[63:62]);

//Stage5 comparison

create mod419(out2[65:0],out3[65:0]);
initiall mod1196(c[1:0],out4[1:0]);
equate moda229225(out3[65:64],out4[65:64]);

equate modaa4433(out3[1:0],out4[1:0]);
equate modaa441(out3[3:2],out4[3:2]);
equate modaa442(out3[5:4],out4[5:4]);
equate modaa3433(out3[7:6],out4[7:6]);
equate modaa344(out3[9:8],out4[9:8]);
equate modaa345(out3[11:10],out4[11:10]);
equate modaa346(out3[13:12],out4[13:12]);
equate modaa347(out3[15:14],out4[15:14]);
equate modaa4533(out3[17:16],out4[17:16]);
equate modaa481(out3[19:18],out4[19:18]);
equate modaa482(out3[21:20],out4[21:20]);
equate modaa8833(out3[23:22],out4[23:22]);
equate modaa884(out3[25:24],out4[25:24]);
equate modaa885(out3[27:26],out4[27:26]);
equate modaa386(out3[29:28],out4[29:28]);
equate modaa397(out3[31:30],out4[31:30]);

mux mod226(out3[33:32],out3[1:0],out4[33:32]);
mux mod227(out3[35:34],out3[3:2],out4[35:34]);
mux mod228(out3[37:36],out3[5:4],out4[37:36]);
mux mod229(out3[39:38],out3[7:6],out4[39:38]);
mux mod12210(out3[41:40],out3[9:8],out4[41:40]);
mux mod112291(out3[43:42],out3[11:10],out4[43:42]);
mux mod11222(out3[45:44],out3[13:12],out4[45:44]);
mux mod12213(out3[47:46],out3[15:14],out4[47:46]);
mux mod12214(out3[49:48],out3[17:16],out4[49:48]);
mux mod11225(out3[51:50],out3[19:18],out4[51:50]);
mux mod12216(out3[53:52],out3[21:20],out4[53:52]);
mux mod11227(out3[55:54],out3[23:22],out4[55:54]);
mux mod12218(out3[57:56],out3[25:24],out4[57:56]);
mux mod12219(out3[59:58],out3[27:26],out4[59:58]);
mux mod11220(out3[61:60],out3[29:28],out4[61:60]);
mux mod11221(out3[63:62],out3[31:30],out4[63:62]);

*/

//Conversion of 64-bit to 32 bit 


back m1(out2[1:0],out5[0]);
back m2(out2[3:2],out5[1]);
back m3(out2[5:4],out5[2]);
back m4(out2[7:6],out5[3]);
back m5(out2[9:8],out5[4]);
back m6(out2[11:10],out5[5]);
back m7(out2[13:12],out5[6]);
back m8(out2[15:14],out5[7]);
back m9(out2[17:16],out5[8]);
back m10(out2[19:18],out5[9]);
back m11(out2[21:20],out5[10]);
back m12(out2[23:22],out5[11]);
back m13(out2[25:24],out5[12]);
back m15(out2[27:26],out5[13]);
back m16(out2[29:28],out5[14]);
back m17(out2[31:30],out5[15]);
/*
back m18(out4[33:32],out5[16]);
back m19(out4[35:34],out5[17]);
back m20(out4[37:36],out5[18]);
back m21(out4[39:38],out5[19]);
back m22(out4[41:40],out5[20]);
back m23(out4[43:42],out5[21]);
back m24(out4[45:44],out5[22]);
back m25(out4[47:46],out5[23]);
back m26(out4[49:48],out5[24]);
back m27(out4[51:50],out5[25]);
back m28(out4[53:52],out5[26]);
back m29(out4[55:54],out5[27]);
back m30(out4[57:56],out5[28]);
back m31(out4[59:58],out5[29]);
back m32(out4[61:60],out5[30]);
back m33(out4[63:62],out5[31]);

*/
//assign out6=out5;

//Performing the XOR operation to get the sum

aor mo1(a[0],b[0],out5[0],out6[0]);
aor mo2(a[1],b[1],out5[1],out6[1]);
aor mo3(a[2],b[2],out5[2],out6[2]);
aor mo4(a[3],b[3],out5[3],out6[3]);
aor mo5(a[4],b[4],out5[4],out6[4]);
aor mo6(a[5],b[5],out5[5],out6[5]);
aor mo7(a[6],b[6],out5[6],out6[6]);
aor mo8(a[7],b[7],out5[7],out6[7]);
aor mo9(a[8],b[8],out5[8],out6[8]);
aor mo10(a[9],b[9],out5[9],out6[9]);
aor mo11(a[10],b[10],out5[10],out6[10]);
aor mo12(a[11],b[11],out5[11],out6[11]);
aor mo13(a[12],b[12],out5[12],out6[12]);
aor mo14(a[13],b[13],out5[13],out6[13]);
aor mo15(a[14],b[14],out5[14],out6[14]);
aor mo16(a[15],b[15],out5[15],out6[15]);

/*
aor mo17(a[16],b[16],out5[16],out6[16]);
aor mo18(a[17],b[17],out5[17],out6[17]);
aor mo19(a[18],b[18],out5[18],out6[18]);
aor mo20(a[19],b[19],out5[19],out6[19]);
aor mo21(a[20],b[20],out5[20],out6[20]);
aor mo22(a[21],b[21],out5[21],out6[21]);
aor mo23(a[22],b[22],out5[22],out6[22]);
aor mo24(a[23],b[23],out5[23],out6[23]);
aor mo25(a[24],b[24],out5[24],out6[24]);
aor mo26(a[25],b[25],out5[25],out6[25]);
aor mo27(a[26],b[26],out5[26],out6[26]);
aor mo28(a[27],b[27],out5[27],out6[27]);
aor mo29(a[28],b[28],out5[28],out6[28]);
aor mo30(a[29],b[29],out5[29],out6[29]);
aor mo31(a[30],b[30],out5[30],out6[30]);
aor mo32(a[31],b[31],out5[31],out6[31]);
*/
initial
$monitor("%b",out6);
endmodule