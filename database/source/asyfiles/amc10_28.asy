settings.outformat="svg";
import olympiad;
unitsize(15);

pair A=origin, B=(1,0), C=(1,1), D=(0,1), X=B+2*dir(165), E=intersectionpoint(B--X, A--D), Y=B+2*dir(105), F=intersectionpoint(B--Y, D--C);draw(B--C--D--A--B--F--E--B);pair point=(0.5,0.5);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));