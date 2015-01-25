settings.outformat="svg";
import olympiad;
unitsize(15);

pair A=(0,1), B=(1,1), C=(1,0), D=origin;draw(A--B--C--D--A--(1,1/6));draw(C--(0,5/6)^^B--(1/6,0)^^D--(5/6,1));pair point=( 0.5 , 0.5 );label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$1/n$", (11/12,1), N, fontsize(9));