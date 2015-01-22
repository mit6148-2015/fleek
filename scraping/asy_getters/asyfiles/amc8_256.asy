settings.outformat="svg";
import olympiad;

pair A,B,C,D,E,F,G,H,I,J;A = (0.5,2);B = (1.5,2);C = (1.5,1);D = (0.5,1);E = (0,1);F = (0,0);G = (1,0);H = (1,1);I = (2,1);J = (2,0); draw(A--B); draw(C--B); draw(D--A); draw(F--E); draw(I--J); draw(J--F); draw(G--H); draw(A--J); filldraw(A--B--C--I--J--cycle,grey);draw(E--I);dot("$A$", A, NW);dot("$B$", B, NE);dot("$C$", C, NE);dot("$D$", D, NW);dot("$E$", E, NW);dot("$F$", F, SW);dot("$G$", G, S);dot("$H$", H, N);dot("$I$", I, NE);dot("$J$", J, SE);