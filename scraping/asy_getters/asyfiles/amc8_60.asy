settings.outformat="svg";
import olympiad;

pair A,B,C;A=origin; B=(10,0); C=6.5*dir(15);dot(A); dot(B); dot(C);draw(B--A--C);draw(B--C,dashed);label("$6.5$",3.25*dir(15),NNW);label("$10$",(5,0),S);label("$s$",(8,1),NE);