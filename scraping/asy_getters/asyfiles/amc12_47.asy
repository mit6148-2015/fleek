settings.outformat="svg";
import olympiad;

size(150); defaultpen(linewidth(0.7)+fontsize(8)); draw(circle((2,4),4));draw(circle((14,9),9)); draw((0,-2)--(0,20));draw((-6,0)--(25,0)); draw((2,4)--(2,4)+4*expi(pi*4.5/11)); draw((14,9)--(14,9)+9*expi(pi*6/7)); label("4",(2,4)+2*expi(pi*4.5/11),(-1,0)); label("9",(14,9)+4.5*expi(pi*6/7),(1,1)); label("(2,4)",(2,4),(0.5,-1.5));label("(14,9)",(14,9),(1,-1)); draw((-4,120*-4/119+912/119)--(11,120*11/119+912/119)); dot((2,4)^^(14,9));