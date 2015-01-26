settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(45);import graph; size(300); real lsf = 0.5; pen dp = linewidth(0.7) + fontsize(10); defaultpen(dp); pen ds = black; pen xdxdff = rgb(0.49,0.49,1);draw((2,0.15)--(1.85,0.15)--(1.85,0)--(2,0)--cycle); draw(circle((2,1),2.24)); draw(circle((2,1),1)); draw((0,0)--(4,0)); draw((0,0)--(2,1)); draw((2,1)--(2,0)); draw((2,1)--(4,0));dot((0,0),ds); label("$A$", (-0.19,-0.23),NE*lsf); dot((2,0),ds); label("$B$", (1.97,-0.31),NE*lsf); dot((2,1),ds); label("$C$", (1.96,1.09),NE*lsf); dot((4,0),ds); label("$D$", (4.07,-0.24),NE*lsf); clip((-3.1,-7.72)--(-3.1,4.77)--(11.74,4.77)--(11.74,-7.72)--cycle);