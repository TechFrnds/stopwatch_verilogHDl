`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2021 11:43:00
// Design Name: 
// Module Name: 7segment_disply
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


module segment_disply(
    input clock,
    input [3:0] k,
    input reset,
    output reg [7:0] cathode
    );
    always@(posedge clock or posedge reset)
    begin
        if(reset)
            cathode=8'b11000000;
        else
        begin
        case (k)
            4'd0:
                cathode=8'b11000000;
            4'd1:
                cathode=8'b11111001;
            4'd2:
                cathode=8'b10100100;
            4'd3:
                cathode=8'b10110000;
            4'd4:
                cathode=8'b10011001;
            4'd5:
                cathode=8'b10010010;
            4'd6:
                cathode=8'b10000010;
            4'd7:
                cathode=8'b11111000;
            4'd8:
                cathode=8'b10000000;
            4'd9:
                cathode=8'b10010000;
        endcase
        end                  
    end 
endmodule
