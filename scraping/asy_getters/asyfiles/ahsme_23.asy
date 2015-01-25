settings.outformat="svg";
import olympiad;
unitsize(15);

size(7cm);pair A = (0, 0), B = (7, 0), C = (10, 5), D = (3, 5), F = (5.7, 9.5);pair G = intersectionpoints(B--F, D--C)[0];pair E = intersectionpoints(A--C, B--F)[0];draw(A--D--C--B--cycle);draw(A--C);draw(D--F--B);label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, NE);label("$D$", D, NW);label("$F$", F, N);label("$G$", G, NE);label("$E$", E, SE);//Credit to MSTang for the asymptote