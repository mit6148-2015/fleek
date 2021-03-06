settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));real x=sqrt(6), y=sqrt(3), a=0.4;pair D=origin, A=(0,y), B=(x,y), C=(x,0), E=foot(C,B,D), F=foot(A,B,D);real r=degrees(B);pair M1=F+3*dir(r)*dir(90), M2=F+3*dir(r)*dir(-90), N1=E+3*dir(r)*dir(90), N2=E+3*dir(r)*dir(-90);markscalefactor=0.02;draw(B--C--D--A--B--D^^M1--M2^^N1--N2^^rightanglemark(A,F,B)^^rightanglemark(N1,E,B));pair W=A+a*dir(135), X=B+a*dir(45), Y=C+a*dir(-45), Z=D+a*dir(-135);label("A", A, NE);label("B", B, NE);label("C", C, dir(0));label("D", D, dir(180));label("$L$", (x/2,0), SW);label("$L^\prime$", C, SW);label("1", D--F, NW);label("1", F--E, SE);label("1", E--B, SE);clip(W--X--Y--Z--cycle);