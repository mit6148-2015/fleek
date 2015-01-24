settings.outformat="svg";
import olympiad;

size(120);path c = Circle((0, 0), 1);pair A = dir(20), B = dir(130), C = dir(240), D = dir(330);draw(c);pair F = 3(A-B) + B;pair G = 3(D-C) + C;pair E = intersectionpoints(B--F, C--G)[0];draw(B--E--C--A);label("$A$", A, NE);label("$B$", B, NW);label("$C$", C, SW);label("$D$", D, SE);label("$E$", E, E);//Credit to MSTang for the diagram