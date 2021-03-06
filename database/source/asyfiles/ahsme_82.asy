settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));pair B = origin;pair A = dir(60);pair C = dir(0);pair circ = circumcenter(A,B,C);pair P = intersectionpoint(circ--(circ + (-1,0)),A--B);pair Q = intersectionpoint(circ--(circ + (1,0)),A--C);label("$A$",A,N);label("$B$",B,SW);label("$C$",C,SE);label("$P$",P,NW);label("$Q$",Q,NE);draw(A--B--C--cycle);draw(circumcircle(A,B,C));draw(P--Q);draw(Circle((0.5,0.09),0.385));