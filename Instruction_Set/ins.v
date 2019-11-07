module instruction_set();
input counter;
input [5:0] opcode;
input  [5:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
input [8:0] RsrcAdd,RdstAdd;
output [63:0][31:0] in;
wire [63:0][31:0] in;
assign in[counter][31:26]=opcode[5:0];


always@(select)
    case(select)
        000000: begin
            in[counter][25:21]=Rdst2;
            in[counter][15:0]=Rsrc2;
        end


        000001: begin
            in[counter][25:21]=Rdst2;
            in[counter][4:0]=Rsrc2;
        end
        000010: begin
            in[counter][25:21]=Rdst2;
            in[counter][7:0]=RsrcAdd;
        end
        000011: begin
            in[counter][25:18]=RdstAdd;
            in[counter][4:0]=Rsrc2;
        end
        000100: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // adder_rd mod100(Rsrc2,Rsrc1,c,Rdst1);
        end
        000101: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // sub_rd mod101(Rsrc2,Rsrc1,c,Rdst1);
        end
        000110: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // negative mod110(Rsrc1,Rdst1);
        end
        000111: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // multiplier mod111(Rsrc2,Rsrc1,Rdst1);
        end
        001000: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
        end
        001001: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // or_gate mod1001(Rsrc2,Rsrc1,Rdst1);
        end
        001010: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // xor_gate mod1010(Rsrc2,Rsrc1,Rdst1);
        end
        001011: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // nand_gate mod1011(Rsrc2,Rsrc1,Rdst1);
        end
        001100: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // nor_gate mod1100(Rsrc2,Rsrc1,Rdst1);
        end
        001101: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // xnor_gate mod1101(Rsrc2,Rsrc1,Rdst1);
        end
        001110: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // not_gate mod1110(Rsrc1,Rdst1);
        end
        001111: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // barrel_left mod1111(Rsrc2,Rsrc1,Rdst1);
        end
        010000: begin
            in[counter][25:21]=Rdst2;
            in[counter][20:16]=Rdst1;
            in[counter][9:5]=Rsrc2;
            in[counter][4:0]=Rsrc1;
            // barrel_right mod10000(Rsrc2,Rsrc1,Rdst1);
        end
    endcase

endmodule
