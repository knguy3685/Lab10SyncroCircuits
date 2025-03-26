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
    output [7:0] memory
    );
    
    DLatch bite1 (
    .D(data[0]),
    .E(store),
    .Q(memory[0])
    );
    
    DLatch bite2 (
    .D(data[1]),
    .E(store),
    .Q(memory[1])
    );
    
    DLatch bite3 (
    .D(data[2]),
    .E(store),
    .Q(memory[2])
    );
    
    DLatch bite4 (
    .D(data[3]),
    .E(store),
    .Q(memory[3])
    );
    
    DLatch bite5 (
    .D(data[4]),
    .E(store),
    .Q(memory[4])
    );
    
    DLatch bite6 (
    .D(data[5]),
    .E(store),
    .Q(memory[5])
    );
    
    DLatch bite7 (
    .D(data[6]),
    .E(store),
    .Q(memory[6])
    );
    
    DLatch bite8 (
    .D(data[7]),
    .E(store),
    .Q(memory[7])
    );
    
    
    
endmodule
