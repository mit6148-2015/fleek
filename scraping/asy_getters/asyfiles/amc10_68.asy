settings.outformat="svg";
import olympiad;

unitsize(4mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;pair C=(0,0), B=(17,0);pair D=intersectionpoints(Circle(C,5),Circle(B,13))[0];pair A=intersectionpoints(Circle(D,9),Circle(B,5))[0];pair[] dotted={A,B,C,D};draw(D--A--B--C--D--B);dot(dotted);label("$D$",D,NW);label("$C$",C,W);label("$B$",B,E);label("$A$",A,NE);