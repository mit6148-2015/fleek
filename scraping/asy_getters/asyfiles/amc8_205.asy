settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7));draw(polygon(3));pair D=origin+1*dir(270), E=origin+1*dir(150), F=1*dir(30);draw(D--E--F--cycle);