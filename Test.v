`timescale 1ns / 1ps

module Test();
reg P0,P1,Reset;
reg [3:0] B;
wire O8,O7,O6,O5,O4,O3,O2,O1;
SeqDetection dut (P0,P1,Reset,O8,O7,O6,O5,O4,O3,O2,O1,B);

initial
begin
Reset=1'b0;
B=4'b0110;
P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 Reset=1'b1;
#1 Reset=1'b0;
#10 B=4'b0011;
P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 Reset=1'b1;
#1 Reset=1'b0;
#10 B=4'b1011;
P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b0;P1=1'b1;
#1 P0=1'b0;P1=1'b0;

#5 P0=1'b1;P1=1'b0;
#1 P0=1'b0;P1=1'b0;
#5 $finish;
end

endmodule
