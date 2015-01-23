settings.outformat="svg"

size(6cm);pair A = (0, 0), B = (1, 0), C = (1, 1), D = (0, 1), E = (1.3, 0), F = (0, 0.7);draw(A--B--C--D--cycle);draw(F--C--E--B);label("$A$", A, SW);label("$B$", B, S);label("$C$", C, N);label("$D$", D, NW);label("$E$", E, SE);label("$F$", F, W);//Credit to MSTang for the asymptote