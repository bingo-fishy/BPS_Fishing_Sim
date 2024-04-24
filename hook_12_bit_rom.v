module hook_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [3:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [3:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin


		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==8'b00100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b00100111) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=8'b00110101) && ({row_reg, col_reg}<8'b00110111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==8'b00110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b00111000) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01000100)) color_data = 12'b100100000000;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01000111)) color_data = 12'b111101000100;
		if(({row_reg, col_reg}==8'b01000111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b01001000) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b01010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010100) && ({row_reg, col_reg}<8'b01010110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==8'b01010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==8'b01010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b01011000) && ({row_reg, col_reg}<8'b01100100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b01100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01100101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==8'b01100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b01100111) && ({row_reg, col_reg}<8'b01110100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b01110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==8'b01110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01110111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=8'b01111000) && ({row_reg, col_reg}<8'b01111010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b01111010) && ({row_reg, col_reg}<8'b10000100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b10000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10000101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=8'b10000110) && ({row_reg, col_reg}<8'b10001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10001000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==8'b10001001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b10001010) && ({row_reg, col_reg}<8'b10010100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==8'b10010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010101) && ({row_reg, col_reg}<8'b10011000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==8'b10011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=8'b10011001) && ({row_reg, col_reg}<8'b10100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=8'b10100101) && ({row_reg, col_reg}<8'b10101000)) color_data = 12'b000000000000;


		if(({row_reg, col_reg}>=8'b10101000) && ({row_reg, col_reg}<=8'b10111011)) color_data = 12'b000011110000;
	end
endmodule