settings.outformat="svg";
import olympiad;
unitsize(15);

import three;defaultpen(linewidth(0.7)+fontsize(10));currentprojection=orthographic(1/3+1/10,1-1/10,1/3);real r=sqrt(3);triple A=(0,0,r), B=(0,r,r), C=(1,r,r), D=(1,0,r), E=O, F=(0,r,0), G=(1,0,0), H=(1,r,0);draw(D--G--H--D--A--B--C--D--B--F--H--B^^C--H);draw(A--E^^G--E^^F--E, linetype("4 4"));label("$A$", A, N);label("$B$", B, dir(0));label("$C$", C, N);label("$D$", D, W);label("$E$", E, NW);label("$F$", F, S);label("$G$", G, W);label("$H$", H, S);triple H45=(1,r-0.15,0.1), H60=(1-0.05, r, 0.07);label("$45^\circ$", H45, dir(125), fontsize(8));label("$60^\circ$", H60, dir(25), fontsize(8));