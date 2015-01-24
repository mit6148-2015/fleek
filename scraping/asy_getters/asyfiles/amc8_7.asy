settings.outformat="svg";
import olympiad;

size(100);draw((0,0)--(5,0),MidArrow);draw((5,0)--(10,0),MidArrow);draw((5,5sqrt(3))--(2.5,2.5sqrt(3)),MidArrow);draw((2.5,2.5sqrt(3))--(0,0),MidArrow);draw((5,5sqrt(3))--(7.5,2.5sqrt(3)),MidArrow);draw((7.5,2.5sqrt(3))--(10,0),MidArrow);draw((7.5,2.5sqrt(3))--(2.5,2.5sqrt(3)),MidArrow);draw((7.5,2.5sqrt(3))--(5,0),MidArrow);draw((2.5,2.5sqrt(3))--(5,0),MidArrow);label("D",(0,0),SW);label("C",(5,0),S);label("N",(10,0),SE);label("A",(2.5,2.5sqrt(3)),W);label("B",(7.5,2.5sqrt(3)),E);label("M",(5,5sqrt(3)),N);