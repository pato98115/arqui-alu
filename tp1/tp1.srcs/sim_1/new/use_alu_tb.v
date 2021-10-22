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

// period
localparam T = 100;

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
	.i_switches(switches), 
	.i_btn_a(button_A), 
	.i_btn_b(button_B), 
	.i_btn_op(button_op), 
	.i_clk(clk), 
	.o_result(result_leds)
);

initial begin
	// init clock
	clk = 0;
	// init inputs
	switches = 8'b00000000;
	button_A = 0;
	button_B = 0;
	button_op = 0;
	// Test every operation once
	#(T * 5)
	test_op(8'b11111111, 8'b00000010, ADD);
	#(T * 5)
	test_op(8'b00000001, 8'b00000001, SUB);
	#(T * 5)
	test_op(8'b11111111, 8'b01010101, AND);
	#(T * 5)
	test_op(8'b00000000, 8'b11111111, OR);
	#(T * 5)
	test_op(8'b10101010, 8'b10101010, XOR);
	#(T * 5)
	test_op(8'b00010000, 8'b00001100, SRA);
	#(T * 5)
	test_op(8'b11111001, 8'b00000001, SRL);
	#(T * 5)
	test_op(8'b10101010, 8'b01010101, NOR);
	
end

always #(T/2) clk = ~clk;

task test_op;
input [DATA_SIZE  -1 : 0] data_A, data_B;
input [5 : 0] opcode;

	reg [DATA_SIZE -1 : 0] expected_var;

	begin
		@(posedge clk);
		switches = data_A;
		button_A = 1'b1;
		@(posedge clk);
		button_A = 1'b0;
		switches = data_B;
		button_B = 1'b1;
		@(posedge clk);
		button_B = 1'b0;
		switches = {2'b00, opcode};
		button_op = 1'b1;
		@(posedge clk);
		button_op = 1'b0;


		case(opcode)
			ADD: 
			begin 
				expected_var = (data_A + data_B);
			end
			SUB: 
			begin 
				expected_var = (data_A - data_B);
			end
			AND: 
			begin 
				expected_var = (data_A & data_B);
			end
			OR:  
			begin 
				expected_var = (data_A | data_B);
			end
			XOR: 
			begin 
				expected_var = (data_A ^ data_B);
			end
			SRA:
			begin 
				expected_var = ($signed(data_A) >>> data_B);
			end
			SRL: 
			begin 
				expected_var = (data_A >> data_B);
			end
			NOR: 
			begin
				expected_var = ~(data_A | data_B); 
			end
			default: $display("####TEST FAILED: OPCODE ERROR");
		endcase
		if (result_leds != expected_var) begin
			$display("-> TEST FAILED for opcode: %b; A= %b, B= %b, expected: %b, got: %b.",
				opcode, data_A, data_B, expected_var,  result_leds);
		end 	
	end
endtask


endmodule
