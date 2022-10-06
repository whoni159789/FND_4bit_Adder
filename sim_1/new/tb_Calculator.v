`timescale 1ns / 1ps

module tb_Calculator();

    reg [3:0] i_A;
    reg [3:0] i_B;
    reg [1:0] i_Sel;
    reg [1:0] i_DigitSelect;
    reg i_EN;
    wire [3:0] o_FND_Digit;
    wire [7:0] o_FND_Font;

    Calculator dut(
        .i_A(i_A),
        .i_B(i_B),
        .i_Sel(i_Sel),
        .i_DigitSelect(i_DigitSelect),
        .i_EN(i_EN),
        .o_FND_Digit(o_FND_Digit),
        .o_FND_Font(o_FND_Font)
    );

    initial
    begin
        #00 i_A = 4; i_B = 2; i_Sel = 2'b00; i_DigitSelect = 2'b00; i_EN = 1'b0;
        #10 i_A = 4; i_B = 2; i_Sel = 2'b01; i_DigitSelect = 2'b00; i_EN = 1'b0;
        #10 i_A = 4; i_B = 2; i_Sel = 2'b10; i_DigitSelect = 2'b00; i_EN = 1'b0;
        #10 i_A = 4; i_B = 2; i_Sel = 2'b11; i_DigitSelect = 2'b00; i_EN = 1'b0;
        #10 $finish;
    end
endmodule
