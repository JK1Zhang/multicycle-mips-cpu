`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:43 05/10/2018 
// Design Name: 
// Module Name:    branchor 
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
module branchor(
input branch,
input pc_write,
output  pc_write_2
    );

assign pc_write_2 = branch|pc_write;

endmodule
