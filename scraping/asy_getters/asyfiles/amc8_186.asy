settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.8));size(3inch, 1.5inch);pair a=(0,0), b=(18,24), c=(68,24), d=(75,0), f=(68,0), e=(18,0);draw(a--b--c--d--cycle);draw(b--e);draw(shift(0,2)*e--shift(2,2)*e--shift(2,0)*e);label("30", (9,12), W);label("50", (43,24), N);label("25", (71.5, 12), E);label("24", (18, 12), E);label("$A$", a, SW);label("$B$", b, N);label("$C$", c, N);label("$D$", d, SE);label("$E$", e, S);