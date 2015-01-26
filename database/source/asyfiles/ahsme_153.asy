settings.outformat="svg";
import olympiad;
unitsize(15);

draw(Circle((0,0), 13));draw((-13,0)--(12,5)--(12,-5)--cycle);dot((-13,0));dot((12,5));dot((12,-5));label("A", (-13,0), W);label("B", (12,5), NE);label("C", (12,-5), SE);