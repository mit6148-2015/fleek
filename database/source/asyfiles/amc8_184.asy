settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));pair a=(0,9), b=(8,9), c=(8,0), d=(4,0), e=(4,4), f=(0,4);draw(a--b--c--d--e--f--cycle);draw(shift(0,-.25)*a--shift(.25,-.25)*a--shift(.25,0)*a);draw(shift(-.25,0)*b--shift(-.25,-.25)*b--shift(0,-.25)*b);draw(shift(-.25,0)*c--shift(-.25,.25)*c--shift(0,.25)*c);draw(shift(.25,0)*d--shift(.25,.25)*d--shift(0,.25)*d);draw(shift(.25,0)*f--shift(.25,.25)*f--shift(0,.25)*f);label("$A$", a, NW);label("$B$", b, NE);label("$C$", c, SE);label("$D$", d, SW);label("$E$", e, SW);label("$F$", f, SW);label("5", (0,6.5), W);label("8", (4,9), N);label("9", (8, 4.5), E);