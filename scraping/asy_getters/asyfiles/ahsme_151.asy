settings.outformat="svg";
import olympiad;

Label l;l.p=fontsize(6);xaxis("$x$",0,6,Ticks(l,1.0,0.5),EndArrow);yaxis("$y$",0,4,Ticks(l,1.0,0.5),EndArrow);draw((0,3)--(3,3)--(3,1)--(5,1)--(5,0)--(0,0)--cycle,black+linewidth(2));