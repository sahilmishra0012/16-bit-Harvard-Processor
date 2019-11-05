module mux(select,d,q);

input [1:0] select,d;
output  [1:0] q;
reg [1:0] q;
wire [1:0] select;
wire [1:0] d;

always@(select or d)
begin
if(select == 0)
q[1:0] = select;
if(select == 1)
q[1:0] = d;
if(select == 2)
q[1:0] = d;
if(select == 3)
q[1:0] = select;
end

endmodule
/*module mux(select,d,q);

input [1:0] select,d;
output  [1:0] q;
reg [1:0] q;
wire [1:0] select;
wire [1:0] d;

always@(select or d)
begin
if(select == 0)
q[1:0] = select;
if(select == 1)
q[1:0] = d;
if(select == 2)
q[1:0] = d;
if(select == 3)
q[1:0] = select;
end

endmodule
*/