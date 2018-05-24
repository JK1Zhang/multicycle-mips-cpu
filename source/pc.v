`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:55 04/25/2018 
// Design Name: 
// Module Name:    pc 
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
module pc(clk, pc_in, pc_we, reset, pc_out);

  input wire clk, pc_we, reset;
  input wire [31:0] pc_in;
  output reg [31:0] pc_out;
  
  
  
  always @(posedge clk) begin
    if (~reset) begin
      pc_out <= 32'b0;
    end else if (pc_we) begin
      pc_out <= pc_in;
    end else if (!pc_we) begin
      pc_out <= pc_out;
    end
  end
endmodule
