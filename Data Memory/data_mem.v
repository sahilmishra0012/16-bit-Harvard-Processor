module memory_one(address,clock,reset,in,out,read);
input [4:0] address;
input clock,reset;
input [15:0] in;
output reg [15:0] out;
input read;
reg [15:0] memo [31:0];					

always @(posedge clock)
begin
	if(read==1)
	begin
		out=memo[address];
	end
	else
	begin	
		memo[address]=in;
	end
end
endmodule
