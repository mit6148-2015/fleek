settings.outformat="svg";
import olympiad;

path p=origin--(18,0)--(18,5)--(0,5)--cycle;draw(p^^shift(0,8)*p^^shift(22,0)*p^^shift(22,16)*p^^shift(22,24)*p);filldraw(shift(0,16)*p^^shift(22,8)*p^^shift(22,32)*p^^shift(0,32)*p^^shift(0,24)*p, black, black);draw((-1,-1)--(41,-1)--(41,38)--(-1,38)--cycle, linewidth(2));int i;for(i=1; i<6; i=i+1) {label(string(6-i), (-3,8*i-5.5), W);label(string(11-i), (43,8*i-5.5), E);}