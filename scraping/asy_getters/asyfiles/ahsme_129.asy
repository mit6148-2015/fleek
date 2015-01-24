settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, B=(10,10), C=(10,5), D=(30,5), E=(30,-5), F=(10,-5), G=(10,-10);draw(A--B--C--D--E--F--G--A);label("A", A, W);label("B", B, NE);label("C", C, S);label("D", D, NE);label("E", E, SE);label("F", F, N);label("G", G, SE);label("5", (12,7.5));label("5", (12,-7.5));label("20", (C+D)/2, N);label("20", (F+E)/2, S);label("10", (32,0));