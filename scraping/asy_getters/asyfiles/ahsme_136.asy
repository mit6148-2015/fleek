settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair O=origin, A=3*dir(180), B=3*dir(140), C=3*dir(0);dot(O);draw(Arc(origin,1,0,360));draw(Arc(origin,3,0,360));draw(A--B--C--A);label("$A$", A, dir(O--A));label("$B$", B, dir(O--B));label("$C$", C, dir(O--C));