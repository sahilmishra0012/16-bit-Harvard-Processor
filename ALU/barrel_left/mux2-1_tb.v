`include"barrel16.vl"

module mux21_tb;

reg [3:0]shft;
reg [15:0]in;
wire [15:0]out;

barrel_left mod0(in,shft,out);

initial
begin

in=16'b10;
shft=4'b0100;
end

initial
$monitor("%b, %b",out,shft[1]);

endmodule
