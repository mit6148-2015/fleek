settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair C=origin, N=dir(0), B=dir(20), A=dir(135), M=dir(180), P=(3/7)*dir(C--N);draw(M--N^^C--A--P--B--C^^Arc(origin,1,0,180));markscalefactor=0.03;draw(anglemark(C,A,P));draw(anglemark(C,B,P));pair point=C;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, S);label("$M$", M, dir(point--M));label("$N$", N, dir(point--N));label("$P$", P, S);label("$40^\circ$", C+(-0.15,0), NW);label("$10^\circ$", B+(0,0.05), W);label("$10^\circ$", A+(0.05,0.02), E);