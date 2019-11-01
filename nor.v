module nor_gate(input [15:0] A,input [15:0] B, output [15:0] NOR);
    assign NOR=~(A|B);
endmodule