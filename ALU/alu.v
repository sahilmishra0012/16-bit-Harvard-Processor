`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/barrel_shift/barrel16_left.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/barrel_shift/barrel16_right.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Decode/decode.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Recursive Adder/Padder.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Data Memory/data_mem.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/negative/negate_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Carry Save Array Multiplier/multiplier16bit.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/divider/Divider.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/OR Gate/or_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/XOR Gate/xor_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/NAND Gate/nand_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/NOR Gate/nor_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/XNOR Gate/xnor_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/NOT Gate/not_custom.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Shift/right_shift.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/Shift/left_shift.v"
module alumodule(
input [31:0] code,
output [15:0] sum,
output [15:0] diff,
output [15:0] negate,
output [31:0] multiplied,
output [15:0] divi,
output [15:0] or_gat,
output [15:0] xor_gat,
output [15:0] nand_gat,
output [15:0] nor_gat,
output [15:0] xnor_gat,
output [15:0] not_gat,
output [15:0] left_sft,
output [15:0] right_sft,
output wire [5:0] select
);
wire [5:0] Rdst2;
wire [5:0] Rdst1;
wire [5:0] Rsrc2;
wire [5:0] Rsrc1;
wire [7:0] RsrcAdd;
wire [7:0] RdstAdd;
wire [15:0] immediate;
wire [15:0] a,b;
assign select[5:0]=code[31:26];


decoder dc1(code,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd,immediate);
memory mem1(Rsrc2,b,1'b1);
memory mem2(Rsrc1,a,1'b1);

create_tb mod00(b,a,2'b0,sum);

create_tb mod01(b,~a,2'b0,diff);

negative neg(a,negate);

multiplier mult(a,b,multiplied);

Divide div(b,a,divi);

or_gate or1(b,a,or_gat);

xor_gate xor1(b,a,xor_gat);

nand_gate nand1(b,a,nand_gat);

nor_gate nor1(b,a,nor_gat);

xnor_gate xnor1(b,a,xnor_gat);

not_gate not1(a,not_gat);

left lft1(b,a,left_sft);

right rght1(b,a,right_sft);

endmodule
