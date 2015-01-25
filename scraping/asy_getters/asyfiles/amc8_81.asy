settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(4,0)--(4,4)--(0,4)--cycle);draw(circle((2,2),1));draw((4,0)--(6,1)--(6,5)--(4,4));draw((6,5)--(2,5)--(0,4));draw(ellipse((5,2.5),0.5,1));fill(ellipse((3,4.5),1,0.25),black);fill((2,4.5)--(2,5.25)--(4,5.25)--(4,4.5)--cycle,black);fill(ellipse((3,5.25),1,0.25),black);