settings.outformat="svg"

size(100);defaultpen(linewidth(0.7));filldraw(Arc(origin,1,30,330)--dir(330)--origin--dir(30)--cycle, yellow, black);label("1", (sqrt(3)/4, 1/4), NW);label("$60^\circ$", (1,0));