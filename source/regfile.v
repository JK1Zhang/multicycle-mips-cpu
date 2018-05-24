`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:11 04/25/2018 
// Design Name: 
// Module Name:    regfile 
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
module regfile (rs, rt, data_in, rd, we, clk, data_out1, data_out2);
  input [4:0] rs, rt, rd;
  input [31:0] data_in;
  input we, clk;
  output [31:0] data_out1, data_out2;
  
  reg [31:0] register [0:31];
  initial 
	begin
    register[0] = 0; // 只需要确定零号寄存器的值就好
	end
	
	
  assign data_out1 = register[rs];
  assign data_out2 = register[rt];
  
  always @(posedge clk) 
	begin
    if ((rd != 0) && (we == 1)) 
		begin
			register[rd] = data_in;
		end
	end
endmodule