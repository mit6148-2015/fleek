settings.outformat="svg";
import olympiad;

pair A,B,C,D,EE,F;A = (0,20); B = (16,20); C = (32,20); D = (32,0); EE = (0,0); F = (0,10);draw(A--C--D--EE--cycle);draw(B--D--F);dot(A); dot(B); dot(C); dot(D); dot(EE); dot(F);label("$A$",A,NW);label("$B$",B,N);label("$C$",C,NE);label("$D$",D,SE);label("$E$",EE,SW);label("$F$",F,W);