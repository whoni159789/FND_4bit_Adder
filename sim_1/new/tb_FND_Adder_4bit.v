`timescale 1ns / 1ps

module tb_FND_Adder_4bit();

    reg [3:0] i_A;
    reg [3:0] i_B;
    reg i_Cin;
    reg i_EN;
    reg [1:0] i_DS;
    wire [3:0] o_FND_Digit;
    wire [7:0] o_FND_Font;

    FND_Adder_4bit dut(
        .i_A(i_A),
        .i_B(i_B),
        .i_Cin(i_Cin),
        .i_EN(i_EN),
        .i_DS(i_DS),
        .o_FND_Digit(o_FND_Digit),
        .o_FND_Font(o_FND_Font)
    );

    initial 
    begin
        #00 i_A = 4'd0; i_B = 4'd1; i_Cin = 1'b0; i_EN = 1'b1; i_DS = 2'b00;
        #10 i_A = 4'd1; i_B = 4'd1; i_Cin = 1'b0; i_EN = 1'b0; i_DS = 2'b00;
        #10 i_A = 4'd2; i_B = 4'd1; i_Cin = 1'b0; i_EN = 1'b0; i_DS = 2'b01;
        #10 i_A = 4'd3; i_B = 4'd1; i_Cin = 1'b0; i_EN = 1'b0; i_DS = 2'b10;
        #10 i_A = 4'd4; i_B = 4'd1; i_Cin = 1'b0; i_EN = 1'b0; i_DS = 2'b11;
        #10 i_A = 4'd4; i_B = 4'd8; i_Cin = 1'b0; i_EN = 1'b0; i_DS = 2'b11;
        #10 $finish;
    end

endmodule
