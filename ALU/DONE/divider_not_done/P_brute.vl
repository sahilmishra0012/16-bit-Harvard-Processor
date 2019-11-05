`include"P_compdiv.vl"
`include"P_rca16.vl"
`include"P_creator.vl"
`include"P_shift.vl"
`include"P_dmux.vl"
`include"P_mu.vl"
`include"P_shift1.vl"
`include"P_m.vl"

module divisions(aa,divisor,dividend,quotient,remainder);

input [15:0] aa,divisor,dividend;
output [15:0] quotient,remainder;
//output [31:0] quotient;
wire [31:0] accu,accu1,accu2,accu4,accu5,accu6,accu8,accu9,accu10,accu11,accu12,accu13,accu14,accu15,accu16,accu17,accu18,accu19,accu20,accu21,accu22,accu23,accu24,accu25,accu26,accu27,accu28,accu29,accu30,accu31,accu32,accu33,accu34,accu35,accu36,accu37,accu38,accu39,accu40,accu41,accu42,accu43,accu44,accu45,accu46,accu47,accu48,accu49;
wire [15:0] divisor1,div1,div2,div4,div3,div5,div6,div7,div8,div9,div10,div11,div12,div13,div14,div15,div16,div17,div18,div19,div20,div21,div22,div23,div24,div25,div26,div27,div28,div29,div30,div31,div32,dive,dive1,accu3,accu7,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,outt1,outt2,outt3,outt4,outt5,outt6,outt7,outt8,outt9,outt10,outt11,outt12,outt13,out14,out15;
wire [15:0] ddd;
wire c;

create mod00(dividend,aa,accu);


//stage1


shift mod01(accu,accu1);
shift1 mod07(accu,accu2);
inverse mod02(divisor,divisor1);
rca16 mod03(accu1[31:16],divisor,c,div2);
rca16 mod04(accu1[31:16],divisor1,c2,div1);

mux mod05(accu[31],div1,div2,dive);
mu mod06(dive[15],accu1[15:0],accu2[15:0],accu3);

//stage2
create mod08(accu3,dive,accu6);

shift mod09(accu6,accu4);
shift1 mod10(accu6,accu5);
//inverse mod11(divisor,divisor1);
rca16 mod12(accu4[31:16],divisor,c,div4);
rca16 mod13(accu4[31:16],divisor1,c2,div3);

mux mod14(accu6[31],div3,div4,dive1);
mu mod15(dive1[15],accu4[15:0],accu5[15:0],accu7);


//stage3
create mod16(accu7,dive1,accu8);

shift mod17(accu8,accu9);
shift1 mod18(accu8,accu10);
//inverse mod11(divisor,divisor1);
rca16 mod19(accu9[31:16],divisor,c,div6);
rca16 mod20(accu9[31:16],divisor1,c2,div5);

mux mod21(accu8[31],div5,div6,out1);
mu mod22(out1[15],accu9[15:0],accu10[15:0],outt1);

//stage4
create mod23(outt1,out1,accu11);

shift mod24(accu11,accu12);
shift1 mod25(accu11,accu13);
//inverse mod11(divisor,divisor1);
rca16 mod26(accu12[31:16],divisor,c,div8);
rca16 mod27(accu12[31:16],divisor1,c2,div7);

mux mod28(accu11[31],div7,div8,out2);
mu mod29(out2[15],accu12[15:0],accu13[15:0],outt2);

//stage5
create mod30(outt2,out2,accu14);

shift mod31(accu14,accu15);
shift1 mod32(accu14,accu16);
//inverse mod11(divisor,divisor1);
rca16 mod33(accu15[31:16],divisor,c,div10);
rca16 mod34(accu15[31:16],divisor1,c2,div9);

mux mod35(accu14[31],div9,div10,out3);
mu mod36(out3[15],accu15[15:0],accu16[15:0],outt3);

//stage6
create mod37(outt3,out3,accu17);

shift mod38(accu17,accu18);
shift1 mod39(accu17,accu19);
//inverse mod11(divisor,divisor1);
rca16 mod40(accu18[31:16],divisor,c,div12);
rca16 mod41(accu18[31:16],divisor1,c2,div11);

mux mod42(accu17[31],div11,div12,out4);
mu mod43(out4[15],accu18[15:0],accu19[15:0],outt4);

//stage7
create mod44(outt4,out4,accu20);

shift mod45(accu20,accu21);
shift1 mod46(accu20,accu22);
//inverse mod11(divisor,divisor1);
rca16 mod47(accu21[31:16],divisor,c,div14);
rca16 mod48(accu21[31:16],divisor1,c2,div13);

mux mod49(accu20[31],div13,div14,out5);
mu mod50(out5[15],accu21[15:0],accu22[15:0],outt5);

