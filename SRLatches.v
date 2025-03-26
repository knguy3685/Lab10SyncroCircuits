`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:32:22 AM
// Design Name: 
// Module Name: SRLatches
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


module SRLatches(
    input Set,
    input Reset,
    output reg Q,
    output NotQ
 );
    
        always @(Set, Reset) begin
            if (Set)
                Q <= 1;
            else if (Reset)
                Q <= 0;
    end

    assign NotQ = ~Q; 


endmodule
