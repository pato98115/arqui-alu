`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2021 06:31:44 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

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
localparam T = 2;

// Inputs
reg [DATA_SIZE - 1: 0] data_a;
reg [DATA_SIZE - 1: 0] data_b;
reg [OP_SIZE - 1: 0] op;

// Outputs
wire [DATA_SIZE - 1: 0] result;

// Internal
reg [OP_SIZE -1: 0] ops [7:0];
integer i, j;

// Instanciates alu
alu #(.DATA_SIZE (DATA_SIZE)) 
    uut(
    .i_a(data_a),
    .i_b(data_b),
    .i_op(op),
    .o_result(result)
    );

initial begin
    ops[0] = ADD;
    ops[1] = SUB;
    ops[2] = AND;
    ops[3] = OR;
    ops[4] = XOR;
    ops[5] = SRA;
    ops[6] = SRL;
    ops[7] = NOR;

    for(i = 0; i < 8; i = i + 1) begin

        for(j = 0; j < 10; j = j + 1) begin
            #T
            data_a = $urandom;
            data_b = $urandom;
            op = ops[i];
            #T
            case(op)
                ADD: if(result != (data_a + data_b)) begin
                    $display("Error: %d + %d; Expected %d; Got %d", data_a, data_b, (data_a + data_b), result);
                end
                SUB: if(result != (data_a - data_b)) begin
                    $display("Error: %d - %d; Expected %d; Got %d", data_a, data_b, (data_a - data_b), result);
                end
                AND: if(result != (data_a & data_b)) begin
                    $display("Error: %b & %b; Expected %b; Got %b", data_a, data_b, (data_a & data_b), result);
                end
                OR: if(result != (data_a | data_b)) begin
                    $display("Error: %b | %b; Expected %b; Got %b", data_a, data_b, (data_a | data_b), result);
                end
                XOR: if(result != (data_a ^ data_b)) begin
                    $display("Error: %b ^ %b; Expected %b; Got %b", data_a, data_b, (data_a ^ data_b), result);
                end
                SRA: if($signed(result) != ($signed(data_a) >>> data_b)) begin
                    $display("Error: %b >>> %b; Expected %b; Got %b", data_a, data_b, ($signed(data_a) >>> data_b), result);
                end
                SRL: if(result != (data_a >> data_b)) begin
                    $display("Error: %b >> %b; Expected %b; Got %b", data_a, data_b, (data_a >> data_b), result);
                end
                NOR: if(result != (~(data_a | data_b))) begin
                    $display("Error: ~(%b | %b); Expected %b; Got %b", data_a, data_b, ~(data_a | data_b), result);
                end
            endcase
        end
        $display("Testing ended");
    end

    #(T*5) $finish;
end

endmodule