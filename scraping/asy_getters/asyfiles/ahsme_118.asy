settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10));pair D=origin, A=(3,4), B=(7,4), C=(10,0), E=(14,8), F=(14,0);draw(B--C--F--E--B--A--D--B^^C--D, linewidth(0.7));dot(A^^B^^C^^D^^E^^F);pair point=(5,3);label("$A$", A, N);label("$B$", B, N);label("$C$", C, S);label("$D$", D, S);label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));markscalefactor=0.05;draw(rightanglemark(E,F,D), linewidth(0.7));