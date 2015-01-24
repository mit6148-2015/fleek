settings.outformat="svg";
import olympiad;

size(200);defaultpen(linewidth(0.7)+fontsize(10));pair B=origin, C=(24,0), A=intersectionpoints(Circle(B,12), Circle(C,18))[0], O=incenter(A,B,C), M=intersectionpoint(A--B, O--O+40*dir(180)), N=intersectionpoint(A--C, O--O+40*dir(0));draw(B--M--O--B--C--O--N--C^^N--A--M);label("$A$", A, dir(90));label("$B$", B, dir(O--B));label("$C$", C, dir(O--C));label("$M$", M, dir(90)*dir(B--A));label("$N$", N, dir(90)*dir(A--C));label("$O$", O, dir(90));