settings.outformat="svg";
import olympiad;
unitsize(15);

size(8cm);pair A = (0, 0), B = (9, 0), C = (3, 6);pair D = (7.5, 1.5), E = (6.5, 0);pair P = intersectionpoints(A--D, C--E)[0];draw(A--B--C--cycle);draw(A--D);draw(C--E);label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, N);label("$D$", D, NE);label("$E$", E, S);label("$P$", P, S);//Credit to MSTang for the asymptote