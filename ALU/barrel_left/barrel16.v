`include"mux2-1.v"
module barrel_left(in,shft,out);

input [3:0]shft;
input [15:0]in;
output [15:0]out;
wire [15:0] l1,l2,l3;

mux21 mod0(shft[0],1'b0,in[0],l1[0]);
mux21 mod1(shft[0],in[0],in[1],l1[1]);
mux21 mod2(shft[0],in[1],in[2],l1[2]);
mux21 mod3(shft[0],in[2],in[3],l1[3]);
mux21 mod4(shft[0],in[3],in[4],l1[4]);
mux21 mod5(shft[0],in[4],in[5],l1[5]);
mux21 mod6(shft[0],in[5],in[6],l1[6]);
mux21 mod7(shft[0],in[6],in[7],l1[7]);
mux21 mod8(shft[0],in[7],in[8],l1[8]);
mux21 mod9(shft[0],in[8],in[9],l1[9]);
mux21 mod10(shft[0],in[9],in[10],l1[10]);
mux21 mod11(shft[0],in[10],in[11],l1[11]);
mux21 mod12(shft[0],in[11],in[12],l1[12]);
mux21 mod13(shft[0],in[12],in[13],l1[13]);
mux21 mod14(shft[0],in[13],in[14],l1[14]);
mux21 mod15(shft[0],in[14],in[15],l1[15]);

//assign out=l1;

mux21 mod16(shft[1],1'b0,l1[0],l2[0]);
mux21 mod17(shft[1],1'b0,l1[1],l2[1]);
mux21 mod18(shft[1],l1[0],l1[2],l2[2]);
mux21 mod19(shft[1],l1[1],l1[3],l2[3]);
mux21 mod20(shft[1],l1[2],l1[4],l2[4]);
mux21 mod21(shft[1],l1[3],l1[5],l2[5]);
mux21 mod22(shft[1],l1[4],l1[6],l2[6]);
mux21 mod23(shft[1],l1[5],l1[7],l2[7]);
mux21 mod24(shft[1],l1[6],l1[8],l2[8]);
mux21 mod25(shft[1],l1[7],l1[9],l2[9]);
mux21 mod26(shft[1],l1[8],l1[10],l2[10]);
mux21 mod27(shft[1],l1[9],l1[11],l2[11]);
mux21 mod28(shft[1],l1[10],l1[12],l2[12]);
mux21 mod29(shft[1],l1[11],l1[13],l2[13]);
mux21 mod30(shft[1],l1[12],l1[14],l2[14]);
mux21 mod31(shft[1],l1[13],l1[15],l2[15]);
//assign out=l2;


mux21 mod32(shft[2],1'b0,l2[0],l3[0]);
mux21 mod33(shft[2],1'b0,l2[1],l3[1]);
mux21 mod34(shft[2],1'b0,l2[2],l3[2]);
mux21 mod35(shft[2],1'b0,l2[3],l3[3]);
mux21 mod36(shft[2],l2[0],l2[4],l3[4]);
mux21 mod37(shft[2],l2[1],l2[5],l3[5]);
mux21 mod38(shft[2],l2[2],l2[6],l3[6]);
mux21 mod39(shft[2],l2[3],l2[7],l3[7]);
mux21 mod40(shft[2],l2[4],l2[8],l3[8]);
mux21 mod41(shft[2],l2[5],l2[9],l3[9]);
mux21 mod42(shft[2],l2[6],l2[10],l3[10]);
mux21 mod43(shft[2],l2[7],l2[11],l3[11]);
mux21 mod44(shft[2],l2[8],l2[12],l3[12]);
mux21 mod45(shft[2],l2[9],l2[13],l3[13]);
mux21 mod46(shft[2],l2[10],l2[14],l3[14]);
mux21 mod47(shft[2],l2[11],l2[15],l3[15]);


mux21 mod48(shft[3],1'b0,l3[0],out[0]);
mux21 mod49(shft[3],1'b0,l3[1],out[1]);
mux21 mod50(shft[3],1'b0,l3[2],out[2]);
mux21 mod51(shft[3],1'b0,l3[3],out[3]);
mux21 mod52(shft[3],1'b0,l3[4],out[4]);
mux21 mod53(shft[3],1'b0,l3[5],out[5]);
mux21 mod54(shft[3],1'b0,l3[6],out[6]);
mux21 mod55(shft[3],1'b0,l3[7],out[7]);
mux21 mod56(shft[3],l3[0],l3[8],out[8]);
mux21 mod57(shft[3],l3[1],l3[9],out[9]);
mux21 mod58(shft[3],l3[2],l3[10],out[10]);
mux21 mod59(shft[3],l3[3],l3[11],out[11]);
mux21 mod60(shft[3],l3[4],l3[12],out[12]);
mux21 mod61(shft[3],l3[5],l3[13],out[13]);
mux21 mod62(shft[3],l3[6],l3[14],out[14]);
mux21 mod63(shft[3],l3[7],l3[15],out[15]);



endmodule
