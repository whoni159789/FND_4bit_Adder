`timescale 1ns / 1ps

module BCD_TO_FND_Decoder(
    input i_EN,
    input [3:0] i_Value,
    output [7:0] o_Font
    );

    reg [7:0] r_Font;

    assign o_Font = r_Font;

    always @(i_EN, i_Value)
    begin
        if(i_EN)
        begin
            r_Font = 8'hff;
        end
        else
        begin
            // r_Font = 8'hff;
            case (i_Value)
                4'h0 : r_Font = 8'hc0;
                4'h1 : r_Font = 8'hf9;
                4'h2 : r_Font = 8'ha4;
                4'h3 : r_Font = 8'hb0;
                4'h4 : r_Font = 8'h99;
                4'h5 : r_Font = 8'h92;
                4'h6 : r_Font = 8'h82;
                4'h7 : r_Font = 8'hf8;
                4'h8 : r_Font = 8'h80;
                4'h9 : r_Font = 8'h98;
                4'ha : r_Font = 8'h7f;
                default : r_Font = 8'hff;
            endcase
        end
    end

endmodule
