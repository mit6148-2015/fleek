settings.outformat="svg";
import olympiad;

size(300);defaultpen(linewidth(0.8));pair A=(-1,0),C=(1,0),B=dir(40),D=origin;draw(A--B--C--A);draw(D--B);dot("$A$", A, SW);dot("$B$", B, NE);dot("$C$", C, SE);dot("$D$", D, S);label("$70^\circ$",C,2*dir(180-35));