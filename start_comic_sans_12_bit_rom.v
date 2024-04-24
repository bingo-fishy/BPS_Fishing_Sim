module start_comic_sans_rom
	(
		input wire clk,
		input wire [9:0] row,
		input wire [9:0] col,
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



		if(({row_reg, col_reg}>=9'b000000000) && ({row_reg, col_reg}<9'b001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b001100100) && ({row_reg, col_reg}<9'b001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001101000) && ({row_reg, col_reg}<9'b010000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010000100) && ({row_reg, col_reg}<9'b010001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010001100) && ({row_reg, col_reg}<9'b010011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010011110) && ({row_reg, col_reg}<9'b010100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010100011) && ({row_reg, col_reg}<9'b010101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010101100) && ({row_reg, col_reg}<9'b010111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010111110) && ({row_reg, col_reg}<9'b011000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011000011) && ({row_reg, col_reg}<9'b011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011001001) && ({row_reg, col_reg}<9'b011001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011001110) && ({row_reg, col_reg}<9'b011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011010001) && ({row_reg, col_reg}<9'b011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011010100) && ({row_reg, col_reg}<9'b011010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011011000) && ({row_reg, col_reg}<9'b011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011011010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=9'b011011011) && ({row_reg, col_reg}<9'b011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011100000) && ({row_reg, col_reg}<9'b011100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011100011) && ({row_reg, col_reg}<9'b011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011100111) && ({row_reg, col_reg}<9'b011101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011101100) && ({row_reg, col_reg}<9'b011110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011110001) && ({row_reg, col_reg}<9'b011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011110100) && ({row_reg, col_reg}<9'b011110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011110110) && ({row_reg, col_reg}<9'b011111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011111010) && ({row_reg, col_reg}<9'b011111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011111110) && ({row_reg, col_reg}<9'b100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100001000) && ({row_reg, col_reg}<9'b100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100001100) && ({row_reg, col_reg}<9'b100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100010000) && ({row_reg, col_reg}<9'b100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100010100) && ({row_reg, col_reg}<9'b100010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100010111) && ({row_reg, col_reg}<9'b100011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100011010) && ({row_reg, col_reg}<9'b100011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100011110) && ({row_reg, col_reg}<9'b100100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100101000) && ({row_reg, col_reg}<9'b100101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100101100) && ({row_reg, col_reg}<9'b100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110000) && ({row_reg, col_reg}<9'b100110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110100) && ({row_reg, col_reg}<9'b100110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110111) && ({row_reg, col_reg}<9'b100111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b100111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100111110) && ({row_reg, col_reg}<9'b101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000010) && ({row_reg, col_reg}<9'b101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000111) && ({row_reg, col_reg}<9'b101001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101001100) && ({row_reg, col_reg}<9'b101001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010000) && ({row_reg, col_reg}<9'b101010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010100) && ({row_reg, col_reg}<9'b101010110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010111) && ({row_reg, col_reg}<9'b101011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101011110) && ({row_reg, col_reg}<9'b101100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b101100010) && ({row_reg, col_reg}<9'b101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101100110) && ({row_reg, col_reg}<9'b101101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101101100) && ({row_reg, col_reg}<9'b101110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b101110000) && ({row_reg, col_reg}<9'b101110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110111) && ({row_reg, col_reg}<9'b101111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b101111101)) color_data = 12'b000000000000;





		if(({row_reg, col_reg}>=9'b101111110) && ({row_reg, col_reg}<=9'b111111111)) color_data = 12'b111111111111;
	end
endmodule