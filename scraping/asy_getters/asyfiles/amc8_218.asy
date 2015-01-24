settings.outformat="svg";
import olympiad;

import three;defaultpen(linewidth(0.8));real r=0.5;currentprojection=orthographic(1,1/2,1/4);draw(unitcube, white, thick(), nolight);draw(shift(1,0,0)*unitcube, white, thick(), nolight);draw(shift(1,-1,0)*unitcube, white, thick(), nolight);draw(shift(1,0,-1)*unitcube, white, thick(), nolight);draw(shift(2,0,0)*unitcube, white, thick(), nolight);draw(shift(1,1,0)*unitcube, white, thick(), nolight);draw(shift(1,0,1)*unitcube, white, thick(), nolight);