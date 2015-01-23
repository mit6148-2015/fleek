settings.outformat="svg"

defaultpen(linewidth(0.8));pair a=(4,4), b=(0,0), c=(0,4), d=(4,0), o=(2,2);draw(circle(o, 2));clip(a--b--c--cycle);draw(a--b--c--cycle);dot(o);label("$C$", c, NW);label("$A$", a, NE);label("$O$", o, SE);label("$B$", b, SW);