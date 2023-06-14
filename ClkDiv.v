`timescale 1ns / 1ps

module ClkDiv(
    input mclk,
    input Reset,
    output clk190
    );
    
    reg [18:0] clk_div;
    
    always@(posedge mclk,posedge Reset)
    begin
    if(Reset==1)
    clk_div=0;
    else
    clk_div=clk_div+1;
    end
    
    assign clk190=clk_div[18];
endmodule