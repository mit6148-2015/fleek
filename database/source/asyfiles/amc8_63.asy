settings.outformat="svg";
import olympiad;
unitsize(15);

fill((3,3)--(3,-3)--(-3,-3)--(-3,3)--cycle,lightgray);fill(arc((3,3),(0,3),(3,0),CCW)--(3,3)--cycle,white);fill(arc((3,-3),(3,0),(0,-3),CCW)--(3,-3)--cycle,white);fill(arc((-3,-3),(0,-3),(-3,0),CCW)--(-3,-3)--cycle,white);fill(arc((-3,3),(-3,0),(0,3),CCW)--(-3,3)--cycle,white);draw(circle((3,3),3));draw(circle((3,-3),3));draw(circle((-3,-3),3));draw(circle((-3,3),3));draw((3,3)--(3,-3)--(-3,-3)--(-3,3)--cycle);