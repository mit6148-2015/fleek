settings.outformat="svg";
import olympiad;

real d=320;pair O=origin;pair P=O+8*dir(d);pair A0 = origin;pair A1 = O+1*dir(d);pair A2 = O+2*dir(d);pair A3 = O+3*dir(d);pair A4 = O+4*dir(d);pair A5 = O+5*dir(d);filldraw(Circle(A0, 6), white, black);filldraw(circle(A1, 5), black, black);filldraw(circle(A2, 4), white, black);filldraw(circle(A3, 3), black, black);filldraw(circle(A4, 2), white, black);filldraw(circle(A5, 1), black, black);