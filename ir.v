`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:59 05/02/2018 
// Design Name: 
// Module Name:    ir 
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
module ir(data_in, clk, ir_we, data_out);
  input clk, ir_we;
  input [31:0] data_in;
  output reg[31:0] data_out;
  always @(posedge clk) begin 
    if (ir_we)
	 begin
        data_out = data_in;
     end
  end
endmodule
