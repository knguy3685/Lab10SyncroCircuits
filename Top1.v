`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 10:17:22 AM
// Design Name: 
// Module Name: Top1
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


module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

 

    DLatch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule
