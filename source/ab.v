`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:35 05/03/2018 
// Design Name: 
// Module Name:    ab 
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
module ab(data_in_a,data_in_b,clk,data_out_a,data_out_b);
  input clk;
  input [31:0] data_in_a,data_in_b;
  output reg[31:0] data_out_a,data_out_b;
  always @(posedge clk)
		begin // 存在延迟的问题，所以用下降沿触发，对数据传输没有什么影响
        data_out_a = data_in_a;
		  data_out_b = data_in_b;
     end

endmodule