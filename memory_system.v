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

    wire [3:0] btnWire;
    wire [7:0] demuxWire[3:0];
    wire [7:0] storedData[3:0];

    DemuxOne btnDemux(
        .enable(store),
        .sel(addr),
        .A(btnWire[0]),
        .B(btnWire[1]),
        .C(btnWire[2]),
        .D(btnWire[3])
    );

    Demux demuxInput(
        .data(data),
        .sel(addr),
        .A(demuxWire[0]),
        .B(demuxWire[1]),
        .C(demuxWire[2]),
        .D(demuxWire[3])

    );

    byte_memory byte1(
        .data(demuxWire[0]),
        .store(btnWire[0]),
        .memory(storedData[0])
    );

    byte_memory byte2(
        .data(demuxWire[1]),
        .store(btnWire[1]),
        .memory(storedData[1])
    );

    byte_memory byte3(
        .data(demuxWire[2]),
        .store(btnWire[2]),
        .memory(storedData[2])
    );

    byte_memory byte4(
        .data(demuxWire[3]),
        .store(btnWire[3]),
        .memory(storedData[3])
    );

    Mux muxOutput(
        .A(storedData[0]),
        .B(storedData[1]),
        .C(storedData[2]),
        .D(storedData[3]),
        .Sel(addr),
        .enable(1'b1),
        .Y(memory)

    );
    
    
    
    
    
endmodule



