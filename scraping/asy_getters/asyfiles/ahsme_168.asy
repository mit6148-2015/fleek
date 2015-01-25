settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));dotfactor=4;pair A = origin;pair B = (2,0);pair C = (3,1);pair P = (1,2.25);pair D = intersectionpoint(P--B,C--A);dot(A);dot(B);dot(C);dot(P);dot(D);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$D$",D,NE + N);label("$P$",P,N);draw(A--B--P--cycle);draw(A--C--B--cycle);