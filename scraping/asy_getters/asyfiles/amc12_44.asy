settings.outformat="svg";
import olympiad;

unitsize(5mm);defaultpen(fontsize(10pt)+linewidth(.8pt));pair B=(0,0), C=(5,0);pair A=intersectionpoints(Circle(B,3),Circle(C,4))[0];draw(A--B--C--cycle);draw(Circle(C,3));draw(Circle(A,1));draw(Circle(B,2));label("$A$",A,N);label("$B$",B,W);label("$C$",C,E);label("3",midpoint(B--A),NW);label("4",midpoint(A--C),NE);label("5",midpoint(B--C),S);