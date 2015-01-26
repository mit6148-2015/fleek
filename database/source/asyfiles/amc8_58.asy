settings.outformat="svg";
import olympiad;
unitsize(15);

draw(ellipse((0,-5),10,3));fill((-10,-5)--(10,-5)--(10,5)--(-10,5)--cycle,white);draw(ellipse((0,0),10,3));draw((10,0)--(10,-5));draw((-10,0)--(-10,-5));draw((0,0)--(7,-3*sqrt(51)/10));label("10",(7/2,-3*sqrt(51)/20),NE);label("5",(-10,-3),E);