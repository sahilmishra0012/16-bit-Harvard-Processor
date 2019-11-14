module memory_one(address,clock,reset,in,out,read);
input [4:0] address;
input clock,reset;
input [15:0] in;
output reg [15:0] out;
input read;
reg [15:0] memo [31:0];					

always @(negedge clock or posedge reset)
begin
if(reset)
	begin
	memo[0]=16'd0;
	memo[1]=16'd1;
	memo[2]=16'd2;
	memo[3]=16'd3;
	memo[4]=16'd4;
	memo[5]=16'd5;
	memo[6]=16'd6;
	memo[7]=16'd7;
	memo[8]=16'd8;
	memo[9]=16'd9;
	memo[10]=16'd10;
	memo[11]=16'd11;
	memo[12]=16'd12;
	memo[13]=16'd13;
	memo[14]=16'd14;
	memo[15]=16'd15;
	memo[16]=16'd16;
	memo[17]=16'd17;
	memo[18]=16'd18;
	memo[19]=16'd19;
	memo[20]=16'd20;
	memo[21]=16'd21;
	memo[22]=16'd22;
	memo[23]=16'd23;
	memo[24]=16'd24;
	memo[25]=16'd25;
	memo[26]=16'd26;
	memo[27]=16'd27;
	memo[28]=16'd28;
	memo[29]=16'd29;
	memo[30]=16'd30;
	memo[31]=16'd31;
	out<=16'b0;
end
	if(read==1)
	begin
		out<=memo[address];
	end
	else
	begin	
		memo[address]<=in;
	end
end
endmodule
