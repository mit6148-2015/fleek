settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.6));size(80);real r=0.5, s=1.5;path p=origin--(1,0)--(1,1)--(0,1)--cycle;draw(p);draw(shift(s,r)*p);draw(shift(s,-r)*p);draw(shift(2s,2r)*p);draw(shift(2s,0)*p);draw(shift(2s,-2r)*p);draw(shift(3s,3r)*p);draw(shift(3s,-3r)*p);draw(shift(3s,r)*p);draw(shift(3s,-r)*p);draw(shift(4s,-4r)*p);draw(shift(4s,-2r)*p);draw(shift(4s,0)*p);draw(shift(4s,2r)*p);draw(shift(4s,4r)*p);