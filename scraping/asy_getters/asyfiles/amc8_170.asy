settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(8));size(225);pair Z=origin, W=(0,10), X=(10,10), Y=(10,0), O=(5,5), B=(-4,8), C=(-4,2), A=(-13,5);draw((-4,0)--Y--X--(-4,10)--cycle);draw((0,-2)--(0,12)--(-2,12)--(-2,8)--B--A--C--(-2,2)--(-2,-2)--cycle);dot(O);label("$A$", A, NW);label("$O$", O, NE);label("$B$", B, SW);label("$C$", C, NW);label("$W$",W , NE);label("$X$", X, N);label("$Y$", Y, N);label("$Z$", Z, SE);