settings.outformat="svg";
import olympiad;
unitsize(15);

import math;unitsize(7mm);defaultpen(linewidth(.8pt)+fontsize(8pt));draw((0,0)--(4,0)--(4,3)--(0,3)--(0,0)--(4,3));fill((0,0)--(4,0)--(4,3)--cycle,mediumgray);label(rotate(aTan(3.0/4.0))*"Diagonal",(2,1.5),NW);label(rotate(90)*"Height",(4,1.5),E);label("Length",(2,0),S);