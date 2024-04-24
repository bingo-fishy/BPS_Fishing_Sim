`timescale 1ns / 1ps

module fish_gameflow_sm(
	clk, 
	rst, 
	start, 
	quit, 
	cast_line, 
	reel_in,
	q_start_menu,
	q_base_play,
	q_line_reel,
	q_game_finish,
	fish_hooked,
	fish_caught_lost,
	count_down
	);


	/*  INPUTS */
	// Clock & Reset
	input	clk, rst;
	input 	start;
	input	quit;
	input	cast_line;
	input	reel_in;
	input	fish_hooked;
	input	fish_caught_lost;
	input   [15:0] count_down;
	
	
	/*  OUTPUTS */
	
	
	// store current state
	
	output q_start_menu, q_base_play, q_line_reel, q_game_finish;
	reg [6:0] state;	
	
	
	assign {q_game_finish, q_line_reel, q_base_play, q_start_menu} = state;
		
	localparam
	    START_MENU		=   4'b0001,
	    BASE_PLAY		=   4'b0010,
	    LINE_REEL		=   4'b0100,
	    GAME_FINISH		=   4'b1000,
	    UNK				=   4'bXXXX;
	

	always @ (posedge clk, posedge rst)
	begin
		if(rst) begin
			state <= START_MENU;
		end
			
		else 
		begin
			case(state)
			
				START_MENU:
				begin
				
					if (start) begin
						state <= BASE_PLAY;
					end
					
				end	
					
				BASE_PLAY:
				begin	
				
					if (fish_hooked) begin
						state <= LINE_REEL;
					end
					
					else if (quit || (count_down==0)) begin
					//else if (quit || (cast_count == 0)) begin
						state <= GAME_FINISH;
					end
					
				end	
					
				LINE_REEL:		
                begin
                
					if (fish_caught_lost) begin
						state <= BASE_PLAY;
					end
					
					if (quit || (count_down==0)) begin
					   state <= GAME_FINISH;
					end
					
				end
				
				default:	state <= UNK;
			endcase
		end
	end
	
endmodule
