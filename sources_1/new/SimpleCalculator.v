`timescale 1ns / 1ps

module SimpleCalculator(
    input [3:0] i_A,
    input [3:0] i_B,
    input [1:0] i_Sel,
    output [3:0] o_Result
    );

    reg [3:0] r_Result;
    assign o_Result = r_Result;

    always @(*)
    begin
        case (i_Sel)
            2'b00 : r_Result = i_A + i_B;
            2'b01 : r_Result = i_A - i_B;
            2'b10 : r_Result = i_A * i_B;
            2'b11 : 
            begin
                if(i_B == 0) r_Result = 0;
                else r_Result = i_A / i_B;
            end
        endcase
    end
endmodule
