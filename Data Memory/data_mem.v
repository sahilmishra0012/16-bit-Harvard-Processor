module memory(address,clock,out,read);
input [4:0] address;
input clock;
output reg [15:0] out;
input read;
reg [15:0] memory [31:0];					
initial
begin
	memory[5'd0]=16'd0;
	memory[5'd1]=16'd1;
	memory[5'd2]=16'd2;
	memory[5'd3]=16'd3;
	memory[5'd4]=16'd4;
	memory[5'd5]=16'd5;
	memory[5'd6]=16'd6;
	memory[5'd7]=16'd7;
	memory[5'd8]=16'd8;
	memory[5'd9]=16'd9;
	memory[5'd10]=16'd10;
	memory[5'd11]=16'd11;
	memory[5'd12]=16'd12;
	memory[5'd13]=16'd13;
	memory[5'd14]=16'd14;
	memory[5'd15]=16'd15;
	memory[5'd16]=16'd16;
	memory[5'd17]=16'd17;
	memory[5'd18]=16'd18;
	memory[5'd19]=16'd19;
	memory[5'd20]=16'd20;
	memory[5'd21]=16'd21;
	memory[5'd22]=16'd22;
	memory[5'd23]=16'd23;
	memory[5'd24]=16'd24;
	memory[5'd25]=16'd25;
	memory[5'd26]=16'd26;
	memory[5'd27]=16'd27;
	memory[5'd28]=16'd28;
	memory[5'd29]=16'd29;
	memory[5'd30]=16'd30;
	memory[5'd31]=16'd31;
end
always @(posedge clock)
begin
	if(read==1)
	begin
		out=memory[address];
	end
	else
	begin	
		memory[address]=out;
	end
end
endmodule
