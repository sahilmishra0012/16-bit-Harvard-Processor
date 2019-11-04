`include "compl.v"
module tb;
        reg [3:0] a;
        wire [3:0] out;
        com nott(a,out);
        initial 
            begin
                a = 4'b0;#100;
                a = 4'b1110;#200;
                a = 4'b0011;#300;   
            end
        initial
        $monitor("A= %b  :: Output= %b",a,out);
endmodule
