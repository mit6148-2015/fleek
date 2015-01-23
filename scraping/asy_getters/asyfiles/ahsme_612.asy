settings.outformat="svg"

defaultpen(linewidth(.8pt));dotfactor=4;pair B = (0,0);pair C = (5,0);pair A = (2.5,7.5);pair D = foot(B,A,C);dot(A);dot(B);dot(C);dot(D);label("$A$", A, N);label("$B$", B, SW);label("$C$", C, SE);label("$D$", D, NE);draw(A--B--C--cycle);draw(B--D);