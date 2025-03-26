`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:39:16 AM
// Design Name: 
// Module Name: DLatch
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


module DLatch(
    input D, E,
    output reg Q, 
    output NotQ
    
    );
    
    always @(D, E) begin
            if (E)
                Q <= D;
           
    end
    
    assign NotQ = ~Q;
    
endmodule
