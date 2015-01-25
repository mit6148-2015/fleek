settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=(-1,0), B=(1,0), C=(0,1), D=(0,-1), Q=origin, P=(-0.5,0);draw(P--C--D^^A--B^^Circle(Q,1));label("$A$", A, W);label("$B$", B, E);label("$C$", C, N);label("$D$", D, S);label("$P$", P, S);label("$Q$", Q, SE);label("$60^\circ$", P+0.0.5*dir(30), dir(30));