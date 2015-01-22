settings.outformat="svg";
import olympiad;

pair A,B,C,D;A = origin; B = (4,0); C = (4,4); D = (0,4);draw(A--B--C--D--cycle);draw(arc((2,1),(1,1),(3,1),CCW)--arc((3,2),(3,1),(3,3),CCW)--arc((2,3),(3,3),(1,3),CCW)--arc((1,2),(1,3),(1,1),CCW));draw((1,1)--(3,1)--(3,3)--(1,3)--cycle);dot(A); dot(B); dot(C); dot(D); dot((1,1)); dot((3,1)); dot((1,3)); dot((3,3));label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,NE);label("$D$",D,NW);