module right(in,shft,out);
input [15:0]shft;
input [15:0]in;
output [15:0]out;
assign out=in>>shft;
endmodule