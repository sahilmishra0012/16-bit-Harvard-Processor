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
module alumodule(input [31:0] code,input clock,input reset,output [31:0] out);
wire [15:0] in;
reg  [31:0] out;
wire [19:0] outp;
wire [15:0] out1;
wire [15:0] out2;
wire [15:0] sum;
wire [15:0] diff;
wire [15:0] negate;
wire [31:0] multiplied;
wire [15:0] divi;
wire [15:0] or_gat;
wire [15:0] xor_gat;
wire [15:0] nand_gat;
wire [15:0] nor_gat;
wire [15:0] xnor_gat;
wire [15:0] not_gat;
wire [15:0] left_sft;
wire [15:0] right_sft;
wire [5:0] select;
wire [4:0] Rdst2;
wire [4:0] Rdst1;
wire [4:0] Rsrc2;
wire [4:0] Rsrc1;
wire [7:0] RsrcAdd;
wire [7:0] RdstAdd;
wire [15:0] immediate;
wire [15:0] a,b;
assign select[5:0]=code[31:26];


decoder dc1(code,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd,immediate);
memory_one mem1(Rsrc2,clock,reset,in,b,1'b1);//Read Output
memory_one mem2(Rsrc1,clock,reset,in,a,1'b1);// Read Output

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
always@(*)
begin
    case(select)
        6'b000000: begin//MOV
        out[31:16]=16'b0;
        out[15:0]=immediate;
        end
        6'b000001: begin//MOV
        out[31:16]=16'b0;
        out[15:0]=Rsrc1;
        end
        6'b000100: begin//ADD
        out[31:16]=16'b0;
        out[15:0]=sum;
        end
        6'b000101: begin//SUB
        out[31:16]=16'b0;
        out[15:0]=diff;
        end
        6'b000110: begin//NEG
        out[31:16]=16'b0;
        out[15:0]=negate;
        end
        6'b000111: begin//MUL
        out[31:0]=multiplied;
        end
        6'b001000: begin//DIV
        out[31:16]=16'b0;
        out[15:0]=divi;
        end
        6'b001001: begin//OR
        out[31:16]=16'b0;
        out[15:0]=or_gat;
        end
        6'b001010: begin//XOR
        out[31:16]=16'b0;
        out[15:0]=xor_gat;
        end
        6'b001011: begin//NAND
        out[31:16]=16'b0;
        out[15:0]=nand_gat;
        end
        6'b001100: begin//NOR
        out[31:16]=16'b0;
        out[15:0]=nor_gat;
        end
        6'b001101: begin//XNOR
        out[31:16]=16'b0;
        out[15:0]=xnor_gat;
        end
        6'b001110: begin//NOT
        out[31:16]=16'b0;
        out[15:0]=not_gat;
        end
        6'b001111: begin//LLSH
        out[31:16]=16'b0;
        out[15:0]=left_sft;
        end
        6'b010000: begin//LRSH
        out[31:16]=16'b0;
        out[15:0]=right_sft;
        end
    endcase
    end
    assign out1[15:0]=out[15:0];
    assign out2[15:0]=out[31:15];
    memory_one mem21(Rdst1,clock,reset,out1,in,1'b0);//Write
    memory_one mem31(Rdst2,clock,reset,out2,in,1'b0);//Write

endmodule
