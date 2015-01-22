settings.outformat="svg";
import olympiad;

unitsize(4cm);defaultpen(linewidth(.8pt)+fontsize(10pt));pair D=(0,0), C=(1,0), B=(1,1), A=(0,1);pair F=intersectionpoints(Circle(D,2/sqrt(5)),Circle(A,1))[0];pair G=foot(A,D,F), H=foot(B,A,G), E=foot(C,B,H);draw(A--B--C--D--cycle);draw(D--F);draw(C--E);draw(B--H);draw(A--G);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SE);label("$D$",D,SW);label("$E$",E,NNW);label("$F$",F,ENE);label("$G$",G,SSE);label("$H$",H,WSW);