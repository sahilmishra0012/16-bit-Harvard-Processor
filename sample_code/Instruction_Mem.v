module Instruction_Mem(Instruction_out, PCAdress);
  output reg [15:0] Instruction_out;
  input  [15:0] PCAdress;
  
  always @(PCAdress)
  begin
    case (PCAdress)
		8'h0:  Instruction_out = 16'hc000; // LDI R0,0
		8'h1:  Instruction_out = 16'ha802; // STM R0,2 #set direction as input CHECK ADDRESS
		8'h2:  Instruction_out = 16'hc66b; // LDI R0,1643 #11 bit -405
		8'h3:  Instruction_out = 16'hec00; // LDI R5,1024 #11 bit -1024
		8'h4:  Instruction_out = 16'hd119; // LDI R2,281
		8'h5:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'h6:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'h7:  Instruction_out = 16'h696d; // ADD R5,R5,R5
		8'h8:  Instruction_out = 16'h68aa; // ADD R2,R5,R2
		8'h9:  Instruction_out = 16'h7168; // SHL R5,R5
		8'ha:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'hb:  Instruction_out = 16'h7168; // SHL R5,R5
		8'hc:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'hd:  Instruction_out = 16'h6368; // NEG R5,R5
		8'he:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'hf:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'h10:  Instruction_out = 16'ha818; // STM R0,24 #store special values
		8'h11:  Instruction_out = 16'haa19; // STM R2,25
		8'h12:  Instruction_out = 16'had1a; // STM R5,26
		8'h13:  Instruction_out = 16'hf014; // LDI R6,20 #load R6 with jump address, main loop
		8'h14:  Instruction_out = 16'ha003; // LDM R0,3 #load input to R0 CHECK ADDRESS
		8'h15:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h16:  Instruction_out = 16'h1901; // ANDI R1,1 #mask bit 1 of input
		8'h17:  Instruction_out = 16'hb108; // BRZ R1,8 #if bit1 of input was on then all off
		8'h18:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h19:  Instruction_out = 16'h1902; // ANDI R1,2 #mask bit 2 of input
		8'h1a:  Instruction_out = 16'hb110; // BRZ R1,16 #if bit2 of input was on then all on
		8'h1b:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h1c:  Instruction_out = 16'h1904; // ANDI R1,4 #mask bit 3 of input
		8'h1d:  Instruction_out = 16'hb119; // BRZ R1,25 #if bit3 of input was on then display
		8'h1e:  Instruction_out = 16'h9b80; // JMPR R6 #end main loop
		8'h1f:  Instruction_out = 16'hc000; // LDI R0,0 #start all off
		8'h20:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h21:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h22:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h23:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h24:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all off
		8'h25:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h26:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h27:  Instruction_out = 16'h1f01; // ANDI R7,1
		8'h28:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 1 is on
		8'h29:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h2a:  Instruction_out = 16'hc000; // LDI R0,0 #start all on
		8'h2b:  Instruction_out = 16'h6400; // DEC R0,R0
		8'h2c:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h2d:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h2e:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h2f:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h30:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all on
		8'h31:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h32:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h33:  Instruction_out = 16'h1f02; // ANDI R7,2
		8'h34:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 2 is on
		8'h35:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h36:  Instruction_out = 16'ha018; // LDM R0,24 #start display
		8'h37:  Instruction_out = 16'ha219; // LDM R2,25
		8'h38:  Instruction_out = 16'ha51a; // LDM R5,26
		8'h39:  Instruction_out = 16'h5850; // MOVA R1,R2
		8'h3a:  Instruction_out = 16'h2940; // ORI R1,64
		8'h3b:  Instruction_out = 16'hf808; // LDI R7,8
		8'h3c:  Instruction_out = 16'h6c4f; // SUB R1,R1,R7
		8'h3d:  Instruction_out = 16'hf801; // LDI R7,1
		8'h3e:  Instruction_out = 16'h4ccf; // XOR R3,R1,R7
		8'h3f:  Instruction_out = 16'h6cdd; // SUB R3,R3,R5
		8'h40:  Instruction_out = 16'h5900; // MOVA R4,R0 
		8'h41:  Instruction_out = 16'he800; // LDI R5,0 #end display
		8'h42:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h43:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h44:  Instruction_out = 16'h1f04; // ANDI R7,4
		8'h45:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 3 is on
		8'h46:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop


      default: Instruction_out = 16'b0000000000000000;
    endcase
  end
endmodule 
