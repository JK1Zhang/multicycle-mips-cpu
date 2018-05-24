`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:15 05/03/2018 
// Design Name: 
// Module Name:    dataselect_32_bit_3data 
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
module dataselect_32_bit_3data(data_in1, data_in2,data_in3, ctrl, data_out);
  input [31:0] data_in1, data_in2,data_in3; 
  input [1:0]ctrl; //¿ØÖÆĞÅºÅ
  output reg [31:0] data_out;

	always@(*)
	begin
		case(ctrl)
				2'b00:data_out = data_in1;
				2'b01:data_out = data_in2;
				2'b10:data_out = data_in3;
		endcase
	end
  
  
endmodule

