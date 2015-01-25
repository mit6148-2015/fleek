settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair D=origin, E=(3,0), F=(10,0), G=(12,0), H=(12,1), A=(0,1), B=(4,1), C=(9,1), O=circumcenter(B,C,F);draw(D--G--H--A--cycle);draw(Circle(O, abs(O-C)));label("$A$", A, NW);label("$B$", B, NW);label("$C$", C, NE);label("$D$", D, SW);label("$E$", E, SE);label("$F$", F, SW);label("4", (2,0.85), N);label("3", D--E, S);label("5", (6.5,0.85), N);