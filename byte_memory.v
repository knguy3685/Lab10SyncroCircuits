`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:48:14 AM
// Design Name: 
// Module Name: byte_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module byte_memory(

    input [7:0] data,
    input store,
    output reg [7:0] memory
    );
    
        always @(*) begin
            if (store)
                memory <= data;
            end
    
    
    
endmodule
