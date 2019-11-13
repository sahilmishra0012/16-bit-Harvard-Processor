module reg(address,out,read);
input [4:0] address;
output reg [15:0] out;
input read;
reg [15:0] memory [31:0];					
initial
begin
	reg_array[0]=16'd0;
    reg_array[1]=16'd1;
    reg_array[2]=16'd2;
    reg_array[3]=16'd3;
    reg_array[4]=16'd4;
    reg_array[5]=16'd5;
    reg_array[6]=16'd6;
    reg_array[7]=16'd7;
    reg_array[8]=16'd8;
    reg_array[9]=16'd9;
    reg_array[10]=16'd10;
    reg_array[11]=16'd11;
    reg_array[12]=16'd12;
    reg_array[13]=16'd13;
    reg_array[14]=16'd14;
    reg_array[15]=16'd15;
    reg_array[16]=16'd16;
    reg_array[17]=16'd17;
    reg_array[18]=16'd18;
    reg_array[19]=16'd19;
    reg_array[20]=16'd20;
    reg_array[21]=16'd21;
    reg_array[22]=16'd22;
    reg_array[23]=16'd23;
    reg_array[24]=16'd24;
    reg_array[25]=16'd25;
    reg_array[26]=16'd26;
    reg_array[27]=16'd27;
    reg_array[28]=16'd28;
    reg_array[29]=16'd29;
    reg_array[30]=16'd30;
    reg_array[31]=16'd31;
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