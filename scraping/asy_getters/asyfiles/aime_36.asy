settings.outformat="svg";
import olympiad;

defaultpen(fontsize(10));real x=22.61986495;pair A=(0,26), B=(26,26), C=(26,0), D=origin, E=A+24*dir(x), F=C+24*dir(180+x);draw(B--C--F--D--C^^D--A--E--B--A, linewidth(0.7));dot(A^^B^^C^^D^^E^^F);pair point=(13,13);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));