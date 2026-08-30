`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mukt Shah
// 
// Create Date: 30.08.2026 04:03:07
// Design Name: 
// Module Name: tb_processor
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


module tb_processor();

reg Clk;
reg Reset;

wire [31:0] PC_debug;
wire [31:0] instruction_debug;

wire [4:0] rs2_debug;
wire [4:0] rs1_debug;
wire [4:0] rd_debug;
wire [2:0] funct3_debug;
wire [31:0] immediate_debug;

wire [3:0] ALUControl_debug;
wire [31:0] ALU_Result_debug;
wire Zero_debug;
wire Less_debug;
wire LessU_debug;

wire Branch_debug;
wire MemRead_debug;
wire [1:0] WriteBackSel_debug;
wire [1:0] ALUOp_debug;
wire MemWrite_debug;
wire [1:0]ALUSrcA_debug;
wire ALUSrcB_debug;
wire RegWrite_debug;

wire Branch_taken_debug;
wire [31:0] jal_target_debug;
wire [31:0] jalr_target_debug;
wire [1:0] PCSel_debug;

processor uut(
    .Clk(Clk),
    .Reset(Reset),

    .PC_debug(PC_debug),
    .instruction_debug(instruction_debug),

    .rs2_debug(rs2_debug),
    .rs1_debug(rs1_debug),
    .rd_debug(rd_debug),
    .funct3_debug(funct3_debug),
    .immediate_debug(immediate_debug),
    .ALU_Result_debug(ALU_Result_debug),
    .ALUControl_debug(ALUControl_debug),
    .Zero_debug(Zero_debug),
    .Less_debug(Less_debug),
    .LessU_debug(LessU_debug),

    .Branch_debug(Branch_debug),
    .MemRead_debug(MemRead_debug),
    .WriteBackSel_debug(WriteBackSel_debug),
    .ALUOp_debug(ALUOp_debug),
    .MemWrite_debug(MemWrite_debug),
    .ALUSrcA_debug(ALUSrcA_debug),
    .ALUSrcB_debug(ALUSrcB_debug),
    .RegWrite_debug(RegWrite_debug),

    .Branch_taken_debug(Branch_taken_debug),
    .jal_target_debug(jal_target_debug),
    .jalr_target_debug(jalr_target_debug),
    .PCSel_debug(PCSel_debug)
);

initial begin
    Clk = 0;
    forever #5 Clk = ~Clk;   
end

initial begin
    Reset = 0;
    #20;
    Reset = 1;
end

endmodule
