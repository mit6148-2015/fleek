settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2.5cm);pair A = origin;pair B = (2,0);pair C = (0.5,0.75);pair D = midpoint(C--B);draw(A--B--C--cycle);draw(A--D);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$D$",D,NE);