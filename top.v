`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:32 05/03/2018 
// Design Name: 
// Module Name:    top 
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
module top(
input clk,
input reset,


output [31:0] pc_in,
output [31:0] pc_out,
output pc_write
    );
	 
	 
wire [2:0]alu_op;
wire [1:0]pc_src;
wire alu_src_a;
wire [1:0]alu_src_b;
wire mem_toreg;
wire reg_write;
wire reg_dst;
wire [4:0]rd;
wire [31:0]data_out;
wire [31:0]data_out1;
wire [31:0]data_out2;
wire [31:0]data_out_a;
wire [31:0]data_out_b;
wire [31:0]data_out_out;
wire [31:0]alu_out;
wire [31:0]alu_out_out;
wire [31:0]data_write;
wire [31:0]src_a;
wire [31:0]src_b;
wire [31:0]imm;
wire mem_write;
wire ir_write;
wire [31:0]inst;
wire [31:0]addr;

wire branch_2;
wire pc_write_2;


branchand band(branch,data_out_a,branch_2);

branchor bor(branch_2,pc_write,pc_write_2);
	 
pc pc(clk, pc_in, pc_write_2, reset, pc_out);

dataselect_32_bit addrmux(pc_out,alu_out_out,i_or_d,addr);

ram ram(addr, data_out2,clk,mem_write,data_out);

ir ins(data_out,clk,ir_write,inst);

dataselect_5_bit regdst(inst[20:16],inst[15:11],reg_dst,rd);

data d(data_out, clk,data_out_out);

dataselect_32_bit datamux(alu_out,data_out_out,mem_toreg,data_write);

regfile re(inst[25:21],inst[20:16],data_write,rd,reg_write,clk,data_out1, data_out2);

ab ab(data_out1, data_out2,clk,data_out_a,data_out_b);

dataselect_32_bit A(pc_out,data_out_a,alu_src_a,src_a);

signextension im(inst[15:0],imm);

dataselect_32_bit_4data B(data_out_b,32'b1,imm,imm,alu_src_b,src_b);

alu a(src_a,src_b,alu_op,alu_out);

data aluout(alu_out,clk,alu_out_out);

dataselect_32_bit_3data pcsrc(alu_out, alu_out_out,inst[25:0],pc_src, pc_in);

controlunit con(inst[31:26],reset,5'b0,clk,pc_write,branch,pc_src,alu_op,alu_src_a,alu_src_b,reg_write,i_or_d,ir_write,mem_write,mem_toreg,reg_dst);

endmodule
