settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair B=origin, A=(0,2), C=(2,0), D=(2,2), E=(0,1), F=(1,0);draw(A--E--B--F--C--D--A--F^^E--D--B);label("A", A, NW);label("B", B, SW);label("C", C, SE);label("D", D, NE);label("E", E, W);label("F", F, S);label("H", (.8,0.6));label("I", (0.4,1.4));