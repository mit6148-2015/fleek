settings.outformat="svg";
import olympiad;
unitsize(15);

import three;import solids;real h=2+2*sqrt(7);currentprojection=orthographic((0.75,-5,h/2+1),target=(2,2,h/2));currentlight=light(1,0,3);draw((0,0,0)--(4,0,0)--(4,4,0)--(0,4,0)--(0,0,0)^^(4,0,0)--(4,0,h)--(4,4,h)--(0,4,h)--(0,4,0));draw(shift((1,3,1))*unitsphere,black);draw(shift((3,3,1))*unitsphere,black);draw(shift((3,1,1))*unitsphere,black);draw(shift((1,1,1))*unitsphere,black);draw(shift((2,2,h/2))*scale(2,2,2)*unitsphere,black);draw(shift((1,3,h-1))*unitsphere,black);draw(shift((3,3,h-1))*unitsphere,black);draw(shift((3,1,h-1))*unitsphere,black);draw(shift((1,1,h-1))*unitsphere,black);draw((0,0,0)--(0,0,h)--(4,0,h)^^(0,0,h)--(0,4,h));