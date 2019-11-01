module xnor_gate(input [15:0] A,input [15:0] B, output [15:0] XNOR);
    assign XNOR=~(~(A)&B)|(A&~(B));
endmodule