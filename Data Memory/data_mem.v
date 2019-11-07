module data_memory();
output [255:0][16:0] in;
reg [255:0][16:0] in;

always@(select)
    case(select)
        000000: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][15:0]=immediate[15:0];
        end


        000001: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][4:0]=Rsrc2[5:0];
        end
        000010: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][7:0]=RsrcAdd;
        end
        000011: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:18]=RdstAdd;
            in[63][4:0]=Rsrc2[5:0];
        end
        000100: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // adder_rd mod100(Rsrc2,Rsrc1,c,Rdst1);
        end
        000101: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // sub_rd mod101(Rsrc2,Rsrc1,c,Rdst1);
        end
        000110: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // negative mod110(Rsrc1,Rdst1);
        end
        000111: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // multiplier mod111(Rsrc2,Rsrc1,Rdst1);
        end
        001000: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
        end
        001001: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // or_gate mod1001(Rsrc2,Rsrc1,Rdst1);
        end
        001010: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // xor_gate mod1010(Rsrc2,Rsrc1,Rdst1);
        end
        001011: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // nand_gate mod1011(Rsrc2,Rsrc1,Rdst1);
        end
        001100: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // nor_gate mod1100(Rsrc2,Rsrc1,Rdst1);
        end
        001101: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // xnor_gate mod1101(Rsrc2,Rsrc1,Rdst1);
        end
        001110: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // not_gate mod1110(Rsrc1,Rdst1);
        end
        001111: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // barrel_left mod1111(Rsrc2,Rsrc1,Rdst1);
        end
        010000: begin
            in[63][31:26]=opcode[5:0];
            in[63][25:21]=Rdst2[5:0];
            in[63][20:16]=Rdst1[5:0];
            in[63][9:5]=Rsrc2[5:0];
            in[63][4:0]=Rsrc1[5:0];
            // barrel_right mod10000(Rsrc2,Rsrc1,Rdst1);
        end
    endcase

endmodule
