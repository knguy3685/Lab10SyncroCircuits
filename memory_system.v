`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:48:32 AM
// Design Name: 
// Module Name: memory_system
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


module memory_system(

    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
    
    );
    
    wire[7:0] bundle[3:0];
    
    wire[7:0] bundle2[3:0];
    
    Demux demux(
    .data(data),
    .sel(addr),
    .A(bundle[0]),
    .B(bundle[1]),
    .C(bundle[2]),
    .D(bundle[3])
    ); 
    
    wire [3:0] btnCwire;

    DemuxOne deOne(
    .enable(btnC),
    .sel(addr),
    .A(btnCwire[0]),
    .B(btnCwire[1]),
    .C(btnCwire[2]),
    .D(btnCwire[3])
    );
    
    
    byte_memory byte1(
    .data(bundle[0]),
    .store(btnCwire[0]),
    .memory(bundle2[0])
    );
    
    byte_memory byte2(
    .data(bundle[1]),
    .store(btnCwire[1]),
    .memory(bundle2[1])
    );
    
    byte_memory byte3(
    .data(bundle[2]),
    .store(btnCwire[2]),
    .memory(bundle2[2])
    );
    
    byte_memory byte4(
    .data(bundle[3]),
    .store(btnCwire[3]),
    .memory(bundle2[3])
    );
    
    Mux Mux(
    .A(bundle2[0]),
    .B(bundle2[1]),
    .C(bundle2[2]),
    .D(bundle2[3]),
    .Sel(addr),
    .enable(store),
    .Y(memory)
    );
    
    
    
    
    
endmodule



