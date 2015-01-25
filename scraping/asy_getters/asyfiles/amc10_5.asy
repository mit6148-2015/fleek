settings.outformat="svg";
import olympiad;
unitsize(15);

path seg1, seg2;seg1=(6,0)--(0,3);seg2=(2,0)--(4,2);dot((0,0));dot((1,0));fill(circle((2,0),0.1),black);dot((3,0));dot((4,0));dot((5,0));fill(circle((6,0),0.1),black);dot((0,1));dot((1,1));dot((2,1));dot((3,1));dot((4,1));dot((5,1));dot((6,1));dot((0,2));dot((1,2));dot((2,2));dot((3,2));fill(circle((4,2),0.1),black);dot((5,2));dot((6,2));fill(circle((0,3),0.1),black);dot((1,3));dot((2,3));dot((3,3));dot((4,3));dot((5,3));dot((6,3));draw(seg1);draw(seg2);pair [] x=intersectionpoints(seg1,seg2);fill(circle(x[0],0.1),black);label("$A$",(0,3),NW);label("$B$",(6,0),SE);label("$C$",(4,2),NE);label("$D$",(2,0),S);label("$E$",x[0],N);