	module Instruction_Mem(Instruction_out, PCAdress);
	output reg [31:0] Instruction_out;
	input  [5:0] PCAdress;
	
	always @(PCAdress)
	begin
		case (PCAdress)
			32'd0:  Instruction_out = 32'b00000000001000000000000000000011; // mov ax,a
			32'd1:  Instruction_out = 32'b00000000001000000000000000000011; // mov bx,b
			32'd2:  Instruction_out = 32'b00010000011001000000000000100010; // add cx,ax,bx
			
			default: Instruction_out = 32'b00000000000000000000000000000000;
		endcase
	end
	endmodule 