settings.outformat="svg";
import olympiad;
unitsize(15);

pair A,B,C,D;A = (5,5); B = (5,0); C = (0,0); D = (0,5);fill((0,0)--(0,4)--(1,4)--(1,1)--(4,1)--(4,0)--cycle,gray);draw(A--B--C--D--cycle);draw((4,0)--(4,4)--(0,4));draw((1,5)--(1,1)--(5,1));label("$A$",A,NE);label("$B$",B,SE);label("$C$",C,SW);label("$D$",D,NW);label("$1$",(1,4.5),E);label("$1$",(0.5,5),N);label("$3$",(1,2.5),E);label("$3$",(2.5,1),N);label("$1$",(4,0.5),E);label("$1$",(4.5,1),N);