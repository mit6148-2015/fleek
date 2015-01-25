settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair D=origin, C=D+dir(240), E=D+dir(300), F=E+dir(30), G=D+dir(30), A=D+dir(150), B=C+dir(150);draw(E--D--G--F--E--C--D--A--B--C);pair point=(0,0.5);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(-15));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));label("$G$", G, dir(point--G));