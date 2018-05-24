`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:01 05/02/2018 
// Design Name: 
// Module Name:    control_output 
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
module control_output(
  input [5:0] opcode,
  input [3:0] state,
  
  output reg pc_write,
  output reg branch,
  output reg [1:0]pc_src,
  output reg [2:0] alu_op,
  output reg alu_src_a,
  output reg [1:0]alu_src_b,
  output reg reg_write,
  output reg i_or_d,
  output reg ir_write,
  output reg mem_write,
  output reg mem_toreg,
  output reg reg_dst
    );


parameter [3:0] s0 = 4'd0,
                s1 = 4'd1,
					 s2 = 4'd2,
					 s3 = 4'd3,
					 s4 = 4'd4,
					 s5 = 4'd5,
					 s6 = 4'd6,
					 s7 = 4'd7,
					 s8 = 4'd8,
					 s9 = 4'd9,
					 s10 = 4'd10,
					 s11 = 4'd11;


always @(state) 
		begin
		case(state)
			s0:
				begin
				 pc_write=			  1;
  				 branch=				  0;
 			    pc_src=   		 2'b00;
 			    alu_op=  		 2'b01;
 			    alu_src_a=         0;
 			    alu_src_b=		 2'b01;
 			    reg_write=			  0;
 			    i_or_d=            0;
 			    ir_write=          1;
 			    mem_write=         0;
 			    mem_toreg=         0;
 			    reg_dst=           0;
				end
			s1:
				begin
				 pc_write=			  0;
 			    alu_src_b=		 2'b11;
 			    ir_write=          0;
				end
			s2:
				begin
 			    alu_op=     	 2'b01;
 			    alu_src_a=         1;
 			    alu_src_b=     2'b10;
				end
			s3:
				begin
 			    i_or_d=            1;
				end
			s4:
				begin
 			    reg_write=			  1;
 			    mem_toreg=         1;
 			    reg_dst=           0;
				end
			s5:
				begin
 			    i_or_d=            1;
 			    mem_write=         1;
				 //pc_write =         1;
				end
			s6:
				begin
 			    alu_op=  		 2'b01;
 			    alu_src_a=         1;
 			    alu_src_b=		 2'b00;
				end
			s7:
				begin
 			    reg_write=			  1;
 			    mem_toreg=         0;
 			    reg_dst=           1;
				end
			s8:
				begin
  				 branch=				  1;
 			    pc_src=  		 2'b01;
 			    alu_op=  		 2'b10;
 			    alu_src_a=         1;
 			    alu_src_b=		 2'b10;
				end
			s9:
				begin
 			    alu_op=  		 2'b01;
 			    alu_src_a=         1;
 			    alu_src_b=		 2'b10;
				end
			s10:
				begin
 			    reg_write=			  1;
 			    mem_toreg=         0;
 			    reg_dst=           0;
				end
			s11:
				begin
				 pc_write=			  1;
 			    pc_src=   		 2'b10;
				end
       endcase
    end
endmodule
