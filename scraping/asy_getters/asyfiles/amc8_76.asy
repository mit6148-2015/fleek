settings.outformat="svg";
import olympiad;

pair A,B,C,D,P,Q,R;A = (0,4); B = (8,4); C = (8,0); D = (0,0);P = (2,2); Q = (4,2); R = (6,2);dot(A); dot(B); dot(C); dot(D); dot(P); dot(Q); dot(R);draw(A--B--C--D--cycle);draw(circle(P,2));draw(circle(Q,2));draw(circle(R,2));label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SE);label("$D$",D,SW);label("$P$",P,W);label("$Q$",Q,W);label("$R$",R,W);