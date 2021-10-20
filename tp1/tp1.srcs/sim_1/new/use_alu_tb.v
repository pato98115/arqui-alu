`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2021 08:13:08 PM
// Design Name: 
// Module Name: use_alu_tb
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


module use_alu_tb;

localparam DATA_SIZE = 8;
localparam OP_SIZE = 6;

//  op code
localparam      ADD     =   6'b100000;
localparam      SUB     =   6'b100010;
localparam      AND     =   6'b100100;
localparam      OR      =   6'b100101;
localparam      XOR     =   6'b100110;
localparam      SRA     =   6'b000011;
localparam      SRL     =   6'b000010;
localparam      NOR     =   6'b100111;

// Inputs
reg [DATA_SIZE - 1: 0] switches;
reg button_A;
reg button_B;
reg button_op;
reg clk;
// Outputs
wire [DATA_SIZE - 1: 0] result_leds;

// Instantiate the Unit Under Test (UUT)
use_alu uut (
	.switches(switches), 
	.button_a(button_A), 
	.button_b(button_B), 
	.button_op(button_op), 
	.clk(clk), 
	.result_leds(result_leds),
);

endmodule
