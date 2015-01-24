settings.outformat="svg";
import olympiad;

draw(Circle(origin, 2));draw(Circle(origin, 1));draw(origin--2*dir(90));draw(origin--2*dir(210));draw(origin--2*dir(330));label("$1$", 0.35*dir(150), dir(150));label("$1$", 1.3*dir(30), dir(30));label("$1$", (0,-1.3), dir(270));label("$2$", 1.3*dir(150), dir(150));label("$2$", 0.35*dir(30), dir(30));label("$2$", (0,-0.35), dir(270));