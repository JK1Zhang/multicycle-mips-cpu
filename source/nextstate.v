`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:39 05/02/2018 
// Design Name: 
// Module Name:    nextstate 
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
module nextstate(i_state,opcode, next_state);
    input [3:0]i_state;
    input [5:0]opcode;
    output reg[3:0]next_state;
	 
    parameter [3:0] s0 = 4'd0,
                    s1 = 4'd1,
						  s2 = 4'd2,
						  s3 = 4'd3,
						  s4 = 4'd4,
						  s5 = 4'd5,
						  s6 = 4'd6,
						  s7 = 4'd7,
						  s8 = 4'd8,
						  s9 = 4'd9,
						  s10 = 4'd10,
						  s11 = 4'd11;
						  
						  
    always @(*)  
	
		begin
        case (i_state)
		  
            s0: next_state = s1;
            s1:
					begin
                case (opcode)
                    6'b000000: next_state =  s6;	//add
						  6'b001000: next_state =  s9;	//addi
						  6'b100011: next_state =  s2;  	//lw
						  6'b101011: next_state =  s2;	//sw
						  6'b000010: next_state =  s11;	//jump
						  6'b000111: next_state =  s8;	//bgtz
                endcase
					end
					
            s2: 
					begin
                case (opcode)
						  6'b100011: next_state =  s3;  	//lw
						  6'b101011: next_state =  s5;	//sw					
                endcase
					end
            s3: next_state = s4;
            s4: next_state = s0;
            s5: next_state = s0;
            s6: next_state = s7;
            s7: next_state = s0;
				s8: next_state = s0;
				s9: next_state = s10;
				s10: next_state = s0;
				s11: next_state = s0;
        endcase
    end
endmodule
