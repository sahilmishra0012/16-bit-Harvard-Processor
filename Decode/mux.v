`include"ALU/AND Gate/and.v"
`include"ALU/barrel_left/barrel16.v"
`include"ALU/barrel_right/barrel16r.v"
`include"ALU/NAND Gate/nand.v"
`include"ALU/NOR Gate/nor.v"
`include"ALU/NOT Gate/not.v"
`include"ALU/OR Gate/or.v"
`include"ALU/XNOR Gate/xnor.v"
`include"ALU/XOR Gate/xor.v"


module mux21(input [31:0]code, output out);
reg  out;
reg select,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd;
select=code[31:26];

always@(select or in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or in9 or in10 or in11 or in12 or in13 or in14 or in15 or in16 or in17)
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
}
if(select == 000101)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 000110)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 000111)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
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
}
if(select == 001010)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001011)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001100)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001101)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001110)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 001111)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 010000)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
if(select == 010001)
{
    Rdst2=code[25:21];
    Rdst1=code[20:16];
    Rsrc2=code[9:5];
    Rsrc1=code[4:0];
}
end

endmodule
