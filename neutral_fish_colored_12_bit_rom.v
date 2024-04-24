module neutral_fish_colored_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=9'b000000000) && ({row_reg, col_reg}<9'b000101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b000101010) && ({row_reg, col_reg}<9'b000110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b000110000) && ({row_reg, col_reg}<9'b001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b001001000) && ({row_reg, col_reg}<9'b001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001001011) && ({row_reg, col_reg}<9'b001001110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b001001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001001111) && ({row_reg, col_reg}<9'b001010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b001010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001010111) && ({row_reg, col_reg}<9'b001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b001100111) && ({row_reg, col_reg}<9'b001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001101001) && ({row_reg, col_reg}<9'b001101101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b001101101) && ({row_reg, col_reg}<9'b001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001101111) && ({row_reg, col_reg}<9'b001110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b001110101) && ({row_reg, col_reg}<9'b001110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001110111) && ({row_reg, col_reg}<9'b010000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b010000110) && ({row_reg, col_reg}<9'b010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010001000) && ({row_reg, col_reg}<9'b010001110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b010001110) && ({row_reg, col_reg}<9'b010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010010010) && ({row_reg, col_reg}<9'b010010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b010010100) && ({row_reg, col_reg}<9'b010010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010010111) && ({row_reg, col_reg}<9'b010100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010100111) && ({row_reg, col_reg}<9'b010101001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b010101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010101010) && ({row_reg, col_reg}<9'b010101100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010101101) && ({row_reg, col_reg}<9'b010110001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b010110001) && ({row_reg, col_reg}<9'b010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010110101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b010110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010110111) && ({row_reg, col_reg}<9'b011000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011000101) && ({row_reg, col_reg}<9'b011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011000111) && ({row_reg, col_reg}<9'b011010010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b011010010) && ({row_reg, col_reg}<9'b011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011010100) && ({row_reg, col_reg}<9'b011010110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b011010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011010111) && ({row_reg, col_reg}<9'b011100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011100110) && ({row_reg, col_reg}<9'b011110110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b011110110) && ({row_reg, col_reg}<9'b011111000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011111000) && ({row_reg, col_reg}<9'b100000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100000110) && ({row_reg, col_reg}<9'b100001000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b100001000) && ({row_reg, col_reg}<9'b100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100001110) && ({row_reg, col_reg}<9'b100010111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b100010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100011000) && ({row_reg, col_reg}<9'b100100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100100110) && ({row_reg, col_reg}<9'b100110010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110011) && ({row_reg, col_reg}<9'b100110111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b100110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100111000) && ({row_reg, col_reg}<9'b101000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b101000101) && ({row_reg, col_reg}<9'b101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000111) && ({row_reg, col_reg}<9'b101010001)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b101010001) && ({row_reg, col_reg}<9'b101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010101) && ({row_reg, col_reg}<9'b101010111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b101010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101011000) && ({row_reg, col_reg}<9'b101100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101100111) && ({row_reg, col_reg}<9'b101101111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b101101111) && ({row_reg, col_reg}<9'b101110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110010) && ({row_reg, col_reg}<9'b101110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b101110100) && ({row_reg, col_reg}<9'b101110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101110110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b101110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101111000) && ({row_reg, col_reg}<9'b110000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b110000110) && ({row_reg, col_reg}<9'b110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001011) && ({row_reg, col_reg}<9'b110001110)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=9'b110001110) && ({row_reg, col_reg}<9'b110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110010000) && ({row_reg, col_reg}<9'b110010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b110010101) && ({row_reg, col_reg}<9'b110011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110011000) && ({row_reg, col_reg}<9'b110101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b110101010) && ({row_reg, col_reg}<9'b110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110101100) && ({row_reg, col_reg}<9'b110101111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==9'b110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110110000) && ({row_reg, col_reg}<9'b110110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b110110110) && ({row_reg, col_reg}<9'b110111000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110111000) && ({row_reg, col_reg}<9'b111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b111001011) && ({row_reg, col_reg}<9'b111010000)) color_data = 12'b000000000000;


		if(({row_reg, col_reg}>=9'b111010000) && ({row_reg, col_reg}<=9'b111111111)) color_data = 12'b111111111111;
	end
endmodule