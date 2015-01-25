settings.outformat="svg";
import olympiad;
unitsize(15);

size((100));draw((0,0)--(9,0)--(9,9)--(0,9)--cycle);draw((3,0)--(9,9)--(0,3)--cycle);dot((3,0));dot((0,3));dot((9,9));dot((0,0));dot((9,0));dot((0,9));label("$A$", (0,9), NW);label("$B$", (9,9), NE);label("$C$", (9,0), SE);label("$D$", (3,0), S);label("$E$", (0,0), SW);label("$F$", (0,3), W);