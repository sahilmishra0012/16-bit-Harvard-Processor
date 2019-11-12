`include "/home/samthekiller/Desktop/Harvard Architecture/My_Code/ALU/alu.v"
module write_back(
input [15:0] sum,
input [15:0] diff,
input [15:0] negate,
input [31:0] multiplied,
input [15:0] divi,
input [15:0] or_gat,
input [15:0] xor_gat,
input [15:0] nand_gat,
input [15:0] nor_gat,
input [15:0] xnor_gat,
input [15:0] not_gat,
input [15:0] left_sft,
input [15:0] right_sft,
input [5:0] select
);

reg [31:0] out;

always@(select)
    case(select)
        // 6'b000000: begin//MOV

        // end
        // 000001: begin//MOV

        // end
        // 000010: begin//LOAD

        // end
        // 000011: begin//STORE

        // end
        000100: begin//ADD
        out[15:0]=sum;
        end
        000101: begin//SUB
        out[15:0]=diff;
        end
        000110: begin//NEG
        out[15:0]=negate;
        end
        000111: begin//MUL
        out[31:0]=multiplied;
        end
        001000: begin//DIV
        out[15:0]=divi;
        end
        001001: begin//OR
        out[15:0]=or_gat;
        end
        001010: begin//XOR
        out[15:0]=xor_gat;
        end
        001011: begin//NAND
        out[15:0]=nand_gat;
        end
        001100: begin//NOR
        out[15:0]=nor_gat;
        end
        001101: begin//XNOR
        out[15:0]=xnor_gat;
        end
        001110: begin//NOT
        out[15:0]=not_gat;
        end
        001111: begin//LLSH
        out[15:0]=left_sft;
        end
        010000: begin//LRSH
        out[15:0]=right_sft;
        end

    endcase
endmodule