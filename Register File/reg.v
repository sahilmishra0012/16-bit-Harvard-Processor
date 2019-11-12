module register_file  
(  
    input clk,  
    input rst,  
    input reg_write_en,  
    input [2:0] reg_write_dest,  
    input [15:0] reg_write_data,  
    input [2:0] reg_read_addr_1,  
    output [15:0] reg_read_data_1,  
    input [2:0] reg_read_addr_2,  
    output [15:0] reg_read_data_2  
);  
    integer i;
    reg [15:0] reg_array [31:0];    
    always @ (posedge clk or posedge rst) begin  
        if(rst) begin  
            for(i=0;i<=31;i=i+1)  
                reg_array[i] = 16'b0;      
        end  
        else begin  
            if(reg_write_en) begin  
                reg_array[reg_write_dest] <= reg_write_data;  
            end  
        end  
    end  
    assign reg_read_data_1 = ( reg_read_addr_1 == 0)? 16'b0 : reg_array[reg_read_addr_1];  
    assign reg_read_data_2 = ( reg_read_addr_2 == 0)? 16'b0 : reg_array[reg_read_addr_2];  
endmodule 