settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(12);pair A,B,C,D,P,Q,W,X,Y,Z;A = (0,0); B = (12,0); C = (20,6); D = (8,6);W = (18,0); X = (30,0); Y = (38,6); Z = (26,6);draw(A--B--C--D--cycle);draw(W--X--Y--Z--cycle);P = (8,0); Q = (758/25,6/25);dot(A); dot(B); dot(C); dot(D); dot(W); dot(X); dot(Y); dot(Z); dot(P); dot(Q);draw(A--B--C--D--cycle);draw(W--X--Y--Z--cycle);draw(D--P);draw(Z--Q);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,NE);label("$D$",D,NW);label("$E$",P,S);label("$A$",W,SW);label("$B$",X,S);label("$C$",Y,NE);label("$D$",Z,NW);label("$F$",Q,E);