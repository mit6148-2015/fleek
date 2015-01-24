settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair H=origin, A=(0,6), B=(-4,0), C=(5,0), M=B+3.6*dir(B--A);draw(B--C--A--B^^M--H--A^^rightanglemark(A,H,C));label("A", A, NE);label("B", B, W);label("C", C, E);label("H", H, S);label("M", M, dir(M));