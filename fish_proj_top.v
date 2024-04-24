`timescale 1ns / 1ps

module fish_proj_top(
	input ClkPort,
	input BtnC,
	input BtnU,
	input BtnR,
	input BtnL,
	input BtnD,
	output Cg, 
	output Cf,
	output Ce,
	output Cd,
	output Cc, 
	output Cb, 
	output Ca, 
	output Dp,
	output An0, 
	output An1, 
	output An2, 
	output An3,
	output An4, 
	output An5, 
	output An6, 
	output An7,
	output reg Ld0,
	output reg Ld1,
	output reg Ld2,
	output reg Ld3,
	
	//VGA signal
	output hSync, vSync,
	output [3:0] vgaR, vgaG, vgaB,
	
	//output MemOE, MemWR, RamCS,
	output  QuadSpiFlashCS
	);
	
	wire Reset;
	assign Reset=BtnC;
	wire sky;
	wire water;
	wire q_start_menu;
	wire q_base_play;
	wire q_line_reel;
	wire q_game_finish;
	
	wire [3:0] state;
	assign state ={q_start_menu, q_base_play, q_line_reel, q_game_finish};
	
	wire [9:0] hc, vc;
	wire [15:0] score;
	wire [11:0] rgb;
	wire [15:0] count_down;
	wire fish_hooked;
	wire fish_caught_lost;
	wire clk_sec;
	
	// SSD Output

	reg [3:0]	SSD;
	wire [7:0]	SSD7, SSD6, SSD5, SSD4, SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  	SSD_CATHODES;
	wire [2:0] ssdscan_clk;
	
	// define clock
	reg [27:0]	DIV_CLK;
	always @ (posedge ClkPort, posedge Reset)  
	begin : CLOCK_DIVIDER
      if (Reset)
			DIV_CLK <= 0;
	  else
			DIV_CLK <= DIV_CLK + 1'b1;
	end
	
	// define clock for display
	wire move_clk;
	assign move_clk=DIV_CLK[19]; 
	wire [11:0] background;
	
	display_controller dc(
		.clk(ClkPort), 
		.hSync(hSync), 
		.vSync(vSync), 
		.sky(sky), 
		.water(water),
		.hCount(hc), 
		.vCount(vc)
	);
	
	fish_controller fc(
		.clk(move_clk),
		.fastclk(ClkPort),
		.sky(sky), 
		.water(water),
		.rst(Reset), 
		.start(BtnU), 
		.cast_line(BtnD),
		.quit(BtnL),
		.reel_in(BtnR),
		.hCount(hc), 
		.vCount(vc), 
		.rgb(rgb),
		.score(score),
		.q_start_menu(q_start_menu),
		.q_base_play(q_base_play),
		.q_line_reel(q_line_reel),
		.q_game_finish(q_game_finish),
		.fish_hooked(fish_hooked),
		.fish_caught_lost(fish_caught_lost)
	);
	
	fish_gameflow_sm sm(
		.clk(ClkPort), 
		.rst(Reset),
		.start(BtnU), 
		.quit(BtnL), 
		.cast_line(BtnD), 
		.reel_in(BtnR),
		.q_start_menu(q_start_menu),
		.q_base_play(q_base_play),
		.q_line_reel(q_line_reel),
		.q_game_finish(q_game_finish),
		.fish_hooked(fish_hooked),
		.fish_caught_lost(fish_caught_lost),
		.count_down(count_down)
	);
	
	fish_timer ft(
	   .clk(ClkPort),
	   .rst(Reset),
	   .clk_sec(clk_sec),
	   .count_down(count_down),
	   .q_base_play(q_base_play),
	   .q_line_reel(q_line_reel)
	);

	
	assign vgaR = rgb[11 : 8];
	assign vgaG = rgb[7  : 4];
	assign vgaB = rgb[3  : 0];
	
	always @(*)begin
	   case (state)
	       4'b0001: begin
	           Ld0 = 1; Ld1 = 0; Ld2 = 0; Ld3 = 0;
	       end
	       
	       4'b0010: begin
	           Ld0 = 0; Ld1 = 1; Ld2 = 0; Ld3 = 0;
	       end
	   
	       4'b0100: begin
	           Ld0 = 0; Ld1 = 0; Ld2 = 1; Ld3 = 0;
	       end
	       
	       4'b1000: begin
	           Ld0 = 0; Ld1 = 0; Ld2 = 0; Ld3 = 1;
	       end
	  endcase
	end  
	  
	// disable memory ports
	//assign {MemOE, MemWR, RamCS, QuadSpiFlashCS} = 4'b1111;
	assign QuadSpiFlashCS = 1'b1;
	
	//SSDs display countdown timer in 4 digits
	assign SSD3 = count_down[15:12];
	assign SSD2 = count_down[11:8];
	assign SSD1 = count_down[7:4];
	assign SSD0 = count_down[3:0];

	//SSDs display score in 4 digits
	assign SSD7 = score[15:12];
	assign SSD6 = score[11:8];
	assign SSD5 = score[7:4];
	assign SSD4 = score[3:0];

	

	assign ssdscan_clk = DIV_CLK[19:17];
	assign An0	= !(~(ssdscan_clk[2]) && ~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 000
	assign An1	= !(~(ssdscan_clk[2]) && ~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 001
	assign An2	=  !(~(ssdscan_clk[2]) && (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 010
	assign An3	=  !(~(ssdscan_clk[2]) && (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 011
	
    assign An4	= !((ssdscan_clk[2]) && ~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 100
	assign An5	= !((ssdscan_clk[2]) && ~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 101
	assign An6	=  !((ssdscan_clk[2]) && (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 110
	assign An7	=  !((ssdscan_clk[2]) && (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 111
    
	assign Dp = 8'b1;
	
	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3, SSD4, SSD5, SSD6, SSD7)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk) 
				  3'b000: SSD = SSD0;
				  3'b001: SSD = SSD1;
				  3'b010: SSD = SSD2;
				  3'b011: SSD = SSD3;
				  3'b100: SSD = SSD4;
				  3'b101: SSD = SSD5;
				  3'b110: SSD = SSD6;
				  3'b111: SSD = SSD7;
		endcase 
	end
	
	// Following is Hex-to-SSD conversion
	always @ (SSD) 
	begin : HEX_TO_SSD
		case (SSD) 
			4'b0000: SSD_CATHODES = 8'b00000010; // 0
			4'b0001: SSD_CATHODES = 8'b10011110; // 1
			4'b0010: SSD_CATHODES = 8'b00100100; // 2
			4'b0011: SSD_CATHODES = 8'b00001100; // 3
			4'b0100: SSD_CATHODES = 8'b10011000; // 4
			4'b0101: SSD_CATHODES = 8'b01001000; // 5
			4'b0110: SSD_CATHODES = 8'b01000000; // 6
			4'b0111: SSD_CATHODES = 8'b00011110; // 7
			4'b1000: SSD_CATHODES = 8'b00000000; // 8
			4'b1001: SSD_CATHODES = 8'b00001000; // 9
			4'b1010: SSD_CATHODES = 8'b00010000; // A
			4'b1011: SSD_CATHODES = 8'b11000000; // B
			4'b1100: SSD_CATHODES = 8'b01100010; // C
			4'b1101: SSD_CATHODES = 8'b10000100; // D
			4'b1110: SSD_CATHODES = 8'b01100000; // E
			4'b1111: SSD_CATHODES = 8'b01110000; // F    
			default: SSD_CATHODES = 8'bXXXXXXXX; // default is not needed as we covered all cases
		endcase
	end	
	
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES};

endmodule

