module Instruction_Mem(Instruction_out, PCAdress);
  output reg [15:0] Instruction_out;
  input  [15:0] PCAdress;
  
  always @(PCAdress)
  begin
    case (PCAdress)
		16'd0:  Instruction_out = 16'b0; // mov ax,a
		16'd1:  Instruction_out = 16'b0; // mov bx,b
		16'd2:  Instruction_out = 16'b0; // add cx,ax,bx
		// 16'd3:  Instruction_out = 16'b; // LDI R5,1024 #11 bit -1024
		// 16'd4:  Instruction_out = 16'b; // LDI R2,281
		// 16'd5:  Instruction_out = 16'b; // ADD R2,R2,R5
		// 16'd6:  Instruction_out = 16'b; // ADD R0,R0,R5
		// 16'd7:  Instruction_out = 16'b; // ADD R5,R5,R5
		
		default: Instruction_out = 16'b0000000000000000;
    endcase
  end
endmodule 