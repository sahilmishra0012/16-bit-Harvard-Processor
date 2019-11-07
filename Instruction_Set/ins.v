module instruction_set();
input [5:0] opcode;
input  [5:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
input [8:0] RsrcAdd,RdstAdd;
output [63:0][31:0] in;
wire [63:0][31:0] in;
assign in[63][31:28]=opcode[5:0];


// always@(select)
//     case(select)
//         000000: begin
//             Rdst2=code[25:21];
//             Rsrc2=code[15:0];
//         end


//         000001: begin
//             Rdst2=code[25:21];
//             Rsrc2=code[4:0];
//         end
//         000010: begin
//             Rdst2=code[25:21];
//             RsrcAdd=code[7:0];
//         end
//         000011: begin
        
//             RdstAdd=code[25:18];
//             Rsrc2=code[4:0];
//         end
//         000100: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             c=2'b00;
//             // adder_rd mod100(Rsrc2,Rsrc1,c,Rdst1);
//         end
//         000101: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             c=2'b00;
//             // sub_rd mod101(Rsrc2,Rsrc1,c,Rdst1);
//         end
//         000110: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // negative mod110(Rsrc1,Rdst1);
//         end
//         000111: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // multiplier mod111(Rsrc2,Rsrc1,Rdst1);
//         end
//         001000: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//         end
//         001001: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // or_gate mod1001(Rsrc2,Rsrc1,Rdst1);
//         end
//         001010: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // xor_gate mod1010(Rsrc2,Rsrc1,Rdst1);
//         end
//         001011: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // nand_gate mod1011(Rsrc2,Rsrc1,Rdst1);
//         end
//         001100: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // nor_gate mod1100(Rsrc2,Rsrc1,Rdst1);
//         end
//         001101: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // xnor_gate mod1101(Rsrc2,Rsrc1,Rdst1);
//         end
//         001110: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // not_gate mod1110(Rsrc1,Rdst1);
//         end
//         001111: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // barrel_left mod1111(Rsrc2,Rsrc1,Rdst1);
//         end
//         010000: begin
//             Rdst2=code[25:21];
//             Rdst1=code[20:16];
//             Rsrc2=code[9:5];
//             Rsrc1=code[4:0];
//             // barrel_right mod10000(Rsrc2,Rsrc1,Rdst1);
//         end
//     endcase

endmodule
