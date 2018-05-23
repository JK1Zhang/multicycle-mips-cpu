`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:13 04/25/2018 
// Design Name: 
// Module Name:    dataselect_32_bit 
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
module dataselect_32_bit_4data(data_in1, data_in2,data_in3,data_in4, ctrl, data_out);
  input [31:0] data_in1, data_in2,data_in3,data_in4;
  input [1:0]ctrl; //¿ØÖÆĞÅºÅ
  output reg [31:0] data_out;

	always@(*)
	begin
		case(ctrl)
				2'b00:data_out = data_in1;
				2'b01:data_out = data_in2;
				2'b10:data_out = data_in3;
				2'b11:data_out = data_in4;	
		endcase
	end
  
  
endmodule

