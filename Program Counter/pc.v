module up_counter(input clk, reset, output[5:0] counter
    );
reg [5:0] counter_up;

// up counter
always @(posedge clk or posedge reset)
begin
if(reset)
	counter_up <= 6'd0;
else
	counter_up <= counter_up + 6'd1;
end 
assign counter = counter_up;
endmodule