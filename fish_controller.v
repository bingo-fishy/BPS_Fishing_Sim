`timescale 1ns / 1ps

module fish_controller(
	input clk, 
	input fastclk,
	input sky,
	input water,
	input rst,
	input start,
	input reel_in,
	input cast_line,
	input quit,
	input [9:0] hCount, vCount,
	output reg [11:0] rgb,
	output reg [15:0] score,
	input q_start_menu,
	input q_base_play,
	input q_line_reel,
	input q_game_finish,
	output reg fish_hooked,
	output reg fish_caught_lost
   );
   
	wire fish_1_fill;
	wire fish_2_fill;
	wire fish_3_fill;
	wire fish_4_fill;
	wire hook_fill;
	wire dock_fill;
	wire rod_fill;
	wire string_fill;
	wire splash_fill;

	// Image init
	wire block_fill; //empty fill - WHITE
	wire [11:0] startColor;
	wire [11:0] gameoverColor;
	wire [11:0] hookColor;
	wire [11:0] dockColor;
	wire [11:0] rodColor;
	wire [11:0] splashColor;
	wire [11:0] slowfish1Color;
	wire [11:0] slowfish2Color;
	wire [11:0] fastfish1Color;
	wire [11:0] fastfish2Color;

	reg [9:0] fish_1_xpos, fish_1_ypos;
	reg [9:0] fish_2_xpos, fish_2_ypos;
	reg [9:0] fish_3_xpos, fish_3_ypos;
	reg [9:0] fish_4_xpos, fish_4_ypos;
	reg [9:0] start_xpos, start_ypos;
	reg [9:0] gameover_xpos, gameover_ypos;
	reg [9:0] hook_xpos, hook_ypos;
	reg [9:0] dock_xpos, dock_ypos;
	reg [9:0] rod_xpos, rod_ypos;
	reg [9:0] splash_xpos, splash_ypos;

	start_comic_sans_rom start_(.clk(fastclk), .row(vCount-start_ypos+8), .col(hCount + start_xpos + 16), .color_data(startColor));
	gameover_rom gameover_(.clk(fastclk), .row(vCount-gameover_ypos+8), .col(hCount + gameover_xpos + 16), .color_data(gameoverColor));
	splash_rom splash_(.clk(fastclk), .row(vCount-splash_ypos + 63), .col(111 + hCount-splash_xpos), .color_data(splashColor));
	slowfish1_rom slowfish1_(.clk(fastclk), .row(vCount-fish_1_ypos+8), .col(16 - hCount+fish_1_xpos), .color_data(slowfish1Color));
	slowfish2_rom slowfish2_(.clk(fastclk), .row(vCount-fish_2_ypos+8), .col(hCount - fish_2_xpos + 16), .color_data(slowfish2Color));
	fastfish1_rom fastfish1_(.clk(fastclk), .row(vCount-fish_3_ypos+8), .col(16 - hCount+fish_3_xpos), .color_data(fastfish1Color));
	fastfish2_rom fastfish2_(.clk(fastclk), .row(vCount-fish_4_ypos+8), .col(hCount - fish_4_xpos + 16), .color_data(fastfish2Color));
	hook_rom hook_(.clk(fastclk), .row(vCount-hook_ypos+5), .col(hCount - hook_xpos + 5), .color_data(hookColor));
	fishingrod_rom rod_(.clk(fastclk), .row(vCount-rod_ypos+49), .col(hCount - rod_xpos + 49), .color_data(rodColor));
	dock_rom dock_(.clk(fastclk), .row(vCount-dock_ypos+27), .col(hCount - dock_xpos + 464), .color_data(dockColor));
	
	parameter FISH_ORANGE   	= 12'b1110_0111_0100;
	parameter FISH_BLUE  		= 12'b0010_0010_0100;
	parameter SKY_BLUE   		= 12'b1011_1101_1101;
	parameter WATER_BLUE   		= 12'b1000_1100_1100;
	parameter BROWN   			= 12'b1010_0110_0110; 
	parameter HOOK_GRAY 		= 12'b0111_0111_0111; 
	parameter WHITE   			= 12'b1111_1111_1111; 
	parameter BLACK   			= 12'b0000_0000_0000; 
	parameter LIGHT_BLUE        = 12'b1100_1110_1110;
	parameter GREEN_BG   		= 12'b0000_1111_0000; 

	
	// flags for state machine
	reg cast_in = 0;
	reg cast_out = 0;
	
	reg caught_fish_1 = 1'b0;
	reg caught_fish_2 = 1'b0;
	reg caught_fish_3 = 1'b0;
	reg caught_fish_4 = 1'b0;

	always@ (*) begin
	
		if (q_start_menu || q_game_finish) begin
			if(~sky && ~water )
				rgb = 12'b0000_0000_0000;
			else if (splash_fill) 
				rgb = splashColor;
			else if (q_start_menu && start_fill && startColor != WHITE)
				rgb = WHITE; //black won't show well, maybe update these later
			else if (q_game_finish && gameover_fill && gameoverColor != GREEN_BG) 
				rgb = WHITE; //black won't show well, maybe update these later
			else if (dock_fill && dockColor != GREEN_BG)
		        rgb = dockColor;
			else if (sky)
				rgb = SKY_BLUE;
			else
				rgb = WATER_BLUE;
		end
		
		if (q_base_play || q_line_reel) begin
			if(~sky && ~water )
				rgb = 12'b0000_0000_0000;
			else if (fish_1_fill && slowfish1Color != GREEN_BG) 
				rgb = slowfish1Color; 
			else if (fish_2_fill && slowfish2Color != GREEN_BG) 
				rgb = slowfish2Color; 
			else if (fish_3_fill && fastfish1Color != GREEN_BG) 
				rgb = fastfish1Color; 
			else if (fish_4_fill && fastfish2Color != GREEN_BG) 
				rgb = fastfish2Color; 
			else if (hook_fill && hookColor != GREEN_BG)
				rgb = hookColor;
		    else if (rod_fill && rodColor != GREEN_BG)
				rgb = rodColor;
			else if (dock_fill && dockColor != GREEN_BG)
		        rgb = dockColor;
		    else if (string_fill && sky)
				rgb = WHITE;
		    else if (string_fill && ~sky)
				rgb = LIGHT_BLUE;
			else if (sky)
				rgb = SKY_BLUE;
			else
				rgb = WATER_BLUE;
		end
	end
	
	// check these values
	assign fish_1_fill=vCount>=(fish_1_ypos-8) && vCount<=(fish_1_ypos+8) && hCount>=(fish_1_xpos-14) && hCount<=(fish_1_xpos+15);
	assign fish_2_fill=vCount>=(fish_2_ypos-8) && vCount<=(fish_2_ypos+8) && hCount>=(fish_2_xpos-14) && hCount<=(fish_2_xpos+15);
	assign fish_3_fill=vCount>=(fish_3_ypos-8) && vCount<=(fish_3_ypos+8) && hCount>=(fish_3_xpos-14) && hCount<=(fish_3_xpos+15);
	assign fish_4_fill=vCount>=(fish_4_ypos-8) && vCount<=(fish_4_ypos+8) && hCount>=(fish_4_xpos-14) && hCount<=(fish_4_xpos+15);

	assign hook_fill = vCount>=(hook_ypos-5) && vCount<=(hook_ypos+5) && hCount>=(hook_xpos-5) && hCount<=(hook_xpos+5);
	assign rod_fill = vCount>=(rod_ypos-49) && vCount<=(rod_ypos+49) && hCount>=(rod_xpos-49) && hCount<=(rod_xpos+49);
	assign string_fill = vCount>=(143) && vCount<=(hook_ypos-5) && hCount==(hook_xpos);

    assign dock_fill=vCount>=(dock_ypos-27) && vCount<=(dock_ypos+27) && hCount>=(dock_xpos-463) && hCount<=(dock_xpos+463);

    assign start_fill=vCount>=(start_ypos - 7) && vCount<=(start_ypos + 7) && hCount>=(start_xpos - 15) && hCount<=(start_xpos + 15);
    assign gameover_fill=vCount>=(gameover_ypos - 7) && vCount<=(gameover_ypos + 7) && hCount>=(gameover_xpos - 15) && hCount<=(gameover_xpos + 15);
	assign splash_fill=vCount>=(splash_ypos - 64) && vCount<=(splash_ypos + 64) && hCount>=(splash_xpos - 112) && hCount<=(splash_xpos + 112);



	always@(posedge clk, posedge rst) begin
	   if(rst) begin
	       fish_1_xpos <= 250;
	       fish_1_ypos <= 296;
			
	       fish_2_xpos <= 732;
	       fish_2_ypos <= 351;
			
	       fish_3_xpos <= 562;
	       fish_3_ypos <= 406;
			
	       fish_4_xpos <= 450;
	       fish_4_ypos <= 461;
			
           hook_xpos <= 465;
	       hook_ypos <= 146;
	       
	       rod_xpos <= 505;
	       rod_ypos <= 181;
	       
           dock_xpos <= 464;
           dock_ypos <= 236;

		   splash_xpos <= 464;
		   splash_ypos <= 200;

			// x center: 464
			// y center: 275
		   gameover_xpos <= 464;
		   gameover_ypos <= 400;

		   start_xpos <= 464;
		   start_ypos <= 400;

	       
	       cast_out <= 0;
		   cast_in <= 0;
		   fish_hooked <= 0;
		   fish_caught_lost <= 0;
		   caught_fish_1 <= 0;
		   caught_fish_2 <= 0;
		   caught_fish_3 <= 0;
		   caught_fish_4 <= 0;
		   score <= 0;
			
	   end
	   
	    else if(clk) begin
	    
	        if (q_start_menu) begin
	           score <= 0;
	        end
		
			if (q_base_play) begin
			
				if (fish_1_xpos == 784) begin
					fish_1_xpos<=142;
					end
				else begin
					fish_1_xpos<=fish_1_xpos+1;
				end
				
				if (fish_2_xpos == 142) begin
					fish_2_xpos<=784;
					end
				else begin
					fish_2_xpos<=fish_2_xpos-1;
				end
				
				if (fish_3_xpos == 784) begin
					fish_3_xpos<=142;
					end
				else begin
					fish_3_xpos<=fish_3_xpos+3;
				end
				
				if (fish_4_xpos == 142) begin
					fish_4_xpos<=784;
					end
				else begin
					fish_4_xpos<=fish_4_xpos-4;
				end	
				
				if (cast_line) begin
					cast_out <= 1;
				end
				
				if (cast_out) begin
					if(~cast_in) begin
						if (hook_ypos > 516) begin
							cast_in<=1;
							hook_ypos<=hook_ypos-4;
						end
						else begin
							hook_ypos<=hook_ypos+4;
						end
					end
					else begin
						if (hook_ypos < 146) begin
							cast_out <= 0;
							cast_in <= 0;
						end
						else begin
							hook_ypos<=hook_ypos-4;
						end
					end
				end
				
				if ((459 < fish_1_xpos) && (471 > fish_1_xpos)&& (hook_ypos > 285) && (hook_ypos < 307)) begin
				     fish_hooked <= 1;
					 fish_caught_lost <= 0;
					 caught_fish_1 <= 1;
					 fish_1_xpos <= hook_xpos - 10;
					 fish_1_ypos <= hook_ypos + 10;
					 cast_out <= 0;
					 cast_in <= 0;
			    end
			    
			    else if ((459 < fish_2_xpos) && (471 > fish_2_xpos)&& (hook_ypos > 340) && (hook_ypos < 362)) begin
				     fish_hooked <= 1;
					 fish_caught_lost <= 0;
					 caught_fish_2 <= 1;
					 fish_2_xpos <= hook_xpos + 10;
					 fish_2_ypos <= hook_ypos + 10;
					 cast_out <= 0;
					 cast_in <= 0;
			    end
			    
			    else if ((459 < fish_3_xpos) && (471 > fish_3_xpos)&& (hook_ypos > 395) && (hook_ypos < 417)) begin
				     fish_hooked <= 1;
					 fish_caught_lost <= 0;
					 caught_fish_3 <= 1;
					 fish_3_xpos <= hook_xpos - 14;
					 fish_3_ypos <= hook_ypos + 10;
					 cast_out <= 0;
					 cast_in <= 0;
			    end
			    
			    else if ((459 < fish_4_xpos) && (471 > fish_4_xpos)&& (hook_ypos > 450) && (hook_ypos < 472)) begin
				     fish_hooked <= 1;
					 fish_caught_lost <= 0;
					 caught_fish_4 <= 1;
					 fish_4_xpos <= hook_xpos + 14;
					 fish_4_ypos <= hook_ypos + 10;
					 cast_out <= 0;
					 cast_in <= 0;
			    end
				
			end //end base_play
			
			if (q_line_reel) begin
				if ((516 > hook_ypos) && (hook_ypos > 220)) begin
					if (reel_in) begin
						hook_ypos <= hook_ypos - 2;
						if(caught_fish_1) begin
							fish_1_ypos <= fish_1_ypos - 2;
						end
						else if(caught_fish_2) begin
							fish_2_ypos <= fish_2_ypos - 2;
					    end
						else if(caught_fish_3) begin
							fish_3_ypos <= fish_3_ypos - 2;
					   end
					   else if(caught_fish_4) begin
							fish_4_ypos <= fish_4_ypos - 2;
					   end
					end
				
					else begin
					    hook_ypos <= hook_ypos + 2;
						if(caught_fish_1) begin
							fish_1_ypos <= fish_1_ypos + 2;
						end
						else if(caught_fish_2) begin
							fish_2_ypos <= fish_2_ypos + 2;
					    end
						else if(caught_fish_3) begin
							fish_3_ypos <= fish_3_ypos + 2;
						end
						else if(caught_fish_4) begin
							fish_4_ypos <= fish_4_ypos + 2;
						end
					end
				end
			
				else begin
				
					fish_caught_lost <= 1;
					fish_hooked <= 0;
					
					hook_xpos <= 465;
					hook_ypos <= 146;
				
					if (caught_fish_1) begin
						fish_1_xpos <= 250;
						fish_1_ypos <= 296;
						caught_fish_1 <= 0;
						if (hook_ypos <= 220)
							score <= score + 25;
					end
					else if (caught_fish_2) begin
						fish_2_xpos <= 732;
						fish_2_ypos <= 351;
						caught_fish_2 <= 0;
						if (hook_ypos <= 220)
							score <= score + 50;
			    	end
			    	else if (caught_fish_3) begin
						fish_3_xpos <= 562;
						fish_3_ypos <= 406;
						caught_fish_3 <= 0;
						if (hook_ypos <= 220)
							score <= score + 100;
			    	end
			    	else if (caught_fish_4) begin
						fish_4_xpos <= 450;
						fish_4_ypos <= 461;
						caught_fish_4 <= 0;
						if (hook_ypos <= 220)
							score <= score + 200;
			    	end
			    	
				end	
			end
			
		end
	end
	
	
endmodule
