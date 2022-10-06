`timescale 1ns / 1ps

module FND_Select_Digit_Decoder(
    input i_EN,
    input [1:0] i_DigitSelect,
    output [3:0] o_Digit
    );

    reg[3:0] r_Digit;
    
    assign o_Digit = r_Digit;

    always @(i_DigitSelect, i_EN)
    begin
        if(i_EN) 
        begin
            r_Digit = 4'b1111;
        end

        else 
        begin
            r_Digit = 4'b1111;
            case(i_DigitSelect)
                2'b00 : r_Digit = 4'b1110;
                2'b01 : r_Digit = 4'b1101;
                2'b10 : r_Digit = 4'b1011;
                2'b11 : r_Digit = 4'b0111;
            endcase
        end
    end
    
endmodule
