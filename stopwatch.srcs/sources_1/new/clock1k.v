`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2021 18:15:32
// Design Name: 
// Module Name: clock1k
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
module freq(
input reset,
input clk,
output reg clock
    );
    reg [63:0] counter;
    always@(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            counter<=0;
            clock<=0;
        end
        else if(counter==50000)
            begin
                counter<=0;
                clock<=~clock;
            end    
        else if(counter>=0 & counter<50001)
                counter<=counter+1;
        end
endmodule

