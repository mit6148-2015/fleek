settings.outformat="svg"

size(200);defaultpen(linewidth(0.8));draw(unitsquare);path p=(0,1)--(1,1)--(1+sqrt(2)/2,1+sqrt(2)/2)--(1+sqrt(2)/2,2+sqrt(2)/2)--(1,2+sqrt(2))--(0,2+sqrt(2))--(-sqrt(2)/2,2+sqrt(2)/2)--(-sqrt(2)/2,1+sqrt(2)/2)--cycle;draw(p);draw(shift((1+sqrt(2)/2,-sqrt(2)/2-1))*p);draw(shift((0,-2-sqrt(2)))*p);draw(shift((-1-sqrt(2)/2,-sqrt(2)/2-1))*p);