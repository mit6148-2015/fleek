settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);pair A=(0,12), E=(0,8), B=origin, C=(24*sqrt(2),0), D=(6*sqrt(2),0), F=A+10*dir(A--C), G=intersectionpoint(E--F, A--D);draw(A--B--C--A--D^^E--F);pair point=G+1*dir(250);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));label("$G$", G, dir(point--G));markscalefactor=0.1;draw(rightanglemark(A,B,C));label("10", A--F, dir(90)*dir(A--F));label("27", F--C, dir(90)*dir(F--C));label("3", (0,10), W);label("9", (0,4), W);