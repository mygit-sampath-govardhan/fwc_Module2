`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2022 02:21:29 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
reg CLK,LATCH,DIV,DEC;
reg [7:0] IN;
wire [7:0] COUNT;
wire ZERO;

counter dut(.in(IN),.clk(CLK),.latch(LATCH),.div(DIV),.dec(DEC),.count(COUNT),.zero(ZERO));
initial begin
CLK = 0;
forever #5 CLK = ~CLK;
end
initial begin
IN=8'b00010000;LATCH=1;DEC=0;
#10
IN=8'd0;LATCH=0;DEC=0;DIV=1;
#10
IN=8'b00000010;LATCH=0;DEC=0;DIV=1;
#10
IN=8'd11;LATCH=0;DEC=0;DIV=1;
#10
LATCH=0;DEC=1;DIV=0;
#10
IN=1;LATCH=0;DEC=1;DIV=0;
#10
LATCH=0;DEC=1;DIV=0;
#10
$stop;
end
endmodule

