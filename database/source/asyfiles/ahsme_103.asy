settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, P=(1.5,5), B=(8,0), C=P+2.5*dir(P--B);draw(A--P--C--A--B--C);label("A", A, W);label("B", B, E);label("C", C, NE);label("P", P, NW);label("6", 3*dir(A--C), SE);label("7", B+3*dir(B--C), NE);label("8", (4,0), S);