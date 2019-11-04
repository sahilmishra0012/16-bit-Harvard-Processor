module mux21(select,in,in1,out);

input  select;
input  in0,in1,in2,in3,in4,in5,in6,in7,in8;
input  in9,in10,in11,in12,in13,in14,in15,in16,in17;
output out;
reg  out;
wire  select;

always@(select or in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or in9 or in10 or in11 or in12 or in13 or in14 or in15 or in16 or in17)
begin
if(select == 000000)
out=in0;
if(select == 000001)
out=in1;
if(select == 000010)
out=in2;
if(select == 000011)
out=in3;
if(select == 000100)
out=in4;
if(select == 000101)
out=in5;
if(select == 000110)
out=in6;
if(select == 000111)
out=in7;
if(select == 001000)
out=in8;
if(select == 001001)
out=in9;
if(select == 001010)
out=in10;
if(select == 001011)
out=in11;
if(select == 001100)
out=in12;
if(select == 001101)
out=in13;
if(select == 001110)
out=in14;
if(select == 001111)
out=in15;
if(select == 010000)
out=in16;
if(select == 010001)
out=in17;
end

endmodule
