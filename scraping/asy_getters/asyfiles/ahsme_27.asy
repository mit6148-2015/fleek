settings.outformat="svg";
import olympiad;

pair A = (0,0), B = (1,0), C = dir(60), T = (2/3,0);pair M = intersectionpoint(A--C,Circle((2/3,sqrt(3)/2),sqrt(3)/2)), N = intersectionpoint(B--C,Circle((2/3,sqrt(3)/2),sqrt(3)/2));draw((0,0)--(1,0)--dir(60)--cycle);draw(Circle((2/3,sqrt(3)/2),sqrt(3)/2));label("$A$",A,dir(210));label("$B$",B,dir(-30));label("$C$",C,dir(90));label("$M$",M,dir(190));label("$N$",N,dir(75));label("$T$",T,dir(-90));//Credit to bobthesmartypants for the diagram