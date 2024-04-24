module fastfish1_rom
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

		if(({row_reg, col_reg}>=9'b000000000) && ({row_reg, col_reg}<9'b000101011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b000101011) && ({row_reg, col_reg}<9'b000110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b000110000) && ({row_reg, col_reg}<9'b001001000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b001001000) && ({row_reg, col_reg}<9'b001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001001011) && ({row_reg, col_reg}<9'b001010000)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b001010000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001010001) && ({row_reg, col_reg}<9'b001100111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001101000) && ({row_reg, col_reg}<9'b001101110)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b001101110) && ({row_reg, col_reg}<9'b001110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001110000) && ({row_reg, col_reg}<9'b010000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010000101) && ({row_reg, col_reg}<9'b010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010000111) && ({row_reg, col_reg}<9'b010010000)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b010010000) && ({row_reg, col_reg}<9'b010010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010010100) && ({row_reg, col_reg}<9'b010011010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b010011010) && ({row_reg, col_reg}<9'b010011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010011100) && ({row_reg, col_reg}<9'b010100100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010100101) && ({row_reg, col_reg}<9'b010110100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b010110100) && ({row_reg, col_reg}<9'b010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010110110) && ({row_reg, col_reg}<9'b010111001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010111010) && ({row_reg, col_reg}<9'b010111100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b010111100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010111101) && ({row_reg, col_reg}<9'b011000100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b011000101)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011000111) && ({row_reg, col_reg}<9'b011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011001001) && ({row_reg, col_reg}<9'b011001011)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011001100) && ({row_reg, col_reg}<9'b011001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011001110) && ({row_reg, col_reg}<9'b011010110)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b011010110) && ({row_reg, col_reg}<9'b011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011011001) && ({row_reg, col_reg}<9'b011011100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b011011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011011101) && ({row_reg, col_reg}<9'b011100011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011100100) && ({row_reg, col_reg}<9'b011111100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b011111100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011111101) && ({row_reg, col_reg}<9'b100000011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100000100) && ({row_reg, col_reg}<9'b100000111)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b100000111) && ({row_reg, col_reg}<9'b100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100010000) && ({row_reg, col_reg}<9'b100011101)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b100011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100011110) && ({row_reg, col_reg}<9'b100100011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100100100) && ({row_reg, col_reg}<9'b100110110)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b100110110) && ({row_reg, col_reg}<9'b100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100111000) && ({row_reg, col_reg}<9'b100111101)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b100111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100111110) && ({row_reg, col_reg}<9'b101000100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000101) && ({row_reg, col_reg}<9'b101010100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b101010100) && ({row_reg, col_reg}<9'b101010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010110) && ({row_reg, col_reg}<9'b101011000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101011000) && ({row_reg, col_reg}<9'b101011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101011010) && ({row_reg, col_reg}<9'b101011101)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b101011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101011110) && ({row_reg, col_reg}<9'b101100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101100101) && ({row_reg, col_reg}<9'b101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101100111) && ({row_reg, col_reg}<9'b101110001)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}>=9'b101110001) && ({row_reg, col_reg}<9'b101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110100) && ({row_reg, col_reg}<9'b101111010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101111010) && ({row_reg, col_reg}<9'b101111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101111100)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b101111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101111110) && ({row_reg, col_reg}<9'b110000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b110000111) && ({row_reg, col_reg}<9'b110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001011) && ({row_reg, col_reg}<9'b110010000)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110010001) && ({row_reg, col_reg}<9'b110011100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110011101) && ({row_reg, col_reg}<9'b110101011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b110101011) && ({row_reg, col_reg}<9'b110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110101101) && ({row_reg, col_reg}<9'b110110001)) color_data = 12'b100010001111;
		if(({row_reg, col_reg}==9'b110110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110110010) && ({row_reg, col_reg}<9'b111001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b111001101) && ({row_reg, col_reg}<9'b111010001)) color_data = 12'b000000000000;


		if(({row_reg, col_reg}>=9'b111010001) && ({row_reg, col_reg}<=9'b111111111)) color_data = 12'b000011110000;
	end
endmodule