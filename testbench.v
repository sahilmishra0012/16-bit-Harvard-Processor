`include "not.v"
module tb;
            reg [15:0] a;
            wire [15:0] out;
            not lef(a,out);
            initial 
                begin
                    a = 16'b0;
                    #1
                    a = 16'b1110;
                    #2
                    a = 16'b0000011;     
            end
            initial
            $monitor("A= %b Output= %b",a,out);
endmodule