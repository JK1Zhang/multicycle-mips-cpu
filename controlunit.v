`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:47 05/02/2018 
// Design Name: 
// Module Name:    controlunit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controlunit(
  input [5:0] opcode,
  input reset,
  input [5:0] funct,//本实验只考虑add所以暂时用不到这个字段
  input clk,
  
  output pc_write,
  output branch,
  output [1:0]pc_src,
  output [2:0] alu_op,
  output alu_src_a,
  output [1:0] alu_src_b,
  output reg_write,
  output i_or_d,
  output ir_write,
  output mem_write,
  output mem_toreg,
  output reg_dst
   );


reg [3:0]now_state = 4'b0;
wire [3:0]next_state;


always@(posedge clk)

	if(~reset)begin  now_state = 5'b0; end
	else
	begin
		now_state = next_state;
	end


nextstate next(now_state,opcode,next_state);
control_output out(
						opcode,
						now_state,
						pc_write,
   					branch,
						pc_src,
						alu_op,
   					alu_src_a,
   					alu_src_b,
   					reg_write,
						i_or_d,
						ir_write,
						mem_write,
						mem_toreg,
						reg_dst);


endmodule
