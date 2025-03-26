`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 10:09:41 AM
// Design Name: 
// Module Name: Mux
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


module Mux(
        input [7:0] A,[7:0] B,[7:0] C,[7:0] D,
        input [1:0] Sel,
        input enable,
        output [7:0] Y
    );
    
   assign Y = enable == 1 ? Sel == 'b00 ? A:
            Sel == 'b01 ? B:
            Sel == 'b10 ? C:
            Sel == 'b11 ? D:
           enable == 0: 'b00000000;
   
endmodule
