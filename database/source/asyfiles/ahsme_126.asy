settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));real x=180/7;pair D=origin, B=dir(3x), C=dir(4x), A=intersectionpoint(C--C+dir(2x), B--B+dir(5x)), O=circumcenter(A,B,C);markscalefactor=0.015;draw(B--C--D--B--A--C^^Circle(O, abs(O-C))^^anglemark(C,A,B));dot(A^^B^^C^^D);pair point=O;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$x$", A+0.1*dir(270), S);