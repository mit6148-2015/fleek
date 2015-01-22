settings.outformat="svg";
import olympiad;

pathpen = linewidth(.7); pointpen = black; pair A=(-1,0), B=-A, C=(0,1); fill(arc(C,1,0,180)--arc(A,1,90,0)--arc(B,1,180,90)--cycle, gray(0.5)); D(CR(D("A",A,SW),1)); D(CR(D("B",B,SE),1)); D(CR(D("C",C,N),1));