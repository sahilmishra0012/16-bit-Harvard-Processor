module memory(address,out,read);
integer i;
input [5:0] address;
output reg [15:0] out;
input read;
reg [15:0] memory [255:0];			
initial
begin
	for(i=0;i<=255;i=i+1)  
    memory[i] = 16'b0;
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