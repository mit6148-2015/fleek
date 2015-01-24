settings.outformat="svg";
import olympiad;

unitsize(20);defaultpen(linewidth(.8pt)+fontsize(8pt));pair A=(3,3),B=(0,0),C=(6,0),D=(2,0),E=(5,1);draw(A--B--C--cycle);draw(A--D--E);label("$A$",A,N); label("$B$",B,W); label("$C$",C,E);label("$D$",D,S); label("$E$",E,NE);