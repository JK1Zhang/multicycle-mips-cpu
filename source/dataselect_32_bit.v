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
module dataselect_32_bit(data_in1, data_in2, ctrl, data_out);
  input [31:0] data_in1, data_in2; //两个数据
  input ctrl; //控制信号
  output [31:0] data_out;
  assign data_out = (ctrl == 1'b0 ? data_in1 : data_in2);
endmodule

