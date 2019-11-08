module mux21_l(select,in,in1,out);

input  select;
input  in,in1;
output out;
reg  out;
wire  select;

always@(select or in or in1)
begin
if(select == 0)
out=in1;
if(select == 1)
out=in;
end

endmodule
