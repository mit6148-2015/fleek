settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));pair O=origin;fill(O--Arc(O, 2, 20, 160)--cycle, mediumgray);fill(O--Arc(O, 1, 20, 160)--cycle, white);fill(O--Arc(O, 2, 200, 340)--cycle, mediumgray);fill(O--Arc(O, 1, 200, 340)--cycle, white);fill(O--Arc(O, 3, 160, 200)--cycle, mediumgray);fill(O--Arc(O, 2, 160, 200)--cycle, white);fill(O--Arc(O, 1, 160, 200)--cycle, mediumgray);fill(O--Arc(O, 3, -20, 20)--cycle, mediumgray);fill(O--Arc(O, 2, -20, 20)--cycle, white);fill(O--Arc(O, 1, -20, 20)--cycle, mediumgray);draw(Circle(origin, 1));draw(Circle(origin, 2));draw(Circle(origin, 3));draw(5*dir(200)--5*dir(20)^^5*dir(160)--5*dir(-20));