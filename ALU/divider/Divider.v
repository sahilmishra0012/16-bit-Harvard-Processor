
module Divide(
    input [15:0] src1,
    input [15:0] src2,
    output reg[15:0] divOut
    );
	
 reg [15:0] tempSrc1,tempSrc2;
 
 always @ (src1,src2)
 begin	
	if(!src2)
	begin
		divOut = 15'b1;
	end	
	else
	begin	
		divOut = src1 / src2;
   end		
 end		
endmodule
