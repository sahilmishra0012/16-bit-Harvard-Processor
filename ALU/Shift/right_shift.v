module right(in,shft,out);
input [3:0]shft;
input [15:0]in;
output reg [15:0]out;
output=in>>shft;