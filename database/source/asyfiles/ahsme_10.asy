settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2cm);pair A = origin;pair M = (1,0);pair C = (2,0);pair P = (2,0.5);pair B = (2,1);pair Q = (1,0.5);draw(A--B--C--cycle);draw(M--Q--P);label("$A$",A,SW);label("$M$",M,S);label("$C$",C,SE);label("$P$",P,E);label("$B$",B,NE);label("$N$",Q,NW);