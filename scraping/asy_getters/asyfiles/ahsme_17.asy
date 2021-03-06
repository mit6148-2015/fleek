settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(3cm);pair D = origin;pair C = (2,0);pair B = (2,1);pair A = (0,1);pair P = waypoint(B--A,0.2);pair S = foot(P,D,B);pair R = foot(P,A,C);pair F = foot(A,D,B);pair Q = foot(P,A,F);pair T = intersectionpoint(P--Q,A--C);pair X = intersectionpoint(A--C,B--D);draw(A--B--C--D--cycle);draw(A--C);draw(B--D);draw(P--S);draw(A--F);draw(P--R);draw(P--Q);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SE);label("$D$",D,SW);label("$P$",P,N);label("$S$",S,SE);label("$T$",T,N);label("$E$",X,SW+SE);label("$R$",R,SW);label("$F$",F,SE);label("$Q$",Q,SW);