module gameover_rom
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


		if(({row_reg, col_reg}>=9'b000000000) && ({row_reg, col_reg}<9'b001000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b001000001) && ({row_reg, col_reg}<9'b001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001000110) && ({row_reg, col_reg}<9'b001010011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b001010011) && ({row_reg, col_reg}<9'b001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001010111) && ({row_reg, col_reg}<9'b001100001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001100010) && ({row_reg, col_reg}<9'b001101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001101110) && ({row_reg, col_reg}<9'b001110011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001110100) && ({row_reg, col_reg}<9'b001110110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001110111) && ({row_reg, col_reg}<9'b010000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010000010) && ({row_reg, col_reg}<9'b010000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010000101) && ({row_reg, col_reg}<9'b010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010001000) && ({row_reg, col_reg}<9'b010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010001011) && ({row_reg, col_reg}<9'b010001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010001101) && ({row_reg, col_reg}<9'b010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010010010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010010011) && ({row_reg, col_reg}<9'b010010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010010111) && ({row_reg, col_reg}<9'b010100001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010100010) && ({row_reg, col_reg}<9'b010100110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010100111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010101001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010101011) && ({row_reg, col_reg}<9'b010101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010101110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010110000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010110010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010110100) && ({row_reg, col_reg}<9'b011000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b011000001) && ({row_reg, col_reg}<9'b011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b011001000) && ({row_reg, col_reg}<9'b011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011001100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011001110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011010000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011010010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b011010011) && ({row_reg, col_reg}<9'b011010110)) color_data = 12'b000000000000;


		if(({row_reg, col_reg}>=9'b011010110) && ({row_reg, col_reg}<9'b100000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b100000110) && ({row_reg, col_reg}<9'b100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100001011) && ({row_reg, col_reg}<9'b100010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b100010001) && ({row_reg, col_reg}<9'b100010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100010101) && ({row_reg, col_reg}<9'b100100110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100100111) && ({row_reg, col_reg}<9'b100101010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b100101011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b100101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b100101110) && ({row_reg, col_reg}<9'b100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b100110000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110010) && ({row_reg, col_reg}<9'b100110100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b100110101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b100110111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100111001) && ({row_reg, col_reg}<9'b100111011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100111100) && ({row_reg, col_reg}<9'b100111110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100111110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100111111) && ({row_reg, col_reg}<9'b101000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000111) && ({row_reg, col_reg}<9'b101001010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101001011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101001111) && ({row_reg, col_reg}<9'b101010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101010001) && ({row_reg, col_reg}<9'b101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101010110) && ({row_reg, col_reg}<9'b101011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101011000) && ({row_reg, col_reg}<9'b101100110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101100111) && ({row_reg, col_reg}<9'b101101010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101101011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101101100) && ({row_reg, col_reg}<9'b101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101101111) && ({row_reg, col_reg}<9'b101110001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110010) && ({row_reg, col_reg}<9'b101110110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110111) && ({row_reg, col_reg}<9'b101111011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101111011) && ({row_reg, col_reg}<9'b101111111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101111111) && ({row_reg, col_reg}<9'b110000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b110000110) && ({row_reg, col_reg}<9'b110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001011) && ({row_reg, col_reg}<9'b110001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001110) && ({row_reg, col_reg}<9'b110010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b110010001) && ({row_reg, col_reg}<9'b110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110010100) && ({row_reg, col_reg}<9'b110010110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110010111) && ({row_reg, col_reg}<9'b110011011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110011100) && ({row_reg, col_reg}<9'b110011110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110011110)) color_data = 12'b000000000000;




		if(({row_reg, col_reg}>=9'b110011111) && ({row_reg, col_reg}<=9'b111111111)) color_data = 12'b000011110000;
	end
endmodule