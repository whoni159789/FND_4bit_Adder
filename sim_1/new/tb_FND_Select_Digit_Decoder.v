`timescale 1ns / 1ps

module tb_FND_Select_Digit_Decoder();

    reg i_EN;
    reg [1:0] i_DigitSelect;
    wire [3:0] o_Digit;

    reg [3:0] i_Value;
    wire [7:0] o_Font;

    FND_Select_Digit_Decoder dut1(
        .i_EN(i_EN),
        .i_DigitSelect(i_DigitSelect),
        .o_Digit(o_Digit)
    );

    BCD_TO_FND_Decoder dut2(
        .i_EN(i_EN),
        .i_Value(i_Value),
        .o_Font(o_Font)
    );

    initial 
    begin
        #00 i_EN = 1'b1;

        #10 i_EN = 1'b0; i_DigitSelect = 2'b00; i_Value = 4'd0;
        #10 i_EN = 1'b0; i_DigitSelect = 2'b01; i_Value = 4'd1;
        #10 i_EN = 1'b0; i_DigitSelect = 2'b10; i_Value = 4'd2;
        #10 i_EN = 1'b0; i_DigitSelect = 2'b11; i_Value = 4'd3;
        #10 $finish;
    end
endmodule
