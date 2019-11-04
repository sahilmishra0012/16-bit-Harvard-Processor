`include"ALU/AND Gate/and.v"
`include"ALU/barrel_left/barrel16.v"
`include"ALU/barrel_right/barrel16r.v"
`include"ALU/NAND Gate/nand.v"
`include"ALU/NOR Gate/nor.v"
`include"ALU/NOT Gate/not.v"
`include"ALU/OR Gate/or.v"
`include"ALU/XNOR Gate/xnor.v"
`include"ALU/XOR Gate/xor.v"
`include"ALU/Recursive Adder/Padder.vl"
`include"ALU/Recursive Subtractor/Padder.vl"
`include "ALU/Carry Save Array Multiplier/multiplier16bit.v"
`include "ALU/negative/negate.v"


module mux21(input [31:0]code, output out);
reg  out;
reg select,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd;
select=code[31:26];
reg c;
always@(select)
begin
if(select == 000000)
{
    Rdst2=code[25:21];
    Rsrc2=code[15:0];
}
if(select == 000001)
{
    Rdst2=code[25:21];
    Rsrc2=code[4:0];
}
if(select == 000010)
{
    Rdst2=code[25:21];
    RsrcAdd=code[7:0];
}
if(select == 000011)
{
    RdstAdd=code[25:18];
    Rsrc2=code[4:0];
}
if(select == 000100)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    c=2'b00;
    adder_rd mod100(Rsrc2,Rsrc1,c,Rdst1);
}
if(select == 000101)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    c=2'b00;
    sub_rd mod101(Rsrc2,Rsrc1,c,Rdst1);

}
if(select == 000110)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    negative mod110(Rsrc1,Rdst1);
}
if(select == 000111)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    multiplier mod111(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001000)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001001)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    or_gate mod1001(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001010)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    xor_gate mod1010(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001011)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    nand_gate mod1011(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001100)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    nor_gate mod1100(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001101)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    xnor_gate mod1101(Rsrc1,Rsrc2,Rdst1);
}
if(select == 001110)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    not_gate mod1110(Rsrc1,Rdst1);
}
if(select == 001111)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    barrel_left mod1111(in,shft,out);
}
if(select == 010000)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
    barrel_right mod10000(in,shft,out);
}

end

endmodule
