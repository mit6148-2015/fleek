settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);defaultpen(linewidth(0.7)+fontsize(10));pair B=origin, A=14*dir(36), C=intersectionpoint(B--(9001,0), Circle(A,19)), M=midpoint(B--C), b=A+14*dir(A--C), N=foot(A, B, b);draw(N--B--A--N--M--C--A^^B--M);markscalefactor=0.1;draw(rightanglemark(B,N,A));pair point=N;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$M$", M, dir(point--M));label("$N$", N, dir(30));label(rotate(A--C)*"$19$", A--C, dir(A--C)*dir(90));label(rotate(A--B)*"$14$", A--B, dir(A--B)*dir(90));