settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.8));pair A=(0,5),B=origin,C=(6,0),D=(6,5),E=(18,0);draw(A--B--E--D--cycle^^C--D);draw(rightanglemark(D,C,E,30));label("$A$",A,NW);label("$B$",B,SW);label("$C$",C,S);label("$D$",D,N);label("$E$",E,S);label("$5$",A/2,W);label("$6$",(A+D)/2,N);