settings.outformat="svg";
import olympiad;

unitsize(45);pair O = (0,0); pair T = dir(90);pair T1 = dir(270); pair T2 = dir(25);pair P = (.61,1); pair Q = (1.61, -1);draw(unitcircle);dot(O);label("O",O,W); label("T",T,N);label("T'",T1,S); label("T''",T2,NE);label("P",P,NE); label("Q",Q,S);draw(O--T2); label("$r$",midpoint(O--T2),NW);draw(T--P); label("4",midpoint(T--P),N);draw(T1--Q); label("9",midpoint(T1--Q),S);draw(P--Q);