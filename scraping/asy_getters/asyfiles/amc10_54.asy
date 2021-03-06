settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.8));pair X=(-6,0), O=origin, P=(6,0), B=tangent(X, O, 2, 1), A=tangent(X, O, 2, 2), C=tangent(X, P, 4, 1), D=tangent(X, P, 4, 2);pair top=X+15*dir(X--A), bottom=X+15*dir(X--B);draw(Circle(O, 2)^^Circle(P, 4));draw(bottom--X--top);draw(A--O--B^^O--P^^D--P--C);pair point=X;label("$2$", midpoint(O--A), dir(point--midpoint(O--A)));label("$4$", midpoint(P--D), dir(point--midpoint(P--D)));label("$O$", O, SE);label("$P$", P, dir(point--P));pair point=O;label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));pair point=P;label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));fill((-3,7)--(-3,-7)--(-7,-7)--(-7,7)--cycle, white);