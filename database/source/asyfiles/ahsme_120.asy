settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(16,0)--(6,6)--cycle);draw((6,6)--(6,0)--(11,3)--(0,0));dot((6,6));dot((0,0));dot((11,3));dot((6,0));dot((16,0));label("A", (6,6), N);label("B", (0,0), W);label("C", (16,0), E);label("H", (6,0), S);label("M", (11,3), NE);