//stage8
create mod51(outt5,out5,accu23);

shift mod52(accu23,accu24);
shift1 mod53(accu23,accu25);
//inverse mod11(divisor,divisor1);
rca16 mod54(accu24[31:16],divisor,c,div16);
rca16 mod55(accu24[31:16],divisor1,c2,div15);

mux mod56(accu23[31],div15,div16,out6);
mu mod57(out6[15],accu24[15:0],accu25[15:0],outt6);

//stage9
create mod58(outt6,out6,accu26);

shift mod59(accu26,accu27);
shift1 mod60(accu26,accu28);
//inverse mod61(divisor,divisor1);
rca16 mod62(accu27[31:16],divisor,c,div18);
rca16 mod63(accu27[31:16],divisor1,c2,div17);

mux mod64(accu26[31],div17,div18,out7);
mu mod65(out7[15],accu27[15:0],accu28[15:0],outt7);

//stage10
create mod66(outt7,out7,accu29);

shift mod67(accu29,accu30);
shift1 mod68(accu29,accu31);
//inverse mod(divisor,divisor1);
rca16 mod69(accu30[31:16],divisor,c,div20);
rca16 mod70(accu30[31:16],divisor1,c2,div19);

mux mod71(accu29[31],div19,div20,out8);
mu mod72(out8[15],accu30[15:0],accu31[15:0],outt8);

//stage11
create mod73(outt8,out8,accu32);

shift mod74(accu32,accu33);
shift1 mod75(accu32,accu34);
//inverse mod11(divisor,divisor1);
rca16 mod76(accu33[31:16],divisor,c,div22);
rca16 mod77(accu33[31:16],divisor1,c2,div21);

mux mod78(accu32[31],div21,div22,out9);
mu mod79(out9[15],accu33[15:0],accu34[15:0],outt9);

//stage12
create mod80(outt9,out9,accu35);

shift mod81(accu35,accu36);
shift1 mod82(accu35,accu37);
//inverse mod11(divisor,divisor1);
rca16 mod83(accu36[31:16],divisor,c,div24);
rca16 mod84(accu36[31:16],divisor1,c2,div23);

mux mod85(accu35[31],div23,div24,out10);
mu mod86(out10[15],accu36[15:0],accu37[15:0],outt10);

//stage13
create mod87(outt10,out10,accu38);

shift mod88(accu38,accu39);
shift1 mod89(accu38,accu40);
//inverse mod11(divisor,divisor1);
rca16 mod90(accu39[31:16],divisor,c,div26);
rca16 mod91(accu39[31:16],divisor1,c2,div25);

mux mod92(accu38[31],div25,div26,out11);
mu mod93(out11[15],accu39[15:0],accu40[15:0],outt11);

//stage14
create mod94(outt11,out11,accu41);

shift mod95(accu41,accu42);
shift1 mod96(accu41,accu43);
//inverse mod1(divisor,divisor1);
rca16 mod97(accu42[31:16],divisor,c,div28);
rca16 mod98(accu42[31:16],divisor1,c2,div27);

mux mod99(accu41[31],div27,div28,out12);
mu mod100(out12[15],accu42[15:0],accu43[15:0],outt12);

//stage15
create mod101(outt12,out12,accu44);

shift mod102(accu44,accu45);
shift1 mod103(accu44,accu46);
//inverse mod11(divisor,divisor1);
rca16 mod104(accu45[31:16],divisor,c,div30);
rca16 mod105(accu45[31:16],divisor1,c2,div29);

mux mod106(accu44[31],div29,div30,out13);
mu mod107(out13[15],accu45[15:0],accu46[15:0],outt13);

//stage16
create mod108(outt13,out13,accu47);

shift mod109(accu47,accu48);
shift1 mod110(accu47,accu49);
//inverse mod11(divisor,divisor1);
rca16 mod111(accu48[31:16],divisor,c,div32);
rca16 mod112(accu48[31:16],divisor1,c2,div31);

mux mod113(accu47[31],div31,div32,out14);
mu mod114(out14[15],accu48[15:0],accu49[15:0],quotient);

//for remainder

rca16 mod116(out14,divisor,c,out15);
m mod115(out14[15],out14,out15,remainder);

/*
//stage16
create mod(accu7,dive1,accu8);

shift mod09(accu8,accu9);
shift1 mod10(accu8,accu10);
//inverse mod11(divisor,divisor1);
rca16 mod12(accu9[31:16],divisor,c,div6);
rca16 mod13(accu9[31:16],divisor1,c2,div5);

mux mod14(accu8[31],div5,div6,out1);
mu mod15(out11[15],accu9[15:0],accu10[15:0],outt1);
*/


endmodule

