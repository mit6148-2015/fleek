settings.outformat="svg";
import olympiad;
unitsize(15);

real r=2-sqrt(3);draw(Circle(origin, 1));int i;for(i=0; i<12; i=i+1) {draw(Circle(dir(30*i), r));dot(dir(30*i));}draw(origin--(1,0)--dir(30)--cycle);label("1", (0.5,0), S);