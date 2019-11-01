`include "not.v"
module tb;
        reg [15:0] a;
        wire [15:0] out;
        reverse nott(a,out);
        initial 
            begin
                a = 16'b0;#100;
                a = 16'b1110;#200;
                a = 16'b0000011;#300;   
            end
        initial
        $monitor("A= %b :: Output= %b",a,out);
endmodule
