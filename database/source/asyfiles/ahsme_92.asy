settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, B=(10,0), C=(8,7), F=7*dir(A--C), E=(10,0)+4*dir(B--C), D=4*dir(A--B);draw(A--B--C--A--E--F--D);pair point=incenter(A,B,C);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));label("$2$", (2,0), S);label("$3$", (7,0), S);