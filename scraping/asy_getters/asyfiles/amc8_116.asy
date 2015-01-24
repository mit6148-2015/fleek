settings.outformat="svg";
import olympiad;

pair A,B,C,D,EE,F,G;A = (4,0); B = (0,0); C = (2,2*sqrt(3)); D = (3,sqrt(3));EE = (5,sqrt(3)); F = (5.5,sqrt(3)/2); G = (4.5,sqrt(3)/2);draw(A--B--C--cycle);draw(D--EE--A);draw(EE--F--G);label("$A$",A,S);label("$B$",B,SW);label("$C$",C,N);label("$D$",D,NE);label("$E$",EE,NE);label("$F$",F,SE);label("$G$",G,SE);