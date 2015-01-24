settings.outformat="svg";
import olympiad;

pair A,B,C,D;A = (0,0); B = (9,10); C = (10,0); D = (6.66,3);dot(A); dot(B); dot(C); dot(D);draw(A--B--C--cycle);draw(A--D--C);label("$A$",A,SW);label("$B$",B,N);label("$C$",C,SE);label("$D$",D,N);label("$50^\circ $",(9.4,8.8),SW);