settings.outformat="svg";
import olympiad;
unitsize(15);

draw(circle((0,0),3));draw(circle((7,0),3));draw((0,0)--(3,0));draw((0,-3)--(0,3));draw((7,3)--(7,0)--(7+3*sqrt(3)/2,-3/2));draw((7,0)--(7-3*sqrt(3)/2,-3/2));draw((0,5)--(0,3.5)--(-0.5,4));draw((0,3.5)--(0.5,4));draw((7,5)--(7,3.5)--(6.5,4));draw((7,3.5)--(7.5,4));label("$3$",(-0.75,0),W);label("$1$",(0.75,0.75),NE);label("$2$",(0.75,-0.75),SE);label("$6$",(6,0.5),NNW);label("$5$",(7,-1),S);label("$4$",(8,0.5),NNE);