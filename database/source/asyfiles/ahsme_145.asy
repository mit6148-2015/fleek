settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(8,0)--(8,6)--(0,0));draw(Circle((4.5,1),1));draw((4.5,2.5)..(5.55,2.05)..(6,1), EndArrow);dot((0,0));dot((8,0));dot((8,6));dot((4.5,1));label("A", (0,0), SW);label("B", (8,0), SE);label("C", (8,6), NE);label("8", (4,0), S);label("6", (8,3), E);label("10", (4,3), NW);label("P", (4.5,1), NW);