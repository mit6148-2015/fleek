settings.outformat="svg";
import olympiad;

unitsize(36);draw(circle((-3,0),1));draw(circle((0,0),1));draw((0,0)--dir(30)); draw((0,0)--(0,-1)); draw((0,0)--dir(150));draw((-2.293,.707)--(-3.707,-.707)); draw((-2.293,-.707)--(-3.707,.707));fill((-2.9,1)--(-2.65,1.25)--(-2.65,1.6)--(-3.35,1.6)--(-3.35,1.25)--(-3.1,1)--cycle,black);fill((.1,1)--(.35,1.25)--(.35,1.6)--(-.35,1.6)--(-.35,1.25)--(-.1,1)--cycle,black);label("$5$",(-3,.2),N); label("$3$",(-3.2,0),W); label("$4$",(-3,-.2),S); label("$8$",(-2.8,0),E);label("$6$",(0,.2),N); label("$9$",(-.2,.1),SW); label("$7$",(.2,.1),SE);