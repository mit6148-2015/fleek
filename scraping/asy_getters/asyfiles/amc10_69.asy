settings.outformat="svg";
import olympiad;

unitsize(6mm);defaultpen(linewidth(.8pt));path p=(1,1)--(-2,1)--(-2,2)--(1,2);draw(p);draw(rotate(90)*p);draw(rotate(180)*p);draw(rotate(270)*p);