`include"Padder.v"



module tb;


reg  [15:0] a;
reg  [15:0] b;
reg  [15:0] d;
reg [1:0] c;
wire [15:0] out6;


create_tb mod00(a,d,c,out6);


initial 
begin 

a=16'b11111001;
b=16'b1011010;
d={~b};
c[1:0] = 2'b00;

end 

initial
$monitor("a=%d,b=%d,Sum=%d",a,b,out6);

endmodule
