`timescale 1ns / 1ps
module Data_Memory(data_in, data_write_enable, address, clk, data_out);
    
    
    input [15:0] data_in;
    input data_write_enable;
    input [11:0] address;
    input clk;
    output reg [15:0] data_out;    
    reg [15:0] memory [4095:0];
initial
begin
memory[1]   = 16'b0000000000000010;
memory[8]   = 16'b0000000000000001;
end
    
    always @(posedge clk)
    begin
            if (data_write_enable)
            begin
                    memory[address] = data_in;
                    
            end
    end
    always @(negedge clk)
    begin
            if(~data_write_enable)
            begin
            data_out = memory[address] ;	
            end
    end	 
endmodule