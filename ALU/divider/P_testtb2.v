`include"brute.v"

module testtb;

reg [15:0]a,e,b;
//wire [7:0] out1,out3,out5,out6,out7;
//wire [7:0] outt1,outt3,outt4,outt5,outt6,outt7;
//wire [31:0]c;
wire [15:0]d,c;

divisions mod22(e,b,a,c,d);

initial 
begin

a=16'b1111;
b=16'b0101;
e=16'b00;
end


initial
$monitor("%b   %b",c,d);

endmodule