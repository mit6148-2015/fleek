settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=dir(200), D=dir(95), M=midpoint(A--D), C=dir(30), BB=C+2*dir(C--M), B=intersectionpoint(M--BB, Circle(origin, 1));draw(Circle(origin, 1)^^A--D^^B--C);real r=0.05;pair M1=midpoint(M--D), M2=midpoint(M--A);draw((M1+0.1*dir(90)*dir(A--D))--(M1+0.1*dir(-90)*dir(A--D)));draw((M2+0.1*dir(90)*dir(A--D))--(M2+0.1*dir(-90)*dir(A--D)));pair point=origin;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));