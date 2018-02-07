module one(
		output reg [2:0] column,
		input clk,
		output reg[6:0] display,
		input [3:0] row,
		output common
    );
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 reg [1:0] state = s1;
	 assign common = 0;
	 reg sclk;
	 always@(posedge sclk)
		case(state)
		s1 : begin
			column <= 4'b001; //row
			case(row)
				3'b0010 : display <= 7'b0110000 ;
				3'b0100 : display <= 7'b0110011 ;
				3'b1000 : display <= 7'b1110000 ;
				3'b0001 : display <= 7'b1001111 ;
				
			endcase
			state <= s2;
		end
		s2 : begin
			column <= 4'b010; //row
			case(row)
				3'b0010 : display <= 7'b1101101 ;
				3'b0100 : display <= 7'b1011011 ;
				3'b1000 : display <= 7'b1111111 ;
				3'b0001 : display <= 7'b1111110 ;
			endcase
			state <= s3;
		end
		s3 : begin
			column <= 4'b100; //row
			case(row)
				3'b0010 : display <= 7'b1111001 ;
				3'b0100 : display <= 7'b1011111 ;
				3'b1000 : display <= 7'b1111011 ;
				3'b0001 : display <= 7'b1000111 ;

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
 