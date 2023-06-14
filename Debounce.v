`timescale 1ns / 1ps

module Debounce(
    input clk190,
    input din,
    input Reset,
    output dout
    );
    
    reg A,B,C;
    
    always@(posedge clk190,posedge Reset)
    begin
    if(Reset==1)
    begin
    A<=0;
    B<=0;
    C<=0;
    end
    else
    begin
    A<=din;
    B<=A;
    C<=B;
    end
    end
    
    assign dout=(A&B&~C);
endmodule

