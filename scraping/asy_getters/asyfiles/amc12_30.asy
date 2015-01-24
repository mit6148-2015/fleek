settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.8)+fontsize(10));size(200);unitsize(5mm) ;pair A=(0,0), B=(4,0), C=(4,6), D=(0,8), H=intersectionpoint(C--A, D--B);draw(A--B--C--cycle) ;draw(A--B--D--cycle) ;label("E",(0,8), N) ;label("8",(0,4),W) ;label("A",A,S) ;label("B",B,SE) ;label("C",C,NE) ;label("6",(4,3),E) ;label("4",(2,0),S) ;label("D",H,2*dir(85)) ;