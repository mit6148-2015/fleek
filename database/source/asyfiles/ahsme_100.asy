settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair O=origin, A=dir(35), C=dir(155), D=dir(215), B=intersectionpoint(dir(125)--O, A--C);draw(C--A--D^^B--O^^Circle(O,1));pair point=O;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$O$", O, dir(305));label("$5$", B--O, dir(O--B)*dir(90));label("$60^\circ$", dir(185), dir(185));label("$60^\circ$", B+0.05*dir(-25), dir(-25));