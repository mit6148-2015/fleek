settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));pair A = (0,11);pair B = (2,0);pair D = (4,0);pair E = (7,0);pair C = (13,0);label("$A$",A,N);label("$B$",B,SW);label("$C$",C,SE);label("$D$",D,S);label("$E$",E,S);label("$2$",midpoint(B--D),N);label("$3$",midpoint(D--E),NW);label("$6$",midpoint(E--C),NW);draw(A--B--C--cycle);draw(A--D);draw(A--E);