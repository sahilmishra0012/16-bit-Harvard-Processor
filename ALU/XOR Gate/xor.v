module xor_gate(input [15:0] A,input [15:0] B, output [15:0] XOR);
    assign XOR=(~(A)&B)|(A&~(B));
endmodule