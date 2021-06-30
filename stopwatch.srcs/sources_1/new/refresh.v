`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2021 15:48:51
// Design Name: 
// Module Name: refresh
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


module refresh(
input clock,
input reset,
output reg [7:0] an=8'b0,
output reg [7:0] cathode,
output [7:0] c1,
output [7:0] c2,
output [7:0] c3,
output [7:0] c4,
output [7:0] c5,
output [7:0] c6,
output [7:0] c7,
output [7:0] c8

    );
    always@(posedge clock)
    begin
        if(reset)
            an<=8'b0;
        else
        begin
            case(an)
                8'b11111110:cathode<=c1;
                8'b11111101:cathode<=c2;
                8'b11111011:cathode<=c3;
                8'b11110111:cathode<=c4;
                8'b11101111:cathode<=c5;
                8'b11011111:cathode<=c6;
                8'b10111111:cathode<=c7;
                8'b01111111:cathode<=c8;
            endcase
        end
    end
endmodule
