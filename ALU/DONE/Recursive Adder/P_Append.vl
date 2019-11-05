`include"P_cla.vl"
`include"initial.vl"


module op(a,b,out);

input [15:0]a;
input [15:0]b;
reg [1:0]c;
output [31:0]out;


initial
c[1:0] = 2'b00;

last mod1(a[0],b[0],out[1:0]);
last mod2(a[1],b[1],out[3:2]);
last mod3(a[2],b[2],out[5:4]);
last mod4(a[3],b[3],out[7:6]);
last mod5(a[4],b[4],out[9:8]);
last mod6(a[5],b[5],out[11:10]);
last mod7(a[6],b[6],out[13:12]);
last mod8(a[7],b[7],out[15:14]);
last mod9(a[8],b[8],out[17:16]);
last mod10(a[9],b[9],out[19:18]);
last mod11(a[10],b[10],out[21:20]);
last mod12(a[11],b[11],out[23:22]);
last mod13(a[12],b[12],out[25:24]);
last mod14(a[13],b[13],out[27:26]);
last mod15(a[14],b[14],out[29:28]);
last mod16(a[15],b[15],out[31:30]);
/*
last mod17(a[16],b[16],out[33:32]);
last mod18(a[17],b[17],out[35:34]);
last mod19(a[18],b[18],out[37:36]);
last mod20(a[19],b[19],out[39:38]);
last mod21(a[20],b[20],out[41:40]);
last mod22(a[21],b[21],out[43:42]);
last mod23(a[22],b[22],out[45:44]);
last mod24(a[23],b[23],out[47:46]);
last mod25(a[24],b[24],out[49:48]);
last mod26(a[25],b[25],out[51:50]);
last mod27(a[26],b[26],out[53:52]);
last mod28(a[27],b[27],out[55:54]);
last mod29(a[28],b[28],out[57:56]);
last mod30(a[29],b[29],out[59:58]);
last mod31(a[30],b[30],out[61:60]);
last mod32(a[31],b[31],out[63:62]);
*/


initial
$monitor("out=%b",out);



endmodule