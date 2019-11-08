`include "half_adder.v"

`include "full_adder.v"

module rca16(A,B,Cout,Sout);

input [15:0] A,B;

output Cout;

output [15:0] Sout;

wire [30:0] ca;

half_adder mod0(A[0],B[0],ca[0],Sout[0]);
full_adder mod1(A[1],B[1],ca[0],ca[1],Sout[1]);
full_adder mod2(A[2],B[2],ca[1],ca[2],Sout[2]);
full_adder mod3(A[3],B[3],ca[2],ca[3],Sout[3]);
full_adder mod4(A[4],B[4],ca[3],ca[4],Sout[4]);
full_adder mod5(A[5],B[5],ca[4],ca[5],Sout[5]);
full_adder mod6(A[6],B[6],ca[5],ca[6],Sout[6]);
full_adder mod7(A[7],B[7],ca[6],ca[7],Sout[7]);
full_adder mod8(A[8],B[8],ca[7],ca[8],Sout[8]);
full_adder mod9(A[9],B[9],ca[8],ca[9],Sout[9]);
full_adder mod10(A[10],B[10],ca[9],ca[10],Sout[10]);
full_adder mod11(A[11],B[11],ca[10],ca[11],Sout[11]);
full_adder mod12(A[12],B[12],ca[11],ca[12],Sout[12]);
full_adder mod13(A[13],B[13],ca[12],ca[13],Sout[13]);
full_adder mod14(A[14],B[14],ca[13],ca[14],Sout[14]);
full_adder mod15(A[15],B[15],ca[14],ca[15],Sout[15]);
//full_adder mod16(A[16],B[16],ca[15],ca[16],Sout[16]);
//full_adder mod17(A[17],B[17],ca[16],ca[17],Sout[17]);
//full_adder mod18(A[18],B[18],ca[17],ca[18],Sout[18]);
//full_adder mod19(A[19],B[19],ca[18],ca[19],Sout[19]);
//full_adder mod20(A[20],B[20],ca[19],ca[20],Sout[20]);
//full_adder mod21(A[21],B[21],ca[20],ca[21],Sout[21]);
//full_adder mod22(A[22],B[22],ca[21],ca[22],Sout[22]);
//full_adder mod23(A[23],B[23],ca[22],ca[23],Sout[23]);
//full_adder mod24(A[24],B[24],ca[23],ca[24],Sout[24]);
//full_adder mod25(A[25],B[25],ca[24],ca[25],Sout[25]);
//full_adder mod26(A[26],B[26],ca[25],ca[26],Sout[26]);
//full_adder mod27(A[27],B[27],ca[26],ca[27],Sout[27]);
//full_adder mod28(A[28],B[28],ca[27],ca[28],Sout[28]);
//full_adder mod29(A[29],B[29],ca[28],ca[29],Sout[29]);
//full_adder mod30(A[30],B[30],ca[29],ca[30],Sout[30]);
//full_adder mod31(A[31],B[31],ca[30],Cout,Sout[31]);
endmodule