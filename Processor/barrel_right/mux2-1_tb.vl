`include"barrel16r.vl"

module mux21_tb;

reg [3:0]shft;
reg [15:0]in;
wire [15:0]out;

barrel_right mod0(in,shft,out);

initial
begin
#1
in=16'b100000000000000;
shft=4'b0000;

#2
in=16'b100000000000000;
shft=4'b0010;

#3
in=16'b100000000000000;
shft=4'b0011;

#4
in=16'b100000000000000;
shft=4'b1111;
end

initial
$monitor("%b, %b",out,shft[1]);

endmodule
