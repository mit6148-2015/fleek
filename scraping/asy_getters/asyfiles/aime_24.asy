settings.outformat="svg";
import olympiad;
unitsize(15);

import graph; size(7cm); real lsf=0.5; pen dps=linewidth(0.7)+fontsize(10); defaultpen(dps); pen ds=black; real xmin=-1.55,xmax=7.95,ymin=-4.41,ymax=5.3; draw((1,3)--(0,0)); draw((0,0)--(2,0)); draw((2,0)--(1,3)); draw((1,3)--(1,0)); draw((1,0.7)--(0,0)); draw((1,0.7)--(2,0)); label("$11$",(0.75,1.63),SE*lsf); dot((1,3),ds); label("$A$",(0.96,3.14),NE*lsf); dot((0,0),ds); label("$B$",(-0.15,-0.18),NE*lsf); dot((2,0),ds); label("$C$",(2.06,-0.18),NE*lsf); dot((1,0),ds); label("$M$",(0.97,-0.27),NE*lsf); dot((1,0.7),ds); label("$D$",(1.05,0.77),NE*lsf); clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);