settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));pair a=(4,4), b=(0,0), c=(0,4), d=(4,0), o=(2,2);draw(a--d--b--c--cycle);draw(circle(o, 2.5));