settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.7));real alpha=24, beta=32;pair B=origin, C=(1,0), A=dir(beta), D=C+0.5*dir(alpha);pair EE=2*dir(180-alpha), E=intersectionpoint(C--EE, A--B);pair EEE=reflect(B,A)*EE, EEEE=reflect(C,B)*EEE, F=intersectionpoint(E--EEE, B--C), G=intersectionpoint(F--EEEE, A--B);draw((1.4,0)--B--1.4*dir(beta));draw(D--C, linetype("4 4"),EndArrow(5));draw(C--E, linetype("4 4"),EndArrow(5));draw(E--F, linetype("4 4"),EndArrow(5));draw(F--G, linetype("4 4"),EndArrow(5));markscalefactor=0.01;draw(anglemark(C,B,A));draw(anglemark((1.4,0), C,D));label("$\beta$", 0.07*dir(beta/2), dir(beta/2), fontsize(10));label("$\alpha$", C+0.07*dir(alpha/2), dir(alpha/2), fontsize(10));label("$A$", A, dir(90)*dir(A));label("$B$", B, dir(beta/2+180));label("$C$", C, S);