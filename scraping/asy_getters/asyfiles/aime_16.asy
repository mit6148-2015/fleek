settings.outformat="svg";
import olympiad;

pair C=origin, D=(4,11), A=(8,-5), B=(16,0);draw(A--B--C--D--B^^D--A--C);draw(midpoint(A--B)--midpoint(C--D), dashed);label("27", B--D, NE);label("41", A--B, SE);label("7", A--C, SW);label("$d$", midpoint(A--B)--midpoint(C--D), NE);label("18", (7,8), SW);label("13", (3,9), SW);pair point=(7,0);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));