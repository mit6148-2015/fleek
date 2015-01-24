settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7));pair A=(0,3), B=(3,3), C=(6,0), D=origin, E=(3,0);draw(E--B--C--D--A--B);draw(rightanglemark(A, D, C));label("$A$", A, NW);label("$B$", B, NW);label("$C$", C, SE);label("$D$", D, SW);label("$E$", E, NW);label("$3$", A--D, W);label("$3$", A--B, N);label("$6$", E, S);