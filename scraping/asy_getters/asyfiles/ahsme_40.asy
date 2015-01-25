settings.outformat="svg";
import olympiad;
unitsize(15);

size(3inch);draw(Circle((1,0),1));pair A, B, C, D, P, Q;P = (-2,0);B=(sqrt(2)/2+1,sqrt(2)/2);D=(sqrt(2)/2+1,-sqrt(2)/2);Q = (2,0);A = intersectionpoints(Circle((1,0),1),B--P)[1];C = intersectionpoints(Circle((1,0),1),D--P)[0];draw(B--P--D);draw(A--Q--C);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SW);label("$D$",D,SE);label("$P$",P,W);label("$Q$",Q,E);//Credit to chezbgone2 for the diagram