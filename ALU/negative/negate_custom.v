module negative(input [15:0] A, output [15:0] reverted);
    assign reverted = ~A+1;
endmodule
