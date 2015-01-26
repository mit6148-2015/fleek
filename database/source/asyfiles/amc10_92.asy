settings.outformat="svg";
import olympiad;
unitsize(15);

size(125);defaultpen(linewidth(0.8));path hexagon=(2*dir(0))--(2*dir(60))--(2*dir(120))--(2*dir(180))--(2*dir(240))--(2*dir(300))--cycle;fill(hexagon,lightgrey);for(int i=0;i<=5;i=i+1){path arc=2*dir(60*i)--arc(2*dir(60*i),1,120+60*i,240+60*i)--cycle;unfill(arc);draw(arc);}draw(hexagon,linewidth(1.8));