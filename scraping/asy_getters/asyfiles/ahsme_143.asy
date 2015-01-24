settings.outformat="svg";
import olympiad;

draw(Circle((0,0),10));draw((-10,0)--(8,6)--(2,0)--(8,-6)--cycle);draw((-10,0)--(10,0));dot((-10,0));dot((2,0));dot((10,0));dot((8,6));dot((8,-6));label("A", (-10,0), W);label("B", (8,6), NE);label("C", (8,-6), SE);label("D", (10,0), E);label("X", (2,0), NW);