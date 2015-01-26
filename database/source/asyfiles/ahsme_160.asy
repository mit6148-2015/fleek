settings.outformat="svg";
import olympiad;
unitsize(15);

size(120); defaultpen(linewidth(0.7));pair O=origin, A=(-5,0), B=(5,0), C=(0,5), D=(0,-5), F=5*dir(40), E=intersectionpoint(A--B, F--D);draw(Circle(O, 5));draw(A--B^^C--D--F);dot(O^^A^^B^^C^^D^^E^^F);markscalefactor=0.05;draw(rightanglemark(B, O, D));label("$A$", A, dir(O--A));label("$B$", B, dir(O--B));label("$C$", C, dir(O--C));label("$D$", D, dir(O--D));label("$F$", F, dir(O--F));label("$O$", O, NW);label("$E$", E, SE);