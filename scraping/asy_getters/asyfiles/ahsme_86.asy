settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(fontsize(10));pair A=origin, O=(1,0), B=(2,0), N=(3,0), C=(4,0), P=(5,0), D=(6,0), G=tangent(A,P,1,2), E=intersectionpoints(A--G, Circle(N,1))[0], F=intersectionpoints(A--G, Circle(N,1))[1];draw(Circle(O,1)^^Circle(N,1)^^Circle(P,1)^^G--A--D, linewidth(0.7));dot(A^^B^^C^^D^^E^^F^^G^^O^^N^^P);label("$A$", A, W);label("$B$", B, SE);label("$C$", C, NE);label("$D$", D, dir(0));label("$P$", P, S);label("$N$", N, S);label("$O$", O, S);label("$E$", E, dir(120));label("$F$", F, NE);label("$G$", G, dir(100));