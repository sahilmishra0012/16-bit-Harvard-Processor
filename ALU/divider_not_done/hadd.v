module half_adder(a,b,carry,sum);
input a,b;
output sum,carry;

assign sum = a ^ b;
assign carry = (a & b);

endmodule
