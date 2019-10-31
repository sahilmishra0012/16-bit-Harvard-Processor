`include "multiplier16bit.v"

 module multiplier_tb;
            reg [15:0] a;
            reg [15:0] b;
            wire [31:0] out;
            multiplier mult(a,b,out);
            initial 
                begin
                    a = 16'b0; b = 16'b0; #100;
                    a = 16'b1110; b = 16'd65535; #100;
                    a = 16'b0000011; b = 16'b0000011; #100;      
            end

            initial
            $monitor("A= %d  B= %d Product= %d",a,b,out);
endmodule