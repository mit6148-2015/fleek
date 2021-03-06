settings.outformat="svg";
import olympiad;
unitsize(15);

import graph; size(5cm); real lsf=0; pen dps=linewidth(0.7)+fontsize(8); defaultpen(dps); pen ds=black; real xmin=-4.27,xmax=14.73,ymin=-3.22,ymax=6.8; draw((0,4)--(0,0)); draw((0,0)--(2.5,0)); draw((2.5,0)--(2.5,4)); draw((2.5,4)--(0,4)); draw(shift((1.25,4))*xscale(1.25)*yscale(1.25)*arc((0,0),1,0,180)); draw(shift((1.25,0))*xscale(1.25)*yscale(1.25)*arc((0,0),1,-180,0));dot((0,0),ds); label("$A$",(-0.26,-0.23),NE*lsf); dot((2.5,0),ds); label("$B$",(2.61,-0.26),NE*lsf); dot((0,4),ds); label("$D$",(-0.26,4.02),NE*lsf); dot((2.5,4),ds); label("$C$",(2.64,3.98),NE*lsf);clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);