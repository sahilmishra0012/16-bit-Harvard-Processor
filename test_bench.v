`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/Program Counter/pc.v"
module upcounter_testbench();
reg clk, reset;
wire [5:0] counter;

up_counter dut(clk, reset, counter);
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
#1930 $finish;
initial
$monitor("Out => %d",counter);
endmodule 