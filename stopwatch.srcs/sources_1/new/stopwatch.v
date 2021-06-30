`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2021 09:15:52
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
input reset,
input clk,
output clock,
input  [7:0] an,
output reg [7:0] cathode
    );
    freq f1(
.reset(reset),
.clk(clk),
.clock(clock)
    );
wire [7:0] c1;
wire [7:0] c2;
wire [7:0] c3;
wire [7:0] c4;
wire [7:0] c5;
wire [7:0] c6;
wire [7:0] c7;
wire [7:0] c8;

reg [3:0] p1=0;
reg [3:0] p2=0;
reg [3:0] p3=0;
reg [3:0] p4=0;
reg [3:0] p5=0;
reg [3:0] p6=0;
reg [3:0] p7=0;
reg [3:0] p8=0;

    always@(posedge clock or posedge reset)
    begin
        if(reset)
        begin
           p1<=0;
           p2<=0;
           p3<=0;
           p4<=0;
           p5<=0;
           p6<=0;
           p7<=0;
           p8<=0;
        end
        else if(p1==10)
        begin
            p2<=p2+1;
            p1<=0;
        end   
        else if(p2==10)
        begin
            p3<=p3+1;
            p2<=0;
        end
        else if(p3==10)
        begin
            p4<=p4+1;
            p3<=0;
        end    
        else if(p4==10)
        begin
            p5<=p5+1;
            p4<=0;
        end
        else if(p5==7)
        begin
            p6<=p6+1;
            p7<=0;
        end
        else if(p6==10)
        begin
            p7<=p7+1;
            p6<=0;
        end
        else if(p7==7)
        begin
            p8<=p8+1;
            p7<=0;
        end
        else if(p8==10)
        begin
            p8<=1;
        end
        else if(p1>=0)
            p1<=p1+1;          
    end
    segment_disply d1(
    .clock(clock),
    .k(p1),
    .reset(reset),
    .cathode(c1)
    );
    segment_disply d2(
    .clock(clock),
    .k(p2),
    .reset(reset),
    .cathode(c2)
    );
    segment_disply d3(
    .clock(clock),
    .k(p3),
    .reset(reset),
    .cathode(c3)
    );
    segment_disply d4(
    .clock(clock),
    .k(p4),
    .reset(reset),
    .cathode(c4)
    );
    segment_disply d5(
    .clock(clock),
    .k(p5),
    .reset(reset),
    .cathode(c5)
    );
    segment_disply d6(
    .clock(clock),
    .k(p6),
    .reset(reset),
    .cathode(c6)
    );
    segment_disply d7(
    .clock(clock),
    .k(p7),
    .reset(reset),
    .cathode(c7)
    );
    segment_disply d8(
    .clock(clock),
    .k(p8),
    .reset(reset),
    .cathode(c8)
    );
    always@(posedge clock)
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
endmodule
