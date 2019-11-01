`include "nand.v"
module tb;
        reg [15:0] a;
        reg [15:0] b;
        wire [15:0] out;
        nand_gate nott(a,b,out);
        initial 
            begin
                a = 16'b0;b = 16'b01;#100;
                a = 16'b1110;b = 16'b010101;#200;
                a = 16'b0000011;b = 16'b11011101;#300;   
            end
        initial
        $monitor("A= %b :: B= %b :: Output= %b",a,b,out);
endmodule
