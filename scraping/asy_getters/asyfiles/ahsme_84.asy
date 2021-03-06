settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));pair C = origin;pair A = 2.5*dir(75);pair B = A + 2.5*dir(-75);path circ =circumcircle(A,B,C);pair D = waypoint(circ,(7/12));pair G = waypoint(circ,(1/6));pair E = intersectionpoint(D--G,A--C);pair F = intersectionpoint(A--B,D--G);label("$A$",A,N);label("$B$",B,SE);label("$C$",C,SW);label("$D$",D,SW);label("$G$",G,NE);label("$E$",E,NW);label("$F$",F,W);label("$30^\circ$",A,12S+E,fontsize(6pt));draw(A--B--C--cycle);draw(circ);draw(Arc(A,0.25,-75,-105));draw(D--G);