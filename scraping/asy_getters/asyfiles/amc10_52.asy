settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));pair O=origin, A=(1,0), C=(0,1), B=(1,1), D=(1, sqrt(3)), E=(sqrt(3), 1), point=B;fill(Arc(O, 2, 0, 90)--O--cycle, mediumgray);clip(B--Arc(O, 2, 30, 60)--cycle);draw(Circle(origin, 2));draw((-2,0)--(2,0)^^(0,-2)--(0,2));draw(A--D^^C--E);label("$A$", A, dir(point--A));label("$C$", C, dir(point--C));label("$O$", O, dir(point--O));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$B$", B, SW);