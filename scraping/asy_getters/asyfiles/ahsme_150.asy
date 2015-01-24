settings.outformat="svg";
import olympiad;

draw(Circle((0,0), 5));draw((0,5)--(3,-4)--(-3,-4)--cycle);label("A", (0,5), N);label("B", (-3,-4), SW);label("C", (3,-4), SE);dot((0,5));dot((3,-4));dot((-3,-4));