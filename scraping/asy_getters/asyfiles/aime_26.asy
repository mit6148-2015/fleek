settings.outformat="svg";
import olympiad;
unitsize(15);

real alpha = 25;pair W=dir(225), X=dir(315), Y=dir(45), Z=dir(135), O=origin;pair w=dir(alpha)*W, x=dir(alpha)*X, y=dir(alpha)*Y, z=dir(alpha)*Z;draw(W--X--Y--Z--cycle^^w--x--y--z--cycle);pair A=intersectionpoint(Y--Z, y--z), C=intersectionpoint(Y--X, y--x), E=intersectionpoint(W--X, w--x), G=intersectionpoint(W--Z, w--z), B=intersectionpoint(Y--Z, y--x), D=intersectionpoint(Y--X, w--x), F=intersectionpoint(W--X, w--z), H=intersectionpoint(W--Z, y--z);dot(O);label("$O$", O, SE);label("$A$", A, dir(O--A));label("$B$", B, dir(O--B));label("$C$", C, dir(O--C));label("$D$", D, dir(O--D));label("$E$", E, dir(O--E));label("$F$", F, dir(O--F));label("$G$", G, dir(O--G));label("$H$", H, dir(O--H));