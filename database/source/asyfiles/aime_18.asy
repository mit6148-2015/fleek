settings.outformat="svg";
import olympiad;
unitsize(15);

pair D=origin, A=(13,0), B=(13,12), C=(0,12), P=(6.5, 6);draw(B--C--P--D--C^^D--A);filldraw(A--P--B--cycle, gray, black);label("$A$", A, SE);label("$B$", B, NE);label("$C$", C, NW);label("$D$", D, SW);label("$P$", P, N);label("$13\sqrt{3}$", A--D, S);label("$12\sqrt{3}$", A--B, E);