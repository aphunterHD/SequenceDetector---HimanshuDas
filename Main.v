`timescale 1ns / 1ps

module Main(mclk,P0,P1,Reset,B,O8,O7,O6,O5,O4,O3,O2,O1);

input mclk,P0,P1,Reset;
input [3:0] B;
    wire clk190;
    wire clk,P,F;
    wire [3:0] ps,A;
output O8,O7,O6,O5,O4,O3,O2,O1;
    assign P=P0|P1|Reset;
    ClkDiv a1 (mclk,Reset,clk190);
    Debounce a2 (clk190,P,Reset,clk);
    SeqDetection a3 (clk,P1,Reset,ps,O8,O7,O6,O5,O4,O3,O2,O1,A,F,B);
    vio_0 a4 (mclk,ps,O8,O7,O6,O5,O4,O3,O2,O1,A,F,B);
endmodule
