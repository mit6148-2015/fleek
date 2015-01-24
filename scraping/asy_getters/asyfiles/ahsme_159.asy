settings.outformat="svg";
import olympiad;

pathpen = linewidth(0.7); pointpen = black; pointfontpen = fontsize(10);pair B = (0,0), C = (1,0), A = dir(60), D = C*2/3, E = (2*A+C)/3, F = (2*B+A)/3;D(D("A",A,N)--D("B",B,SW)--D("C",C,SE)--cycle); D(D("D",D)--D("E",E,NE)--D("F",F,NW)--cycle); D(rightanglemark(C,D,E,1.5));