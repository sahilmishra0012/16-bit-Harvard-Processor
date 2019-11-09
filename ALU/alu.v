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
module muxfinal();
wire [5:0] select;
input [31:0] code;
output  [5:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
output [15:0] a,b;
output [8:0] RsrcAdd,RdstAdd;
output [15:0] immediate;
assign select[5:0]=code[31:26];
// Rdst2=code[25:21];
// Rdst1=code[20:16];
// Rsrc2=code[9:5];
// Rsrc1=code[4:0];
// rrel_left(in,shft,out);

decoder dc1(code,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd,immediate);
memory mem1(Rsrc2,b,1'b1);
memory mem2(Rsrc1,a,1'b1);

output [15:0] sum;
create_tb mod00(b,a,2'b0,sum);

output [15:0] diff;
create_tb mod01(b,~a,2'b0,diff);

output [15:0] negate;
negative neg(a,negate);

output [31:0] multiplied;
multiplier mult(a,b,multiplied);

output [15:0] divi;
Divide div(b,a,divi);

output [15:0] or_gat;
or_gate or1(b,a,or_gat);

output [15:0] xor_gat;
xor_gate xor1(b,a,xor_gat);

output [15:0] nand_gat;
nand_gate nand1(b,a,nand_gat);

output [15:0] nor_gat;
nor_gate nor1(b,a,nor_gat);

output [15:0] xnor_gat;
xnor_gate xnor1(b,a,xnor_gat);

output [15:0] not_gat;
not_gate not1(a,not_gat);

// memory mem3(Rdst1,d,1'b0);

// always@(select)
//     case(select)
//         000000: begin//MOV
            
//         end
//         000001: begin//MOV
            
//         end
//         000010: begin//LOAD
            
//         end
//         000011: begin//STORE
            
//         end
//         000100: begin//ADD
//             c=2'b00;
            
//         end
//         000101: begin//SUB
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             c=2'b00;
//         end
//         000110: begin//NEG
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         000111: begin//MUL
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001000: begin//DIV
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001001: begin//OR
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001010: begin//XOR
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001011: begin//NAND
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001100: begin//NOR
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001101: begin//XNOR
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001110: begin//NOT
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001111: begin//LLSH
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         010000: begin//LRSH
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//     endcase

endmodule
