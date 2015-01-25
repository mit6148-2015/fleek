settings.outformat="svg";
import olympiad;
unitsize(15);

draw(circle((0,0),2)); draw(circle((5,0),2));draw((0,0)--(sqrt(3),1)); draw((0,0)--(-sqrt(3),1)); draw((0,0)--(0,-2));draw((5,0)--(5+sqrt(3),1)); draw((5,0)--(5-sqrt(3),1)); draw((5,0)--(5,-2));fill((0,5/3)--(2/3,7/3)--(1/3,7/3)--(1/3,3)--(-1/3,3)--(-1/3,7/3)--(-2/3,7/3)--cycle,black);fill((5,5/3)--(17/3,7/3)--(16/3,7/3)--(16/3,3)--(14/3,3)--(14/3,7/3)--(13/3,7/3)--cycle,black);label("$1$",(0,1/2),N); label("$2$",(sqrt(3)/4,-1/4),ESE); label("$3$",(-sqrt(3)/4,-1/4),WSW);label("$4$",(5,1/2),N); label("$5$",(5+sqrt(3)/4,-1/4),ESE); label("$6$",(5-sqrt(3)/4,-1/4),WSW);