module m(select,d1,d2,q);

input select;
input [15:0] d1,d2;
output  [15:0] q;
reg [15:0] q;
//wire [1:0] select;
//wire [1:0] d;

always@(select or d1 or d2)
begin
if(select == 0)
q[15:0] = d1;
if(select == 1)
q[15:0] = d2;


//if(select == 2)
//q[1:0] = d;
//if(select == 3)
//q[1:0] = select;
end

endmodule
