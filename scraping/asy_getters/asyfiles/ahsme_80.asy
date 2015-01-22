settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair B=origin, C=(15,3), D=(5,1), A=7*dir(72)*dir(B--C), E=midpoint(A--C), F=intersectionpoint(A--D, B--E);draw(E--B--A--C--B^^A--D);label("$A$", A, dir(D--A));label("$B$", B, dir(E--B));label("$C$", C, dir(0));label("$D$", D, SE);label("$E$", E, N);label("$F$", F, dir(80));