settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(6mm);defaultpen(linewidth(.8pt)+fontsize(8pt));pair A=(0,0), B=(5,0), C=(5,3), D=(0,3), F=(1,3), G=(3,3);pair E=extension(A,F,B,G);draw(A--B--C--D--A--E--B);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,NE);label("$D$",D,NW);label("$E$",E,N);label("$F$",F,SE);label("$G$",G,SW);label("$B$",B,SE);label("1",midpoint(D--F),N);label("2",midpoint(G--C),N);label("3",midpoint(B--C),E);label("3",midpoint(A--D),W);label("5",midpoint(A--B),S);