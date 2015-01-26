settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);pair X=origin, A=(-5,0), B=(5,0), C=(0,5);draw(Arc(X, 5, 180, 360)^^B--C);dot(X);label("$X$", X, NE);label("$C$", C, N);label("$B$", B, E);label("$A$", A, W);