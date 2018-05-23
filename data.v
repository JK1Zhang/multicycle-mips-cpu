`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:46 05/03/2018 
// Design Name: 
// Module Name:    data 
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
module data(data_in, clk, data_out);
  input clk;
  input [31:0] data_in;
  output reg[31:0] data_out;
  always @(posedge clk) 
		begin // 存在延迟的问题，所以用下降沿触发，对数据传输没有什么影响
        data_out = data_in;
     end
endmodule
