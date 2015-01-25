settings.outformat="svg";
import olympiad;
unitsize(15);

size((400));draw((0,0)--(5,0)--(6,3)--(1,3)--cycle);draw((6,3)--(-5,0)--(10,0)--(1,3));label("A", (0,0), S);label("B", (5,0), S);label("C", (6,3), NE);label("D", (1,3), NW);label("P", (10,0), E);label("Q", (-5,0), W);label("M", (.5,1.5), NW);label("N", (5.65, 1.5), NE);label("O", (3.4,1.75));