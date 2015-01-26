settings.outformat="svg";
import olympiad;
unitsize(15);

scale(200);draw(scale(.5)*((-1,-1)--(1,-1)--(1,1)--(-1,1)--cycle));path p = arc((.25,-.5),.25,0,180)--arc((-.25,-.5),.25,0,180);draw(p);p=rotate(90)*p; draw(p);p=rotate(90)*p; draw(p);p=rotate(90)*p; draw(p);draw(scale((sqrt(5)-1)/4)*unitcircle);