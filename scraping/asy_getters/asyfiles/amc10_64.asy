settings.outformat="svg";
import olympiad;

import three;unitsize(3cm);defaultpen(fontsize(8)+linewidth(0.7));currentprojection=obliqueX;dotfactor=4;draw((0.5,0,0)--(0,0,0)--(0,0,1)--(0,0,0)--(0,1,0),linetype("4 4"));draw((0.5,0,1)--(0,0,1)--(0,1,1)--(0.5,1,1)--(0.5,0,1)--(0.5,0,0)--(0.5,1,0)--(0.5,1,1));draw((0.5,1,0)--(0,1,0)--(0,1,1));dot((0.5,0,0));label("$A$",(0.5,0,0),WSW);dot((0,1,1));label("$C$",(0,1,1),NE);dot((0.5,1,0.5));label("$D$",(0.5,1,0.5),ESE);dot((0,0,0.5));label("$B$",(0,0,0.5),NW);