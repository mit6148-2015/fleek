settings.outformat="svg";
import olympiad;
unitsize(15);

pair B = (-0.866, -0.5);pair C = (0.866, -0.5);pair E = (0, -1);pair F = (0, 1);pair M = midpoint(B--C);pair A = (-0.99, -0.141);pair U = intersectionpoints(A--E, B--C)[0];draw(B--C);draw(F--E--A);draw(unitcircle);label("$B$", B, SW);label("$C$", C, SE);label("$A$", A, W);label("$E$", E, S);label("$U$", U, NE);label("$M$", M, NE);label("$F$", F, N);//Credit to MSTang for the asymptote