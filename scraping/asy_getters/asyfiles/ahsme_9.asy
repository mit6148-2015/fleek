settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2cm);pair O = origin;pair A = (-1,0);pair B = (1,0);pair C = (0,1);pair D = (0,-1);pair M = dir(45);pair P = intersectionpoint(O--C,A--M);draw(Circle(O,1));draw(A--B);draw(C--D);draw(A--M);label("$A$",A,W);label("$B$",B,E);label("$C$",C,N);label("$D$",D,S);label("$M$",M,NE);label("$O$",O,NE);label("$P$",P,NW);