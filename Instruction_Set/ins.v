	module Instruction_Mem(Instruction_out, PCAdress);
	output reg [15:0] Instruction_out;
	input  [15:0] PCAdress;
	
	always @(PCAdress)
	begin
		case (PCAdress)
			16'd0:  Instruction_out = 16'b0; // mov ax,a
			16'd1:  Instruction_out = 16'b0; // mov bx,b
			16'd2:  Instruction_out = 16'b0; // add cx,ax,bx
			
			default: Instruction_out = 16'b0000000000000000;
		endcase
	end
	endmodule 