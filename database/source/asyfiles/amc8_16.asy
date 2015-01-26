settings.outformat="svg";
import olympiad;
unitsize(15);

pair A,B,C,D;A=(0,4); B=(3,4); C=(3,0); D=origin;draw(circle(D,5));fill((0,5)..(1.5,4.7697)..B--A--cycle,black);fill(B..(4,3)..(5,0)--C--cycle,black);draw((0,5)--D--(5,0));label("A",A,NW);label("B",B,NE);label("C",C,S);label("D",D,SW);