settings.outformat="svg";
import olympiad;
unitsize(15);

pair A=(0,5), B=origin, C=(12,0), D=rotate(-60)*C, F=rotate(60)*A, P=intersectionpoint(A--D, C--F);draw(A--P--B--A--C--B^^C--P);dot(A^^B^^C^^P);pair point=P;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$P$", P, NE);