settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(10,0)--(3,-5)--(0,0)--(6.5,3)--(10,0));draw((6.5,0)--(6.5,3));draw((3,0)--(3,-5));dot((0,0));dot((10,0));dot((3,0));dot((3,-5));dot((6.5,0));dot((6.5,3));label("A", (0,0), W);label("B", (6.5,3), N);label("C", (10,0), E);label("D", (3,-5), S);label("E", (3,0), N);label("F", (6.5,0), S);