`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Program Counter/pc.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Instruction_Set/ins.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/alu.v"
module upcounter_testbench();
reg clk, reset;
wire [5:0] counter;
wire [31:0] Instruction_out;
wire [31:0] out;

up_counter dut(clk, reset, counter);
Instruction_Mem mem1(Instruction_out, counter);
alumodule alu1(Instruction_out,clk,out);
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
#40 $finish;
initial
$monitor("Instruction Number => %d || Instruction => %b || Output => %b",counter,Instruction_out,out);
endmodule 