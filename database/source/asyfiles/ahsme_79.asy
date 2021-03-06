settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));real r=degrees((12,5)), s=degrees((3,4));pair D=origin, A=(13,0), C=D+12*dir(r), B=A+3*dir(180-(90-r+s));draw(A--B--C--D--cycle);markscalefactor=0.05;draw(rightanglemark(A,B,C));pair point=incenter(A,C,D);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$3$", A--B, dir(A--B)*dir(-90));label("$4$", B--C, dir(B--C)*dir(-90));label("$12$", C--D, dir(C--D)*dir(-90));label("$13$", D--A, dir(D--A)*dir(-90));