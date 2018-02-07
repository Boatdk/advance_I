module keypad(
		input [2:0] column,
		input clk,
		output reg[6:0] display,
		output reg[3:0] row,
		output common
    );
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 parameter s4 = 2'b11;
	 reg [1:0] state = s1;
	 assign common = 0;
	 reg sclk;
	 always@(posedge sclk)
		case(state)
		s1 : begin
			row <= 4'b1101; //row (123)
			case(column)
				3'b110 : display <= 7'b0110000 ; //C1 =1
				3'b101 : display <= 7'b1101101 ; //C2 =2
				3'b011 : display <= 7'b1111001 ; //C3 =3
			endcase
			state <= s2;
		end
		s2 : begin
			row <= 4'b1011; //row (456)
			case(column)
				3'b110 : display <= 7'b0110011 ; //C1 =4
				3'b101 : display <= 7'b1011011 ; //C2 =5
				3'b011 : display <= 7'b1011111 ; //C3 =6
			endcase
			state <= s3;
		end
		s3 : begin
			row <= 4'b0111; //row (789)
			case(column)
				3'b110 : display <= 7'b1110000 ; //C1 =7
				3'b101 : display <= 7'b1111111 ; //C2 =8
				3'b011 : display <= 7'b1111011; //C3 =9
			endcase
			state <= s4;
		end
		s4 : begin
			row <= 4'b1110; //row (*0#)
			case(column)
				3'b110 : display <= 7'b1001111 ; //C1 =*
				3'b101 : display <= 7'b1111110 ; //C2 =0
				3'b011 : display <= 7'b1000111 ; //C3 =#
			endcase
			state <= s1;
		end
	endcase

reg [31:0] cnt_div;
always@(posedge clk)
	begin
		if(cnt_div == 50000)
			begin sclk <= 1; cnt_div <= 0; end
			else begin sclk <= 0; cnt_div <= cnt_div + 1; end
			end
endmodule
 