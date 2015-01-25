settings.outformat="svg";
import olympiad;
unitsize(15);

size((270));draw((0,0)--(10,0)..(5,5)..(0,0));draw((5,0)--(5,5));draw((9,3)--(1,3)--(1,1)--(9,1)--cycle);draw((9.9,1)--(.1,1));label("O", (5,0), S);label("a", (7.5,0), S);label("G", (5,1), SE);label("J", (5,5), N);label("H", (5,3), NE);label("E", (1,3), NW);label("L", (1,1), S);label("C", (.1,1), W);label("F", (9,3), NE);label("M", (9,1), S);label("D", (9.9,1), E);