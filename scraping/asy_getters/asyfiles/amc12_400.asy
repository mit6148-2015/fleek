settings.outformat="svg"

size(150);defaultpen(linewidth(0.8));string[] strng = {'A','D','B','E','C'};pair A=dir(90),B=dir(306),C=dir(162),D=dir(18),E=dir(234);draw(A--B--C--D--E--cycle);for(int i=0;i<=4;i=i+1){path circ=circle(dir(90-72*i),0.125);unfill(circ);draw(circ);label("$"+strng[i]+"$",dir(90-72*i));}