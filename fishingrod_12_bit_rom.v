module fishingrod_rom
	(
		input wire clk,
		input wire [6:0] row,
		input wire [6:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [6:0] row_reg;
	reg [6:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00000010000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00000010000111) && ({row_reg, col_reg}<14'b00000010001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00000010001110) && ({row_reg, col_reg}<14'b00000100000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00000100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00000100000111) && ({row_reg, col_reg}<14'b00000100001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00000100001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00000100001111) && ({row_reg, col_reg}<14'b00000110000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00000110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00000110000111) && ({row_reg, col_reg}<14'b00000110001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00000110001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00000110001111) && ({row_reg, col_reg}<14'b00001000000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00001000000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001000000111) && ({row_reg, col_reg}<14'b00001000001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00001000001110) && ({row_reg, col_reg}<14'b00001000010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00001000010010) && ({row_reg, col_reg}<14'b00001010000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00001010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001010000111) && ({row_reg, col_reg}<14'b00001010001010)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==14'b00001010001010)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=14'b00001010001011) && ({row_reg, col_reg}<14'b00001010001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b00001010001101)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=14'b00001010001110) && ({row_reg, col_reg}<14'b00001010010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00001010010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00001010010011) && ({row_reg, col_reg}<14'b00001100000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00001100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001100000111) && ({row_reg, col_reg}<14'b00001100001010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00001100001010) && ({row_reg, col_reg}<14'b00001100001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00001100001110) && ({row_reg, col_reg}<14'b00001100010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00001100010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00001100010011) && ({row_reg, col_reg}<14'b00001110000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00001110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001110000111) && ({row_reg, col_reg}<14'b00001110001010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00001110001010) && ({row_reg, col_reg}<14'b00001110001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00001110001110) && ({row_reg, col_reg}<14'b00001110010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00001110010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00001110010011) && ({row_reg, col_reg}<14'b00010000000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00010000000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010000000111) && ({row_reg, col_reg}<14'b00010000001010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00010000001010) && ({row_reg, col_reg}<14'b00010000001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00010000001110) && ({row_reg, col_reg}<14'b00010000010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00010000010010) && ({row_reg, col_reg}<14'b00010000010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00010000010110) && ({row_reg, col_reg}<14'b00010010000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00010010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010010000111) && ({row_reg, col_reg}<14'b00010010001010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00010010001010) && ({row_reg, col_reg}<14'b00010010001110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00010010001110) && ({row_reg, col_reg}<14'b00010010010010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00010010010010) && ({row_reg, col_reg}<14'b00010010010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00010010010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00010010010111) && ({row_reg, col_reg}<14'b00010100000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00010100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010100000111) && ({row_reg, col_reg}<14'b00010100001010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00010100001010) && ({row_reg, col_reg}<14'b00010100001110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00010100001110) && ({row_reg, col_reg}<14'b00010100010010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00010100010010) && ({row_reg, col_reg}<14'b00010100010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00010100010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00010100010111) && ({row_reg, col_reg}<14'b00010110000111)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00010110000111) && ({row_reg, col_reg}<14'b00010110001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00010110001001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00010110001010) && ({row_reg, col_reg}<14'b00010110001110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00010110001110) && ({row_reg, col_reg}<14'b00010110010010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00010110010010) && ({row_reg, col_reg}<14'b00010110010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00010110010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00010110010111) && ({row_reg, col_reg}<14'b00011000001000)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00011000001000) && ({row_reg, col_reg}<14'b00011000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011000001010) && ({row_reg, col_reg}<14'b00011000001110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00011000001110) && ({row_reg, col_reg}<14'b00011000010010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00011000010010) && ({row_reg, col_reg}<14'b00011000010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00011000010110) && ({row_reg, col_reg}<14'b00011000011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00011000011010) && ({row_reg, col_reg}<14'b00011010001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00011010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00011010001010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b00011010001011) && ({row_reg, col_reg}<14'b00011010001110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00011010001110) && ({row_reg, col_reg}<14'b00011010010010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00011010010010) && ({row_reg, col_reg}<14'b00011010010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00011010010110) && ({row_reg, col_reg}<14'b00011010011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00011010011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00011010011011) && ({row_reg, col_reg}<14'b00011100001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00011100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00011100001010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b00011100001011) && ({row_reg, col_reg}<14'b00011100001110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00011100001110) && ({row_reg, col_reg}<14'b00011100010010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00011100010010) && ({row_reg, col_reg}<14'b00011100010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00011100010110) && ({row_reg, col_reg}<14'b00011100011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00011100011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00011100011011) && ({row_reg, col_reg}<14'b00011110001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00011110001001) && ({row_reg, col_reg}<14'b00011110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011110001011) && ({row_reg, col_reg}<14'b00011110001101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b00011110001101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00011110001110) && ({row_reg, col_reg}<14'b00011110010010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00011110010010) && ({row_reg, col_reg}<14'b00011110010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00011110010110) && ({row_reg, col_reg}<14'b00011110011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00011110011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00011110011011) && ({row_reg, col_reg}<14'b00100000001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00100000001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100000001010) && ({row_reg, col_reg}<14'b00100000001110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00100000001110) && ({row_reg, col_reg}<14'b00100000010010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00100000010010) && ({row_reg, col_reg}<14'b00100000010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00100000010110) && ({row_reg, col_reg}<14'b00100000011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00100000011010) && ({row_reg, col_reg}<14'b00100000011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00100000011110) && ({row_reg, col_reg}<14'b00100010001010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00100010001010) && ({row_reg, col_reg}<14'b00100010001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100010001110) && ({row_reg, col_reg}<14'b00100010010010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00100010010010) && ({row_reg, col_reg}<14'b00100010010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00100010010110) && ({row_reg, col_reg}<14'b00100010011010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00100010011010) && ({row_reg, col_reg}<14'b00100010011110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00100010011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00100010011111) && ({row_reg, col_reg}<14'b00100100001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00100100001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100100001110) && ({row_reg, col_reg}<14'b00100100010010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00100100010010) && ({row_reg, col_reg}<14'b00100100010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00100100010110) && ({row_reg, col_reg}<14'b00100100011010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00100100011010) && ({row_reg, col_reg}<14'b00100100011110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00100100011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00100100011111) && ({row_reg, col_reg}<14'b00100110001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00100110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100110001110) && ({row_reg, col_reg}<14'b00100110010010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00100110010010) && ({row_reg, col_reg}<14'b00100110010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00100110010110) && ({row_reg, col_reg}<14'b00100110011010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00100110011010) && ({row_reg, col_reg}<14'b00100110011110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00100110011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00100110011111) && ({row_reg, col_reg}<14'b00101000001101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00101000001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101000001110) && ({row_reg, col_reg}<14'b00101000010010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=14'b00101000010010) && ({row_reg, col_reg}<14'b00101000010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00101000010110) && ({row_reg, col_reg}<14'b00101000011010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00101000011010) && ({row_reg, col_reg}<14'b00101000011110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00101000011110) && ({row_reg, col_reg}<14'b00101000100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00101000100010) && ({row_reg, col_reg}<14'b00101010001110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00101010001110) && ({row_reg, col_reg}<14'b00101010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00101010010010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00101010010011) && ({row_reg, col_reg}<14'b00101010010110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00101010010110) && ({row_reg, col_reg}<14'b00101010011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00101010011010) && ({row_reg, col_reg}<14'b00101010011110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00101010011110) && ({row_reg, col_reg}<14'b00101010100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00101010100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00101010100011) && ({row_reg, col_reg}<14'b00101100010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00101100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101100010010) && ({row_reg, col_reg}<14'b00101100010101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b00101100010101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00101100010110) && ({row_reg, col_reg}<14'b00101100011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00101100011010) && ({row_reg, col_reg}<14'b00101100011110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00101100011110) && ({row_reg, col_reg}<14'b00101100100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00101100100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00101100100011) && ({row_reg, col_reg}<14'b00101110010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00101110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101110010010) && ({row_reg, col_reg}<14'b00101110010101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b00101110010101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00101110010110) && ({row_reg, col_reg}<14'b00101110011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00101110011010) && ({row_reg, col_reg}<14'b00101110011110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00101110011110) && ({row_reg, col_reg}<14'b00101110100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00101110100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00101110100011) && ({row_reg, col_reg}<14'b00110000010001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00110000010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110000010010) && ({row_reg, col_reg}<14'b00110000010101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b00110000010101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00110000010110) && ({row_reg, col_reg}<14'b00110000011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00110000011010) && ({row_reg, col_reg}<14'b00110000011110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00110000011110) && ({row_reg, col_reg}<14'b00110000100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00110000100010) && ({row_reg, col_reg}<14'b00110000100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00110000100110) && ({row_reg, col_reg}<14'b00110010010010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00110010010010) && ({row_reg, col_reg}<14'b00110010010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00110010010110)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b00110010010111) && ({row_reg, col_reg}<14'b00110010011010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b00110010011010)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b00110010011011) && ({row_reg, col_reg}<14'b00110010011110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00110010011110) && ({row_reg, col_reg}<14'b00110010100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b00110010100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=14'b00110010100010) && ({row_reg, col_reg}<14'b00110010100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00110010100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00110010100111) && ({row_reg, col_reg}<14'b00110100010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00110100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00110100010110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00110100010111) && ({row_reg, col_reg}<14'b00110100011010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00110100011010) && ({row_reg, col_reg}<14'b00110100011110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00110100011110) && ({row_reg, col_reg}<14'b00110100100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b00110100100001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b00110100100010) && ({row_reg, col_reg}<14'b00110100100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00110100100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00110100100111) && ({row_reg, col_reg}<14'b00110110010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00110110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00110110010110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00110110010111) && ({row_reg, col_reg}<14'b00110110011010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00110110011010) && ({row_reg, col_reg}<14'b00110110011110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00110110011110) && ({row_reg, col_reg}<14'b00110110100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b00110110100001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b00110110100010) && ({row_reg, col_reg}<14'b00110110100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00110110100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00110110100111) && ({row_reg, col_reg}<14'b00111000010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00111000010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00111000010110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00111000010111) && ({row_reg, col_reg}<14'b00111000011010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00111000011010) && ({row_reg, col_reg}<14'b00111000011110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b00111000011110) && ({row_reg, col_reg}<14'b00111000100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b00111000100001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b00111000100010) && ({row_reg, col_reg}<14'b00111000100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b00111000100110) && ({row_reg, col_reg}<14'b00111000101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00111000101010) && ({row_reg, col_reg}<14'b00111010010110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b00111010010110) && ({row_reg, col_reg}<14'b00111010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00111010011010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00111010011011) && ({row_reg, col_reg}<14'b00111010011110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b00111010011110) && ({row_reg, col_reg}<14'b00111010100010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00111010100010) && ({row_reg, col_reg}<14'b00111010100110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00111010100110) && ({row_reg, col_reg}<14'b00111010101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00111010101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00111010101011) && ({row_reg, col_reg}<14'b00111100011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00111100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100011010) && ({row_reg, col_reg}<14'b00111100011110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00111100011110) && ({row_reg, col_reg}<14'b00111100100010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00111100100010) && ({row_reg, col_reg}<14'b00111100100110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00111100100110) && ({row_reg, col_reg}<14'b00111100101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00111100101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00111100101011) && ({row_reg, col_reg}<14'b00111110011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b00111110011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111110011010) && ({row_reg, col_reg}<14'b00111110011110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b00111110011110) && ({row_reg, col_reg}<14'b00111110100010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b00111110100010) && ({row_reg, col_reg}<14'b00111110100110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b00111110100110) && ({row_reg, col_reg}<14'b00111110101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b00111110101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b00111110101011) && ({row_reg, col_reg}<14'b01000000011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01000000011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000000011010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=14'b01000000011011) && ({row_reg, col_reg}<14'b01000000011110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01000000011110) && ({row_reg, col_reg}<14'b01000000100001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b01000000100001)) color_data = 12'b100101110010;
		if(({row_reg, col_reg}>=14'b01000000100010) && ({row_reg, col_reg}<14'b01000000100110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01000000100110) && ({row_reg, col_reg}<14'b01000000101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01000000101010) && ({row_reg, col_reg}<14'b01000000101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01000000101110) && ({row_reg, col_reg}<14'b01000010011010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01000010011010) && ({row_reg, col_reg}<14'b01000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000010011110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01000010011111) && ({row_reg, col_reg}<14'b01000010100001)) color_data = 12'b001100010001;
		if(({row_reg, col_reg}==14'b01000010100001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01000010100010) && ({row_reg, col_reg}<14'b01000010100101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01000010100101)) color_data = 12'b011001010001;
		if(({row_reg, col_reg}>=14'b01000010100110) && ({row_reg, col_reg}<14'b01000010101001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01000010101001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01000010101010) && ({row_reg, col_reg}<14'b01000010101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01000010101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01000010101111) && ({row_reg, col_reg}<14'b01000100011101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01000100011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000100011110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01000100011111) && ({row_reg, col_reg}<14'b01000100100001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01000100100001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01000100100010) && ({row_reg, col_reg}<14'b01000100100101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01000100100101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b01000100100110) && ({row_reg, col_reg}<14'b01000100101001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01000100101001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b01000100101010) && ({row_reg, col_reg}<14'b01000100101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01000100101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01000100101111) && ({row_reg, col_reg}<14'b01000110011101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01000110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000110011110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01000110011111) && ({row_reg, col_reg}<14'b01000110100001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01000110100001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01000110100010) && ({row_reg, col_reg}<14'b01000110100101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01000110100101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b01000110100110) && ({row_reg, col_reg}<14'b01000110101001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01000110101001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b01000110101010) && ({row_reg, col_reg}<14'b01000110101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01000110101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01000110101111) && ({row_reg, col_reg}<14'b01001000011101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01001000011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001000011110) && ({row_reg, col_reg}<14'b01001000100001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01001000100001)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b01001000100010) && ({row_reg, col_reg}<14'b01001000100101)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}==14'b01001000100101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01001000100110) && ({row_reg, col_reg}<14'b01001000101001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01001000101001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01001000101010) && ({row_reg, col_reg}<14'b01001000101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01001000101110) && ({row_reg, col_reg}<14'b01001000110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01001000110010) && ({row_reg, col_reg}<14'b01001010011110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01001010011110) && ({row_reg, col_reg}<14'b01001010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001010100010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01001010100011) && ({row_reg, col_reg}<14'b01001010100110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01001010100110) && ({row_reg, col_reg}<14'b01001010101010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01001010101010) && ({row_reg, col_reg}<14'b01001010101110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01001010101110) && ({row_reg, col_reg}<14'b01001010110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01001010110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01001010110011) && ({row_reg, col_reg}<14'b01001100100001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01001100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100100010) && ({row_reg, col_reg}<14'b01001100100101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01001100100101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01001100100110) && ({row_reg, col_reg}<14'b01001100101010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01001100101010) && ({row_reg, col_reg}<14'b01001100101110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01001100101110) && ({row_reg, col_reg}<14'b01001100110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01001100110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01001100110011) && ({row_reg, col_reg}<14'b01001110100001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01001110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001110100010) && ({row_reg, col_reg}<14'b01001110100101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01001110100101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01001110100110) && ({row_reg, col_reg}<14'b01001110101010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01001110101010) && ({row_reg, col_reg}<14'b01001110101110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01001110101110) && ({row_reg, col_reg}<14'b01001110110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01001110110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01001110110011) && ({row_reg, col_reg}<14'b01010000100001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01010000100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010000100010) && ({row_reg, col_reg}<14'b01010000100101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01010000100101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01010000100110) && ({row_reg, col_reg}<14'b01010000101010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01010000101010) && ({row_reg, col_reg}<14'b01010000101110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01010000101110) && ({row_reg, col_reg}<14'b01010000110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01010000110010) && ({row_reg, col_reg}<14'b01010000110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01010000110110) && ({row_reg, col_reg}<14'b01010010100010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01010010100010) && ({row_reg, col_reg}<14'b01010010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010010100110)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b01010010100111) && ({row_reg, col_reg}<14'b01010010101010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01010010101010)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b01010010101011) && ({row_reg, col_reg}<14'b01010010101110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01010010101110) && ({row_reg, col_reg}<14'b01010010110001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01010010110001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=14'b01010010110010) && ({row_reg, col_reg}<14'b01010010110110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01010010110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01010010110111) && ({row_reg, col_reg}<14'b01010100100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01010100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100100110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01010100100111) && ({row_reg, col_reg}<14'b01010100101010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01010100101010) && ({row_reg, col_reg}<14'b01010100101110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01010100101110) && ({row_reg, col_reg}<14'b01010100110001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01010100110001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b01010100110010) && ({row_reg, col_reg}<14'b01010100110110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01010100110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01010100110111) && ({row_reg, col_reg}<14'b01010110100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01010110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010110100110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01010110100111) && ({row_reg, col_reg}<14'b01010110101010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01010110101010) && ({row_reg, col_reg}<14'b01010110101110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01010110101110) && ({row_reg, col_reg}<14'b01010110110001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01010110110001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b01010110110010) && ({row_reg, col_reg}<14'b01010110110110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01010110110110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01010110110111) && ({row_reg, col_reg}<14'b01011000100101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01011000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011000100110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01011000100111) && ({row_reg, col_reg}<14'b01011000101010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01011000101010) && ({row_reg, col_reg}<14'b01011000101110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01011000101110) && ({row_reg, col_reg}<14'b01011000110001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01011000110001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b01011000110010) && ({row_reg, col_reg}<14'b01011000110110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01011000110110) && ({row_reg, col_reg}<14'b01011000111010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01011000111010) && ({row_reg, col_reg}<14'b01011010100110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01011010100110) && ({row_reg, col_reg}<14'b01011010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010101010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01011010101011) && ({row_reg, col_reg}<14'b01011010101110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01011010101110) && ({row_reg, col_reg}<14'b01011010110010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01011010110010) && ({row_reg, col_reg}<14'b01011010110110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01011010110110) && ({row_reg, col_reg}<14'b01011010111010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01011010111010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01011010111011) && ({row_reg, col_reg}<14'b01011100101001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01011100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011100101010) && ({row_reg, col_reg}<14'b01011100101110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01011100101110) && ({row_reg, col_reg}<14'b01011100110010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01011100110010) && ({row_reg, col_reg}<14'b01011100110110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01011100110110) && ({row_reg, col_reg}<14'b01011100111010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01011100111010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01011100111011) && ({row_reg, col_reg}<14'b01011110101001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01011110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011110101010) && ({row_reg, col_reg}<14'b01011110101110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01011110101110) && ({row_reg, col_reg}<14'b01011110110010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01011110110010) && ({row_reg, col_reg}<14'b01011110110110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01011110110110) && ({row_reg, col_reg}<14'b01011110111010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01011110111010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01011110111011) && ({row_reg, col_reg}<14'b01100000101001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01100000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000101010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=14'b01100000101011) && ({row_reg, col_reg}<14'b01100000101110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01100000101110) && ({row_reg, col_reg}<14'b01100000110001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b01100000110001)) color_data = 12'b100101110010;
		if(({row_reg, col_reg}>=14'b01100000110010) && ({row_reg, col_reg}<14'b01100000110110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01100000110110) && ({row_reg, col_reg}<14'b01100000111010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01100000111010) && ({row_reg, col_reg}<14'b01100000111110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01100000111110) && ({row_reg, col_reg}<14'b01100010101010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01100010101010) && ({row_reg, col_reg}<14'b01100010101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010101110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01100010101111) && ({row_reg, col_reg}<14'b01100010110001)) color_data = 12'b001100010001;
		if(({row_reg, col_reg}==14'b01100010110001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01100010110010) && ({row_reg, col_reg}<14'b01100010110101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01100010110101)) color_data = 12'b011001010001;
		if(({row_reg, col_reg}>=14'b01100010110110) && ({row_reg, col_reg}<14'b01100010111001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01100010111010) && ({row_reg, col_reg}<14'b01100010111110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01100010111110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01100010111111) && ({row_reg, col_reg}<14'b01100100101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01100100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100101110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01100100101111) && ({row_reg, col_reg}<14'b01100100110001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01100100110001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01100100110010) && ({row_reg, col_reg}<14'b01100100110101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01100100110101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b01100100110110) && ({row_reg, col_reg}<14'b01100100111001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01100100111001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b01100100111010) && ({row_reg, col_reg}<14'b01100100111110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01100100111110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01100100111111) && ({row_reg, col_reg}<14'b01100110101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01100110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100110101110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01100110101111) && ({row_reg, col_reg}<14'b01100110110001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01100110110001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01100110110010) && ({row_reg, col_reg}<14'b01100110110101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b01100110110101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b01100110110110) && ({row_reg, col_reg}<14'b01100110111001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01100110111001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b01100110111010) && ({row_reg, col_reg}<14'b01100110111110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01100110111110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01100110111111) && ({row_reg, col_reg}<14'b01101000101101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01101000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000101110) && ({row_reg, col_reg}<14'b01101000110001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01101000110001)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b01101000110010) && ({row_reg, col_reg}<14'b01101000110101)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}==14'b01101000110101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01101000110110) && ({row_reg, col_reg}<14'b01101000111001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b01101000111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01101000111010) && ({row_reg, col_reg}<14'b01101000111110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01101000111110) && ({row_reg, col_reg}<14'b01101001000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01101001000010) && ({row_reg, col_reg}<14'b01101010101110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01101010101110) && ({row_reg, col_reg}<14'b01101010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101010110010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01101010110011) && ({row_reg, col_reg}<14'b01101010110110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01101010110110) && ({row_reg, col_reg}<14'b01101010111010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01101010111010) && ({row_reg, col_reg}<14'b01101010111110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01101010111110) && ({row_reg, col_reg}<14'b01101011000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01101011000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101100110001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01101100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101100110010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01101100110011) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01101100110110) && ({row_reg, col_reg}<14'b01101100111010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01101100111010) && ({row_reg, col_reg}<14'b01101100111110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01101100111110) && ({row_reg, col_reg}<14'b01101101000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01101101000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01101101000011) && ({row_reg, col_reg}<14'b01101110110001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01101110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101110110010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b01101110110011) && ({row_reg, col_reg}<14'b01101110110101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01101110110101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01101110110110) && ({row_reg, col_reg}<14'b01101110111010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01101110111010) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01101111000011) && ({row_reg, col_reg}<14'b01110000110001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110010) && ({row_reg, col_reg}<14'b01110000110110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01110000110110) && ({row_reg, col_reg}<14'b01110000111010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01110000111010) && ({row_reg, col_reg}<14'b01110000111110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01110001000010) && ({row_reg, col_reg}<14'b01110001000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110010110010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01110010110010) && ({row_reg, col_reg}<14'b01110010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01110010111010) && ({row_reg, col_reg}<14'b01110010111110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01110010111110) && ({row_reg, col_reg}<14'b01110011000010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01110011000010) && ({row_reg, col_reg}<14'b01110011000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01110011000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01110011000111) && ({row_reg, col_reg}<14'b01110100110101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01110100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110110) && ({row_reg, col_reg}<14'b01110100111010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01110100111010) && ({row_reg, col_reg}<14'b01110100111110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01110100111110) && ({row_reg, col_reg}<14'b01110101000010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01110101000010) && ({row_reg, col_reg}<14'b01110101000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01110101000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01110101000111) && ({row_reg, col_reg}<14'b01110110110101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01110110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110110) && ({row_reg, col_reg}<14'b01110110111010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01110110111010) && ({row_reg, col_reg}<14'b01110110111110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01110111000010) && ({row_reg, col_reg}<14'b01110111000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01110111000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01111000110101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01111000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110110) && ({row_reg, col_reg}<14'b01111000111010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=14'b01111000111010) && ({row_reg, col_reg}<14'b01111000111110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b01111000111110) && ({row_reg, col_reg}<14'b01111001000010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01111001000010) && ({row_reg, col_reg}<14'b01111001000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b01111001000110) && ({row_reg, col_reg}<14'b01111001001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01111001001010) && ({row_reg, col_reg}<14'b01111010110110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b01111010110110) && ({row_reg, col_reg}<14'b01111010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111010111010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b01111010111011) && ({row_reg, col_reg}<14'b01111010111110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01111010111110) && ({row_reg, col_reg}<14'b01111011000010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01111011000010) && ({row_reg, col_reg}<14'b01111011000110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01111011000110) && ({row_reg, col_reg}<14'b01111011001010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01111011001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01111011001011) && ({row_reg, col_reg}<14'b01111100111001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01111100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111010) && ({row_reg, col_reg}<14'b01111100111101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01111100111101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01111100111110) && ({row_reg, col_reg}<14'b01111101000010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01111101000010) && ({row_reg, col_reg}<14'b01111101000110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01111101000110) && ({row_reg, col_reg}<14'b01111101001010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01111101001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01111101001011) && ({row_reg, col_reg}<14'b01111110111001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b01111110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111010) && ({row_reg, col_reg}<14'b01111110111101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b01111110111101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b01111110111110) && ({row_reg, col_reg}<14'b01111111000010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b01111111000010) && ({row_reg, col_reg}<14'b01111111000110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b01111111000110) && ({row_reg, col_reg}<14'b01111111001010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b01111111001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b01111111001011) && ({row_reg, col_reg}<14'b10000000111001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10000000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111010) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10000000111101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10000000111110) && ({row_reg, col_reg}<14'b10000001000010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10000001000010) && ({row_reg, col_reg}<14'b10000001000110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10000001000110) && ({row_reg, col_reg}<14'b10000001001010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b10000001001010) && ({row_reg, col_reg}<14'b10000001001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10000001001110) && ({row_reg, col_reg}<14'b10000010111010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10000010111010) && ({row_reg, col_reg}<14'b10000010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000010111110)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b10000010111111) && ({row_reg, col_reg}<14'b10000011000010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10000011000010)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b10000011000011) && ({row_reg, col_reg}<14'b10000011000110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10000011000110) && ({row_reg, col_reg}<14'b10000011001001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10000011001001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=14'b10000011001010) && ({row_reg, col_reg}<14'b10000011001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10000011001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10000011001111) && ({row_reg, col_reg}<14'b10000100111101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10000100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000100111110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10000100111111) && ({row_reg, col_reg}<14'b10000101000010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10000101000010) && ({row_reg, col_reg}<14'b10000101000110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10000101000110) && ({row_reg, col_reg}<14'b10000101001001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10000101001001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b10000101001010) && ({row_reg, col_reg}<14'b10000101001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10000101001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10000101001111) && ({row_reg, col_reg}<14'b10000110111101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10000110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000110111110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10000110111111) && ({row_reg, col_reg}<14'b10000111000010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10000111000010) && ({row_reg, col_reg}<14'b10000111000110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10000111000110) && ({row_reg, col_reg}<14'b10000111001001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10000111001001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b10000111001010) && ({row_reg, col_reg}<14'b10000111001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10000111001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10000111001111) && ({row_reg, col_reg}<14'b10001000111101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10001000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001000111110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10001001000010) && ({row_reg, col_reg}<14'b10001001000110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10001001000110) && ({row_reg, col_reg}<14'b10001001001001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10001001001001)) color_data = 12'b010100110001;
		if(({row_reg, col_reg}>=14'b10001001001010) && ({row_reg, col_reg}<14'b10001001001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b10001001001110) && ({row_reg, col_reg}<14'b10001001010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10001001010010) && ({row_reg, col_reg}<14'b10001010111110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10001010111110) && ({row_reg, col_reg}<14'b10001011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001011000010)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10001011000011) && ({row_reg, col_reg}<14'b10001011000110)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10001011000110) && ({row_reg, col_reg}<14'b10001011001010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10001011001010) && ({row_reg, col_reg}<14'b10001011001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10001011001110) && ({row_reg, col_reg}<14'b10001011010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10001011010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10001011010011) && ({row_reg, col_reg}<14'b10001101000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10001101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101000010) && ({row_reg, col_reg}<14'b10001101000110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10001101000110) && ({row_reg, col_reg}<14'b10001101001010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10001101001010) && ({row_reg, col_reg}<14'b10001101001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10001101001110) && ({row_reg, col_reg}<14'b10001101010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10001101010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10001101010011) && ({row_reg, col_reg}<14'b10001111000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10001111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001111000010) && ({row_reg, col_reg}<14'b10001111000110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10001111001010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10001111001010) && ({row_reg, col_reg}<14'b10001111001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10001111001110) && ({row_reg, col_reg}<14'b10001111010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10001111010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10001111010011) && ({row_reg, col_reg}<14'b10010001000001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10010001000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010001000010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=14'b10010001000011) && ({row_reg, col_reg}<14'b10010001000110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010001001001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10010001001001)) color_data = 12'b100101110010;
		if(({row_reg, col_reg}>=14'b10010001001010) && ({row_reg, col_reg}<14'b10010001001110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10010001001110) && ({row_reg, col_reg}<14'b10010001010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=14'b10010001010010) && ({row_reg, col_reg}<14'b10010001010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10010001010110) && ({row_reg, col_reg}<14'b10010011000010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10010011000010) && ({row_reg, col_reg}<14'b10010011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010011000110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010011001001)) color_data = 12'b001100010001;
		if(({row_reg, col_reg}==14'b10010011001001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10010011001010) && ({row_reg, col_reg}<14'b10010011001101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b10010011001101)) color_data = 12'b011001010001;
		if(({row_reg, col_reg}>=14'b10010011001110) && ({row_reg, col_reg}<14'b10010011010001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10010011010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011010010) && ({row_reg, col_reg}<14'b10010011010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10010011010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10010011010111) && ({row_reg, col_reg}<14'b10010101000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10010101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010101000110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b10010101000111) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10010101001001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10010101001010) && ({row_reg, col_reg}<14'b10010101001101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b10010101001101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b10010101001110) && ({row_reg, col_reg}<14'b10010101010001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10010101010001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b10010101010010) && ({row_reg, col_reg}<14'b10010101010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10010101010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10010101010111) && ({row_reg, col_reg}<14'b10010111000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10010111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010111000110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=14'b10010111000111) && ({row_reg, col_reg}<14'b10010111001001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10010111001001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10010111001010) && ({row_reg, col_reg}<14'b10010111001101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b10010111001101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b10010111001110) && ({row_reg, col_reg}<14'b10010111010001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10010111010001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=14'b10010111010010) && ({row_reg, col_reg}<14'b10010111010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10010111010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10010111010111) && ({row_reg, col_reg}<14'b10011001000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10011001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001000110) && ({row_reg, col_reg}<14'b10011001001001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10011001001001)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=14'b10011001001010) && ({row_reg, col_reg}<14'b10011001001101)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}==14'b10011001001101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10011001001110) && ({row_reg, col_reg}<14'b10011001010001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10011001010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001010010) && ({row_reg, col_reg}<14'b10011001010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==14'b10011001010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10011001010111) && ({row_reg, col_reg}<14'b10011011000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10011011000110) && ({row_reg, col_reg}<14'b10011011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011001010)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10011011001011) && ({row_reg, col_reg}<14'b10011011001110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10011011001110) && ({row_reg, col_reg}<14'b10011011010001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10011011010001)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}>=14'b10011011010010) && ({row_reg, col_reg}<14'b10011011010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10011011010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10011011010111) && ({row_reg, col_reg}<14'b10011101001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10011101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101001010)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10011101001011) && ({row_reg, col_reg}<14'b10011101001110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10011101001110) && ({row_reg, col_reg}<14'b10011101010001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10011101010001)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}>=14'b10011101010010) && ({row_reg, col_reg}<14'b10011101010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10011101010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10011101010111) && ({row_reg, col_reg}<14'b10011111000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10011111000110) && ({row_reg, col_reg}<14'b10011111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111001010)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10011111001011) && ({row_reg, col_reg}<14'b10011111001110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10011111001110) && ({row_reg, col_reg}<14'b10011111010001)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10011111010001)) color_data = 12'b011001000001;
		if(({row_reg, col_reg}>=14'b10011111010010) && ({row_reg, col_reg}<14'b10011111010110)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10011111010110) && ({row_reg, col_reg}<14'b10011111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10011111011010) && ({row_reg, col_reg}<14'b10100001000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10100001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100001000110) && ({row_reg, col_reg}<14'b10100001001001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==14'b10100001001001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10100001001010)) color_data = 12'b100110011000;
		if(({row_reg, col_reg}>=14'b10100001001011) && ({row_reg, col_reg}<14'b10100001010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10100001010010) && ({row_reg, col_reg}<14'b10100001010101)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}==14'b10100001010101)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10100001010110) && ({row_reg, col_reg}<14'b10100001011001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10100001011001)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}==14'b10100001011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10100001011011) && ({row_reg, col_reg}<14'b10100011000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10100011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011000110) && ({row_reg, col_reg}<14'b10100011001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10100011001010) && ({row_reg, col_reg}<14'b10100011010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10100011010010) && ({row_reg, col_reg}<14'b10100011010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10100011010110) && ({row_reg, col_reg}<14'b10100011011001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10100011011001)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==14'b10100011011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10100011011011) && ({row_reg, col_reg}<14'b10100101000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10100101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100101000110) && ({row_reg, col_reg}<14'b10100101001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10100101001010) && ({row_reg, col_reg}<14'b10100101010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10100101010010) && ({row_reg, col_reg}<14'b10100101010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10100101010110) && ({row_reg, col_reg}<14'b10100101011001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10100101011001)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==14'b10100101011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10100101011011) && ({row_reg, col_reg}<14'b10100111000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10100111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100111000110) && ({row_reg, col_reg}<14'b10100111001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10100111001010) && ({row_reg, col_reg}<14'b10100111010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==14'b10100111010010)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==14'b10100111010011)) color_data = 12'b011001010010;
		if(({row_reg, col_reg}>=14'b10100111010100) && ({row_reg, col_reg}<14'b10100111010110)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}>=14'b10100111010110) && ({row_reg, col_reg}<14'b10100111011001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10100111011001)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=14'b10100111011010) && ({row_reg, col_reg}<14'b10100111011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10100111011101) && ({row_reg, col_reg}<14'b10101001000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10101001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101001000110) && ({row_reg, col_reg}<14'b10101001001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10101001001010) && ({row_reg, col_reg}<14'b10101001010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10101001010010) && ({row_reg, col_reg}<14'b10101001010110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10101001010110) && ({row_reg, col_reg}<14'b10101001011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10101001011010) && ({row_reg, col_reg}<14'b10101001011101)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10101001011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10101001011110) && ({row_reg, col_reg}<14'b10101011000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10101011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101011000110) && ({row_reg, col_reg}<14'b10101011001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10101011001010) && ({row_reg, col_reg}<14'b10101011010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10101011010010) && ({row_reg, col_reg}<14'b10101011010110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10101011010110) && ({row_reg, col_reg}<14'b10101011011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10101011011010) && ({row_reg, col_reg}<14'b10101011011101)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10101011011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10101011011110) && ({row_reg, col_reg}<14'b10101101000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10101101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101101000110) && ({row_reg, col_reg}<14'b10101101001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10101101001010) && ({row_reg, col_reg}<14'b10101101010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10101101010010) && ({row_reg, col_reg}<14'b10101101010110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}>=14'b10101101010110) && ({row_reg, col_reg}<14'b10101101011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10101101011010) && ({row_reg, col_reg}<14'b10101101011101)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10101101011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10101101011110) && ({row_reg, col_reg}<14'b10101111000101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10101111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101111000110) && ({row_reg, col_reg}<14'b10101111001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10101111001010) && ({row_reg, col_reg}<14'b10101111010010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=14'b10101111010010) && ({row_reg, col_reg}<14'b10101111010110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10101111010110)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10101111010111)) color_data = 12'b100001100011;
		if(({row_reg, col_reg}==14'b10101111011000)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10101111011001)) color_data = 12'b100001100011;
		if(({row_reg, col_reg}>=14'b10101111011010) && ({row_reg, col_reg}<14'b10101111011101)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=14'b10101111011101) && ({row_reg, col_reg}<14'b10101111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10101111100001) && ({row_reg, col_reg}<14'b10110001000110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10110001000110) && ({row_reg, col_reg}<14'b10110001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110001001010) && ({row_reg, col_reg}<14'b10110001010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=14'b10110001010010) && ({row_reg, col_reg}<14'b10110001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110001010110) && ({row_reg, col_reg}<14'b10110001011001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10110001011001)) color_data = 12'b001100100000;
		if(({row_reg, col_reg}>=14'b10110001011010) && ({row_reg, col_reg}<14'b10110001011101)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10110001011101) && ({row_reg, col_reg}<14'b10110001100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10110001100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10110001100010) && ({row_reg, col_reg}<14'b10110011001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110011001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110011001010) && ({row_reg, col_reg}<14'b10110011010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==14'b10110011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110011010011) && ({row_reg, col_reg}<14'b10110011010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110011010110) && ({row_reg, col_reg}<14'b10110011011001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10110011011001)) color_data = 12'b001100100000;
		if(({row_reg, col_reg}>=14'b10110011011010) && ({row_reg, col_reg}<14'b10110011011101)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10110011011101) && ({row_reg, col_reg}<14'b10110011100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10110011100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10110011100010) && ({row_reg, col_reg}<14'b10110101001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110101001010) && ({row_reg, col_reg}<14'b10110101010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==14'b10110101010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110101010011) && ({row_reg, col_reg}<14'b10110101010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110101010110) && ({row_reg, col_reg}<14'b10110101011001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10110101011001)) color_data = 12'b001100100000;
		if(({row_reg, col_reg}>=14'b10110101011010) && ({row_reg, col_reg}<14'b10110101011101)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10110101011101) && ({row_reg, col_reg}<14'b10110101100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10110101100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10110101100010) && ({row_reg, col_reg}<14'b10110111001001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110111001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110111001010) && ({row_reg, col_reg}<14'b10110111010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==14'b10110111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110111010011) && ({row_reg, col_reg}<14'b10110111010101)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10110111010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110111010110) && ({row_reg, col_reg}<14'b10110111011001)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==14'b10110111011001)) color_data = 12'b001100100000;
		if(({row_reg, col_reg}==14'b10110111011010)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}==14'b10110111011011)) color_data = 12'b100001100011;
		if(({row_reg, col_reg}==14'b10110111011100)) color_data = 12'b100001100010;
		if(({row_reg, col_reg}>=14'b10110111011101) && ({row_reg, col_reg}<14'b10110111100001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==14'b10110111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10110111100010) && ({row_reg, col_reg}<14'b10111001001010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10111001001010) && ({row_reg, col_reg}<14'b10111001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111001010010) && ({row_reg, col_reg}<14'b10111001010110)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b10111001010110) && ({row_reg, col_reg}<14'b10111001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111001011010) && ({row_reg, col_reg}<14'b10111001011101)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}>=14'b10111001011101) && ({row_reg, col_reg}<14'b10111001100000)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10111001100000)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==14'b10111001100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10111001100010) && ({row_reg, col_reg}<14'b10111011011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10111011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111011011010) && ({row_reg, col_reg}<14'b10111011100000)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10111011100000)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==14'b10111011100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10111011100010) && ({row_reg, col_reg}<14'b10111101011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10111101011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111101011010) && ({row_reg, col_reg}<14'b10111101100000)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10111101100000)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==14'b10111101100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10111101100010) && ({row_reg, col_reg}<14'b10111111011001)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}==14'b10111111011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111111011010) && ({row_reg, col_reg}<14'b10111111100001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==14'b10111111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=14'b10111111100010) && ({row_reg, col_reg}<14'b11000001011010)) color_data = 12'b000011110000;
		if(({row_reg, col_reg}>=14'b11000001011010) && ({row_reg, col_reg}<14'b11000001100001)) color_data = 12'b000000000000;




		if(({row_reg, col_reg}>=14'b11000001100001) && ({row_reg, col_reg}<=14'b11000111100011)) color_data = 12'b000011110000;
	end
endmodule