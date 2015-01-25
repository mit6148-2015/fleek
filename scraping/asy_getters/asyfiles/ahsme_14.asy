settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2cm);pair A = origin;pair B = (2.25,0);pair C = (2,1);pair D = (1,1);pair E = waypoint(A--D,0.25);pair F = waypoint(B--C,0.25);draw(A--B--C--D--cycle);draw(E--F);label("6",midpoint(A--D),NW);label("3",midpoint(C--D),N);label("4",midpoint(C--B),NE);label("9",midpoint(A--B),S);