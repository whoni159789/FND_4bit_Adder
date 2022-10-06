`timescale 1ns / 1ps

module Calculator(
    input [3:0] i_A,
    input [3:0] i_B,
    input [1:0] i_Sel,
    input [1:0] i_DigitSelect,
    input i_EN,
    output [3:0] o_FND_Digit,
    output [7:0] o_FND_Font
    );

    wire [3:0] w_Result;

    SimpleCalculator Sim_Cal(
        .i_A(i_A),
        .i_B(i_B),
        .i_Sel(i_Sel),
        .o_Result(w_Result)
    );

    BCD_TO_FND display_fnd(
        .i_EN(i_EN),
        .i_DigitSelect(i_DigitSelect),
        .i_Value(w_Result),
        .o_Digit(o_FND_Digit),
        .o_FND_Font(o_FND_Font)
    );

endmodule
