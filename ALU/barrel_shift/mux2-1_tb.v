`include"barrel16_left.v"

module mux21_tb;

reg [3:0]shft;
reg [15:0]in;
wire [15:0]out;

barrel_left mod0(in,shft,out);

initial
begin
in=16'b000000000001000;
shft=4'b001;

end

initial
$monitor("Input %b : Output %b",in,out);

endmodule
