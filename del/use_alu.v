`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FCEFyN
// Engineers: Benitez - Viccini
// 
// Create Date: 09/19/2021 04:20:39 PM
// Design Name: 
// Module Name: use_alu
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


module use_alu
(
    input wire [7:0] i_switches,
    input wire i_btn, i_btn, i_btn_op, i_clk,

    output wire [7:0] o_result
);

//  working registers
    reg [7:0] data_a, data_b;
    reg [5:0] operation;

//  input activation logic (basically a mux but with buttons)
    always @(posedge clk) begin
        if(i_btn_a == 1) 
            data_a = i_switches;
    end

    always @(posedge clk) begin
        if(i_btn_b == 1) 
            data_b = i_switches;
    end

    always @(posedge clk) begin
        if(i_btn_op == 1) 
            operation = i_switches[5:0];
    end

//  eight bit alu instancition and connection
    alu #(.DATA_SIZE (8)) 
        alu_8bit
        (
            .i_a (data_a),
            .i_b (data_b),
            .i_op (operation),
            .o_result (o_result)
        );

endmodule
