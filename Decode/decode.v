module decoder(code,Rdst2,Rdst1,Rsrc2,Rsrc1,RsrcAdd,RdstAdd,immediate);
input [31:0]code;
wire [5:0] select;
output  [4:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
output [7:0] RsrcAdd,RdstAdd;
output [15:0] immediate;
reg [15:0] immediate;
reg  [4:0] Rdst2,Rdst1,Rsrc2,Rsrc1;
reg [7:0] RsrcAdd,RdstAdd;
assign select[5:0]=code[31:26];
always@(*)
begin
    case(select)
        6'b000000: begin
            Rdst2=code[25:21];
            immediate=code[15:0];
        end
        6'b000001: begin
            Rdst2=code[25:21];
            Rsrc2=code[4:0];
        end
        
        // 000010: begin
        //     Rdst2=code[25:21];
        //     RsrcAdd=code[7:0];
        // end
        // 000011: begin
        
        //     RdstAdd=code[25:18];
        //     Rsrc2=code[4:0];
        // end
        6'b000100: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b000101: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b000110: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b000111: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001000: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001001: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001010: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001011: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001100: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001101: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001110: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b001111: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
        6'b010000: begin
            Rdst2=code[25:21];
            Rdst1=code[20:16];
            Rsrc2=code[9:5];
            Rsrc1=code[4:0];
        end
    endcase
    end

endmodule