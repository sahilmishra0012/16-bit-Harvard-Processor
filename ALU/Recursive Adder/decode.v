module back(a,b);

input [1:0] a;
output b;
reg b;

always@(a)
begin
if(a==2'b00)
b=0;
else
b=1;

end
endmodule