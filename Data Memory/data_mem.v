module memory(address,out,read);

input [5:0] address;
input [15:0] in;
output reg [15:0] out;
input read;
reg [15:0] memory [31:0];			

initial
begin
memory[0]=16'd0;
memory[1]=16'd1;
memory[2]=16'd2;
memory[3]=16'd3;
memory[4]=16'd4;
memory[5]=16'd5;
memory[6]=16'd6;
memory[7]=16'd7;
memory[8]=16'd8;
memory[9]=16'd9;
memory[10]=16'd10;
memory[11]=16'd11;
memory[12]=16'd12;
memory[13]=16'd13;
memory[14]=16'd14;
memory[15]=16'd15;
memory[16]=16'd16;
memory[17]=16'd17;
memory[18]=16'd18;
memory[19]=16'd19;
memory[20]=16'd20;
memory[21]=16'd21;
memory[22]=16'd22;
memory[23]=16'd23;
memory[24]=16'd24;
memory[25]=16'd25;
memory[26]=16'd26;
memory[27]=16'd27;
memory[28]=16'd28;
memory[29]=16'd29;
memory[30]=16'd30;
memory[31]=16'd31;
end


always @(*)

begin

	if(read)
	begin
	out=memory[address];
	end

	else
	begin	
	memory[address]=out;
	out=memory[address];  		
	end

end


endmodule