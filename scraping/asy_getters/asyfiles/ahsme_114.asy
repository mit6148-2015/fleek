settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair H=origin, B=(1,-(1/sqrt(3))), C=(-1,-(1/sqrt(3))), A=(0,(2/sqrt(3))), E=(2,-(2/sqrt(3))), F=(-2,-(2/sqrt(3))), D=(0,(4/sqrt(3)));draw(A--B--C--A^^D--E--F--D);label("A'", A, N);label("B'", B, SE);label("C'", C, SW);label("A", D, E);label("B", E, E);label("C", F, W);