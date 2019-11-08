`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/barrel_shift/barrel16_left.v"
`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/barrel_shift/barrel16_right.v"
module muxfinal();
wire [5:0] select;
input [31:0] code;
output  [5:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
output [8:0] RsrcAdd,RdstAdd;
output [15:0] immediate;
reg [15:0] immediate;
reg  [5:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
reg [8:0] RsrcAdd,RdstAdd;
assign select[5:0]=code[31:26];
reg c;

// Rdst2=code[25:21];
// Rdst1=code[20:16];
// Rsrc2=code[9:5];
// Rsrc1=code[4:0];

barrel_left(,)

always@(select)
    case(select)
        000000: begin//MOV
            Rdst2=code[25:21];
            immediate=code[15:0];
        end
        000001: begin//MOV
            Rdst2=code[25:21];
            Rsrc2=code[4:0];
        end
        000010: begin//LOAD
            Rdst2=code[25:21];
            RsrcAdd=code[7:0];
        end
        000011: begin//STORE
            RdstAdd=code[25:18];
            Rsrc2=code[4:0];
        end
        000100: begin//ADD
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
            c=2'b00;
        end
        000101: begin//SUB
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
            c=2'b00;
        end
        000110: begin//NEG
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        000111: begin//MUL
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001000: begin//DIV
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001001: begin//OR
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001010: begin//XOR
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001011: begin//NAND
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001100: begin//NOR
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001101: begin//XNOR
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001110: begin//NOT
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        001111: begin//LLSH
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        010000: begin//LRSH
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
    endcase

endmodule
