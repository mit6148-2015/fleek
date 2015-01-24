settings.outformat="svg";
import olympiad;

defaultpen(linewidth(.8pt));unitsize(2cm);pair O = origin;pair B = (1,0);pair C = dir(120);pair A = dir(240);pair M = dir(90 - 18);draw(Circle(O,1));draw(A--C--M--B--cycle);draw(B--C);draw(A--M);dot(O);label("$A$",A,SW);label("$B$",B,E);label("$M$",M,NE);label("$C$",C,NW);label("$O$",O,SE);