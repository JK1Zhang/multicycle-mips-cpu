`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:42 04/25/2018 
// Design Name: 
// Module Name:    signextension 
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
module signextension(num_in, num_out);
  input wire[15:0] num_in;
  output reg[31:0] num_out;
  initial begin
    num_out = 0;
  end
  always @(num_in) begin
      num_out<= {{16{num_in[15]}}, num_in[15:0]};
  end
  
endmodule