`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:15 04/25/2018 
// Design Name: 
// Module Name:    pcplusfour 
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
module pcplusfour(pc_in, pc_out);
  input wire [31:0] pc_in; 
  output wire [31:0] pc_out;
  
  assign pc_out[31:0] = pc_in[31:0] + 1'b1;
  
endmodule