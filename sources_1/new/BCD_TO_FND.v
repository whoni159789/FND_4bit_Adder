`timescale 1ns / 1ps

module BCD_TO_FND(
    input i_EN,
    input [1:0] i_DigitSelect,
    input [3:0] i_Value,
    output [3:0] o_Digit,
    output [7:0] o_FND_Font
    );

    FND_Select_Digit_Decoder Digit(
        .i_EN(i_EN),
        .i_DigitSelect(i_DigitSelect),
        .o_Digit(o_Digit)
    );

    BCD_TO_FND_Decoder Font(
        .i_EN(i_EN),
        .i_Value(i_Value),
        .o_Font(o_FND_Font)
    );

endmodule
