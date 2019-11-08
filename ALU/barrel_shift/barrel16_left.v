`include"/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/barrel_shift/mux21_left.v"
module barrel_left(in,shft,out);

input [3:0]shft;
input [15:0]in;
output [15:0]out;
wire [15:0] l1,l2,l3;

mux21_l mod0(shft[0],1'b0,in[0],l1[0]);
mux21_l mod1(shft[0],in[0],in[1],l1[1]);
mux21_l mod2(shft[0],in[1],in[2],l1[2]);
mux21_l mod3(shft[0],in[2],in[3],l1[3]);
mux21_l mod4(shft[0],in[3],in[4],l1[4]);
mux21_l mod5(shft[0],in[4],in[5],l1[5]);
mux21_l mod6(shft[0],in[5],in[6],l1[6]);
mux21_l mod7(shft[0],in[6],in[7],l1[7]);
mux21_l mod8(shft[0],in[7],in[8],l1[8]);
mux21_l mod9(shft[0],in[8],in[9],l1[9]);
mux21_l mod10(shft[0],in[9],in[10],l1[10]);
mux21_l mod11(shft[0],in[10],in[11],l1[11]);
mux21_l mod12(shft[0],in[11],in[12],l1[12]);
mux21_l mod13(shft[0],in[12],in[13],l1[13]);
mux21_l mod14(shft[0],in[13],in[14],l1[14]);
mux21_l mod15(shft[0],in[14],in[15],l1[15]);

//assign out=l1;

mux21_l mod16(shft[1],1'b0,l1[0],l2[0]);
mux21_l mod17(shft[1],1'b0,l1[1],l2[1]);
mux21_l mod18(shft[1],l1[0],l1[2],l2[2]);
mux21_l mod19(shft[1],l1[1],l1[3],l2[3]);
mux21_l mod20(shft[1],l1[2],l1[4],l2[4]);
mux21_l mod21(shft[1],l1[3],l1[5],l2[5]);
mux21_l mod22(shft[1],l1[4],l1[6],l2[6]);
mux21_l mod23(shft[1],l1[5],l1[7],l2[7]);
mux21_l mod24(shft[1],l1[6],l1[8],l2[8]);
mux21_l mod25(shft[1],l1[7],l1[9],l2[9]);
mux21_l mod26(shft[1],l1[8],l1[10],l2[10]);
mux21_l mod27(shft[1],l1[9],l1[11],l2[11]);
mux21_l mod28(shft[1],l1[10],l1[12],l2[12]);
mux21_l mod29(shft[1],l1[11],l1[13],l2[13]);
mux21_l mod30(shft[1],l1[12],l1[14],l2[14]);
mux21_l mod31(shft[1],l1[13],l1[15],l2[15]);
//assign out=l2;


mux21_l mod32(shft[2],1'b0,l2[0],l3[0]);
mux21_l mod33(shft[2],1'b0,l2[1],l3[1]);
mux21_l mod34(shft[2],1'b0,l2[2],l3[2]);
mux21_l mod35(shft[2],1'b0,l2[3],l3[3]);
mux21_l mod36(shft[2],l2[0],l2[4],l3[4]);
mux21_l mod37(shft[2],l2[1],l2[5],l3[5]);
mux21_l mod38(shft[2],l2[2],l2[6],l3[6]);
mux21_l mod39(shft[2],l2[3],l2[7],l3[7]);
mux21_l mod40(shft[2],l2[4],l2[8],l3[8]);
mux21_l mod41(shft[2],l2[5],l2[9],l3[9]);
mux21_l mod42(shft[2],l2[6],l2[10],l3[10]);
mux21_l mod43(shft[2],l2[7],l2[11],l3[11]);
mux21_l mod44(shft[2],l2[8],l2[12],l3[12]);
mux21_l mod45(shft[2],l2[9],l2[13],l3[13]);
mux21_l mod46(shft[2],l2[10],l2[14],l3[14]);
mux21_l mod47(shft[2],l2[11],l2[15],l3[15]);


mux21_l mod48(shft[3],1'b0,l3[0],out[0]);
mux21_l mod49(shft[3],1'b0,l3[1],out[1]);
mux21_l mod50(shft[3],1'b0,l3[2],out[2]);
mux21_l mod51(shft[3],1'b0,l3[3],out[3]);
mux21_l mod52(shft[3],1'b0,l3[4],out[4]);
mux21_l mod53(shft[3],1'b0,l3[5],out[5]);
mux21_l mod54(shft[3],1'b0,l3[6],out[6]);
mux21_l mod55(shft[3],1'b0,l3[7],out[7]);
mux21_l mod56(shft[3],l3[0],l3[8],out[8]);
mux21_l mod57(shft[3],l3[1],l3[9],out[9]);
mux21_l mod58(shft[3],l3[2],l3[10],out[10]);
mux21_l mod59(shft[3],l3[3],l3[11],out[11]);
mux21_l mod60(shft[3],l3[4],l3[12],out[12]);
mux21_l mod61(shft[3],l3[5],l3[13],out[13]);
mux21_l mod62(shft[3],l3[6],l3[14],out[14]);
mux21_l mod63(shft[3],l3[7],l3[15],out[15]);



endmodule
