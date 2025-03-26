`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 11:20:51 AM
// Design Name: 
// Module Name: DemuxOne
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


module DemuxOne(
    input enable,
    input [1:0] sel,
    output reg A,
    output reg  B,
    output reg  C,
    output reg  D
    );
    
    always @(*) begin
        case(sel)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, enable};
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, enable, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, enable, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {enable, 1'b0, 1'b0, 1'b0};
        endcase
    end
    
endmodule
