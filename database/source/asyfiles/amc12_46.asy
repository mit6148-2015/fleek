settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(6mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=3;pair B=(0,0), C=(3,0), D=(3,3), A=(0,3);pair Ep=(3+5*sqrt(2)/6,3+5*sqrt(2)/6);pair F=intersectionpoints(Circle(A,sqrt(9+5*sqrt(2))),Circle(Ep,5/3))[0];pair[] dots={A,B,C,D,Ep,F};draw(A--F);draw(Circle(Ep,5/3));draw(A--B--C--D--cycle);dot(dots);label("$A$",A,NW);label("$B$",B,SW);label("$C$",C,SE);label("$D$",D,SW);label("$E$",Ep,E);label("$F$",F,NW);