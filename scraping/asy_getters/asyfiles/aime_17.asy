settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);pair A=origin, B=(7,0), C=(3.2,15), D=midpoint(B--C), F=(3,0), P=intersectionpoint(C--F, A--D), ex=B+40*dir(B--P), E=intersectionpoint(B--ex, A--C);draw(A--B--C--A--D^^C--F^^B--E);pair point=P;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));label("$P$", P, dir(0));