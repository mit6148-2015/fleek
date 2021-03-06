settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);defaultpen(linewidth(0.7)+fontsize(10));pair O=origin, D=dir(195), A=dir(150), B=dir(30), C=B+1*dir(0);draw(O--A--C--D);dot(A^^B^^C^^D^^O);pair point=O;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$O$", O, dir(285));label("$x$", O+0.1*dir(172.5), dir(172.5));label("$y$", C+0.4*dir(187.5), dir(187.5));draw(Circle(O,1));