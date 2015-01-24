settings.outformat="svg";
import olympiad;

defaultpen(linewidth(.8pt));dotfactor=3;pair A = origin;pair B = (1,0);pair C = (0,sqrt(3));pair O = (2.33,2.33);dot(A);dot(B);dot(C);dot(O);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,W);label("$O$",O,NW);label("$1$",midpoint(A--B),S);label("$60^\circ$",B,2W + N);draw((3,0)--A--(0,3));draw(B--C);draw(Arc(O,2.33,163,288.5));