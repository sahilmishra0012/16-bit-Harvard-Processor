`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Program Counter/pc.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Instruction_Set/ins.v"
module upcounter_testbench();
reg clk, reset;
wire [5:0] counter;
wire [5:0] ins_padder;
wire [31:0] Instruction_out;

up_counter dut(clk, reset, counter);
assign ins_padder=counter;
Instruction_Mem mem1(Instruction_out, ins_padder);
initial 
begin 
clk=0;
forever #5 clk=~clk;
end
initial
begin
reset=1;
#20;
reset=0;
end
initial
#650 $finish;
initial
$monitor("Instruction Number => %d || Instruction => %b",counter,Instruction_out);
endmodule 