settings.outformat="svg";
import olympiad;

draw((0,0)--(10,0)--(10,10)--(0,10)--cycle);draw((0,10)--(4,13)--(14,13)--(10,10));draw((10,0)--(14,3)--(14,13));draw((0,0)--(4,3)--(4,13), dashed);draw((4,3)--(14,3), dashed);dot((0,0));dot((0,10));dot((10,10));dot((10,0));dot((4,3));dot((14,3));dot((14,13));dot((4,13));dot((14,8));dot((5,0));label("A", (0,0), SW);label("B", (10,0), S);label("C", (14,3), E);label("D", (4,3), NW);label("E", (0,10), W);label("F", (10,10), SE);label("G", (14,13), E);label("H", (4,13), NW);label("M", (5,0), S);label("N", (14,8), E);