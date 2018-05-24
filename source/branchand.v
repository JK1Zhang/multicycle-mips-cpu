`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:00 04/26/2018 
// Design Name: 
// Module Name:    branchand 
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
module branchand(
input branch,
input [31:0]data_in,
output  branch2
    );

assign branch2 = (data_in>1'b0 ? branch : 1'b0);

endmodule
