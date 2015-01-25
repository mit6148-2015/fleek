settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(6mm);defaultpen(linewidth(0.7)+fontsize(8pt));pair C = 3*dir (30);pair D = 3*dir (135);pair A = 3*dir (0);pair B = 3*dir(180);pair O = (0,0);draw (Circle ((0, 0), 3));label ("$C$", C, NE);label ("$D$", D, NW);label ("$B$", B, W);label ("$A$", A, E);label ("$O$", O, S);label ("$45^\circ$", (-0.3,0.1), WNW);label ("$30^\circ$", (0.5,0.1), ENE);draw (A--B);draw (O--D);draw (O--C);