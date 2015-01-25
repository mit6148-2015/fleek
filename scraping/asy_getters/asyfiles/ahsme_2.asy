settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(27);defaultpen(linewidth(.8pt)+fontsize(10pt));pair A,B,C,D,E,F,X,Y,Z;A=(3,3); B=(0,0); C=(6,0); D=(4,0); E=(4,2); F=(1,1);draw(A--B--C--cycle);draw(A--D); draw(B--E); draw(C--F);X=intersectionpoint(A--D,C--F); Y=intersectionpoint(B--E,A--D); Z=intersectionpoint(B--E,C--F);label("$A$",A,N); label("$B$",B,SW); label("$C$",C,SE);label("$D$",D,S); label("$E$",E,NE); label("$F$",F,NW);label("$N_1$",X,NE); label("$N_2$",Y,WNW); label("$N_3$",Z,S);