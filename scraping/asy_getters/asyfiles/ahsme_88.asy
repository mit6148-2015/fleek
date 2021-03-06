settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);defaultpen(linewidth(0.7)+fontsize(10));real r=54.72;pair B=origin, C=dir(r), A=intersectionpoint(B--(9,0), C--C+4*dir(r-90)), M=midpoint(B--A), N=midpoint(A--C), P=intersectionpoint(B--N, C--M);draw(M--C--A--B--C^^B--N);pair point=P;markscalefactor=0.005;draw(rightanglemark(C,P,B));label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$M$", M, S);label("$N$", N, dir(C--A)*dir(90));label("$s$", B--C, NW);