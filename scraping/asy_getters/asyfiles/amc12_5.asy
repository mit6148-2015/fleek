settings.outformat="svg";
import olympiad;
unitsize(15);

import three;import math;unitsize(1.8cm);defaultpen(linewidth(.8pt));currentprojection=orthographic(2,0.2,1);triple A=(0,0,1);triple B=(sqrt(2)/2,sqrt(2)/2,0);triple C=(sqrt(2)/2,-sqrt(2)/2,0);triple D=(-sqrt(2)/2,-sqrt(2)/2,0);triple E=(-sqrt(2)/2,sqrt(2)/2,0);triple F=(0,0,-1);draw(A--B--E--cycle);draw(A--C--D--cycle);draw(F--C--B--cycle);draw(F--D--E--cycle,dotted+linewidth(0.7));