settings.outformat="svg";
import olympiad;
unitsize(15);

size(100); pathpen = linewidth(0.7); pointpen = black+linewidth(3);pair A = (0,0), C = (6,0), B = (6,8), D = (2*A+B)/3, E = (2*C+B)/3; D(D("A",A,SW)--D("B",B,NW)--D("C",C,SE)--cycle); D(D("D",D,NW)--D("E",E,plain.E)); D(rightanglemark(D,E,B,16)); D(rightanglemark(A,C,B,16));