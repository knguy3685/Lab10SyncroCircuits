`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:27:11 AM
// Design Name: 
// Module Name: Demux
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


module Demux(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
  );
  
    always @(*) begin
        case(sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data};
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end
endmodule
