settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(10,0)--(10,10)--(0,10)--cycle);draw((5,5)--(12,-2)--(5,-9)--(-2,-2)--cycle);label("A", (0,0), W);label("B", (10,0), E);label("C", (10,10), NE);label("D", (0,10), NW);label("G", (5,5), N);label("F", (12,-2), E);label("E", (5,-9), S);label("H", (-2,-2), W);dot((-2,-2));dot((5,-9));dot((12,-2));dot((0,0));dot((10,0));dot((10,10));dot((0,10));dot((5,5));