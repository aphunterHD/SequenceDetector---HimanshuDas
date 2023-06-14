`timescale 1ns / 1ps

module SeqDetection(clk,P1,Reset,ps,O8,O7,O6,O5,O4,O3,O2,O1,A,F,B);

output reg O8,O7,O6,O5,O4,O3,O2,O1;
output reg [3:0] ps;
output reg [3:0] A;
output reg F;
input clk,P1,Reset;
input [3:0] B;


reg [3:0] H;
reg G1,G2,G3,G4,G5,G6,G7,G8,Y;
reg [3:0] ns;

parameter s0=4'b0000,s1=4'b0001,s2=4'b0010,s3=4'b0011,s4=4'b0100,s5=4'b0101,s6=4'b0110,s7=4'b0111,s8=4'b1000;

initial A=0;
initial ps=s0;
initial O1=0;
initial O2=0;
initial O3=0;
initial O4=0;
initial O5=0;
initial O6=0;
initial O7=0;
initial O8=0;

always@(posedge clk)

begin
ps=ns;
end

always@(*)
begin
G1=0;
G2=0;
G3=0;
G4=0;
G5=0;
G6=0;
G7=0;
G8=0;
F=0;

case(ps)
s0:
begin
ns=s1;
G1=1;
end
s1:
begin
ns=s2;
G2=1;
end
s2:
begin
ns=s3;
G3=1;
end
s3:
begin
ns=s4;
G4=1;
end
s4:
begin
ns=s5;
G5=1;
end
s5:
begin
ns=s6;
G6=1;
end
s6:
begin
ns=s7;
G7=1;
end
s7:
begin
ns=s8;
G8=1;
end
s8:
begin
ns=s0;
F=1;
end

endcase
end

always@(posedge clk)

begin

if(F==1)
begin
A=0;
O1=0;
O2=0;
O3=0;
O4=0;
O5=0;
O6=0;
O7=0;
O8=0;
end

if(G1==1)

begin

if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O8=1;
end

A=A<<1;
end

if(G2==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O7=1;
end

A=A<<1;
end

if(G3==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O6=1;
end

A=A<<1;
end

if(G4==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O5=1;
end

A=A<<1;
end

if(G5==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O4=1;
end

A=A<<1;
end

if(G6==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O3=1;
end

A=A<<1;
end

if(G7==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O2=1;
end

A=A<<1;
end

if(G8==1)

begin
if(P1==1)
begin
Y=1;
H={1'b0,1'b0,1'b0,Y};
A=A|H;
end

if(A==B)
begin
O1=1;
end

A=A<<1;
end

end

endmodule
