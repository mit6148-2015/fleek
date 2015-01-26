settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(10);pair A,B,C,D,E;A=origin; B=(4,8); C=(14,8); D=(10,0); E=(4,0);draw(A--B--C--D--cycle);fill(B--E--D--C--cycle,gray);label("A",A,SW); label("B",B,NW); label("C",C,NE); label("D",D,SE); label("E",E,S);label("$10$",(9,8),N); label("$6$",(7,0),S); label("$8$",(4,4),W);draw((3,0)--(3,1)--(4,1));