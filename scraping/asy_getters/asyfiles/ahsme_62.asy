settings.outformat="svg";
import olympiad;

size(130);pair A = (2, 2.4), C = (0, 0), B = (4.3, 0), E = 0.7*A, F = 0.57*A + 0.43*B, D = (2.4, 0);draw(A--B--C--cycle);draw(E--D--F);label("$A$", A, N);label("$B$", B, E);label("$C$", C, W);label("$D$", D, S);label("$E$", E, NW);label("$F$", F, NE);//Credit to MSTang for the diagram