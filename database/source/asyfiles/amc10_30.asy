settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));pair A=origin, B=(1,0), C=(1,1), D=(0,1), X=tangent(C, (0.5,0), 0.5, 1), F=C+2*dir(C--X), E=intersectionpoint(C--F, A--D);draw(C--D--A--B--C--E);draw(Arc((0.5,0), 0.5, 0, 180));pair point=(0.5,0.5);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));