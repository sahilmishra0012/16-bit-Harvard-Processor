module full_adder(a,b,c,carry,sum);
input a,b,c;
output sum,carry;

assign sum = a ^ b ^ c;
assign carry = (a & b) | (c & b) | (a & c);

endmodule
