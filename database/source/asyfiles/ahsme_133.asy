settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair B=origin, A=(1.5,3*sqrt(3)/2), C=(3,0), D=(1,0), P=B+1.6*dir(B--A), Q=C+1.2*dir(C--A);draw(B--P--D--B^^P--Q--D--C--Q);draw(Q--A--P, linetype("4 4"));label("A", A, N);label("B", B, W);label("C", C, E);label("A'", D, S);label("P", P, W);label("Q", Q, E);