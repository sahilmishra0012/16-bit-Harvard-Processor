`include"half.vl"

module inverse(a,k);

input [15:0] a;
output [15:0] k;
wire [15:0] b,c;

assign b[0]=~a[0];
assign b[1]=~a[1];
assign b[2]=~a[2];
assign b[3]=~a[3];
assign b[4]=~a[4];
assign b[5]=~a[5];
assign b[6]=~a[6];
assign b[7]=~a[7];
assign b[8]=~a[8];
assign b[9]=~a[9];
assign b[10]=~a[10];
assign b[11]=~a[11];
assign b[12]=~a[12];
assign b[13]=~a[13];
assign b[14]=~a[14];
assign b[15]=~a[15];

ha mod0(b[0],1'b1,c[0],k[0]);
ha mod1(b[1],c[0],c[1],k[1]);
ha mod2(b[2],c[1],c[2],k[2]);
ha mod3(b[3],c[2],c[3],k[3]);
ha mod4(b[4],c[3],c[4],k[4]);
ha mod5(b[5],c[4],c[5],k[5]);
ha mod6(b[6],c[5],c[6],k[6]);
ha mod7(b[7],c[6],c[7],k[7]);
ha mod8(b[8],c[7],c[8],k[8]);
ha mod9(b[9],c[8],c[9],k[9]);
ha mod10(b[10],c[9],c[10],k[10]);
ha mod11(b[11],c[10],c[11],k[11]);
ha mod12(b[12],c[11],c[12],k[12]);
ha mod13(b[13],c[12],c[13],k[13]);
ha mod14(b[14],c[13],c[14],k[14]);
ha mod16(b[15],c[14],c[15],k[15]);

endmodule


