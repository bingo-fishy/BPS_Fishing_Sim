module slowfish2_rom
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
		if(({row_reg, col_reg}>=9'b000101011) && ({row_reg, col_reg}<9'b000101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b000101110) && ({row_reg, col_reg}<9'b001001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b001001001) && ({row_reg, col_reg}<9'b001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001001011) && ({row_reg, col_reg}<9'b001001110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b001001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001001111) && ({row_reg, col_reg}<9'b001101000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b001101001) && ({row_reg, col_reg}<9'b001101101)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b001101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b001101110) && ({row_reg, col_reg}<9'b010000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010001000) && ({row_reg, col_reg}<9'b010001110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b010001110) && ({row_reg, col_reg}<9'b010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010010001) && ({row_reg, col_reg}<9'b010010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010010110) && ({row_reg, col_reg}<9'b010100110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010100111) && ({row_reg, col_reg}<9'b010101001)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b010101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b010101011)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b010101110) && ({row_reg, col_reg}<9'b010110001)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b010110010) && ({row_reg, col_reg}<9'b010110100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b010110101)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b010110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b010110111) && ({row_reg, col_reg}<9'b011000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011000111) && ({row_reg, col_reg}<9'b011001001)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b011001001) && ({row_reg, col_reg}<9'b011001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==9'b011001011)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b011001100) && ({row_reg, col_reg}<9'b011001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=9'b011001110) && ({row_reg, col_reg}<9'b011010010)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b011010010) && ({row_reg, col_reg}<9'b011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011010100) && ({row_reg, col_reg}<9'b011010110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b011010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011010111) && ({row_reg, col_reg}<9'b011100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b011100110) && ({row_reg, col_reg}<9'b011110110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b011110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b011110111) && ({row_reg, col_reg}<9'b100000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100000110) && ({row_reg, col_reg}<9'b100001000)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b100001000) && ({row_reg, col_reg}<9'b100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100001110) && ({row_reg, col_reg}<9'b100010111)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b100010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100011000) && ({row_reg, col_reg}<9'b100100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100100110) && ({row_reg, col_reg}<9'b100110010)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b100110011) && ({row_reg, col_reg}<9'b100110111)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b100110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b100111000) && ({row_reg, col_reg}<9'b101000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101000111) && ({row_reg, col_reg}<9'b101010001)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b101010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101010010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b101010011) && ({row_reg, col_reg}<9'b101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101010101) && ({row_reg, col_reg}<9'b101010111)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b101010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101011000) && ({row_reg, col_reg}<9'b101100111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101101000) && ({row_reg, col_reg}<9'b101101111)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}>=9'b101101111) && ({row_reg, col_reg}<9'b101110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b101110001) && ({row_reg, col_reg}<9'b101110101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==9'b101110110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b101110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b101111000) && ({row_reg, col_reg}<9'b110001000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b110001000) && ({row_reg, col_reg}<9'b110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001011) && ({row_reg, col_reg}<9'b110001110)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b110001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110001111) && ({row_reg, col_reg}<9'b110010110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110010111) && ({row_reg, col_reg}<9'b110101011)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==9'b110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=9'b110101100) && ({row_reg, col_reg}<9'b110101111)) color_data = 12'b110101110100;
		if(({row_reg, col_reg}==9'b110101111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=9'b110110000) && ({row_reg, col_reg}<9'b111001100)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=9'b111001100) && ({row_reg, col_reg}<9'b111001111)) color_data = 12'b000000000000;


		if(({row_reg, col_reg}>=9'b111001111) && ({row_reg, col_reg}<=9'b111111111)) color_data = 12'b000011110000;
	end
endmodule