settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);dotfactor=4;draw(circle((0,0),4));draw(circle((10,-6),3));pair O,A,P,Q;O = (0,0);A = (10,-6);P = (-.55, -4.12);Q = (10.7, -2.86);dot("$O$", O, NE);dot("$O'$", A, SW);dot("$P$", P, SW);dot("$Q$", Q, NE);draw((2*sqrt(2),2*sqrt(2))--(10 + 3*sqrt(2)/2, -6 + 3*sqrt(2)/2)--cycle);draw((-1.68*sqrt(2),-2.302*sqrt(2))--(10 - 2.6*sqrt(2)/2, -6 - 3.4*sqrt(2)/2)--cycle);draw(P--Q--cycle);//Credit to happiface for the diagram