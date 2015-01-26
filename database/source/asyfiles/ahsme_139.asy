settings.outformat="svg";
import olympiad;
unitsize(15);

size((100));draw((0,0)--(10,0)--(8,10)--cycle);draw((4,5)--(9.2,4));dot((0,0));dot((10,0));dot((8,10));dot((4,5));dot((9.2,4));label("A", (0,0), SW);label("B", (8,10), N);label("C", (10,0), SE);label("D", (4,5), NW);label("E", (9.2,4), E);label("$55^{\circ}$", (.5,0), NE);label("$75^{\circ}$", (9.8,0), NW);