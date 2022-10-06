`timescale 1ns / 1ps

module FND_Adder_4bit(
    input [3:0] i_A,
    input [3:0] i_B,
    input i_Cin,
    input i_EN,
    input [1:0] i_DS,
    output [3:0] o_FND_Digit,
    output [7:0] o_FND_Font
    );

    wire [3:0] w_Sum;
    wire w_Cout;

    Four_Bit_FullAdder Adder(
        .i_A(i_A),
        .i_B(i_B),
        .i_Cin(i_Cin),
        .o_Sum(w_Sum), 
        .o_Cout(w_Cout)
    );

    BCD_TO_FND fnd(
        .i_EN(i_EN),
        .i_DigitSelect(i_DS),
        .i_Value(w_Sum),
        .o_Digit(o_FND_Digit),
        .o_FND_Font(o_FND_Font)
    );

endmodule
