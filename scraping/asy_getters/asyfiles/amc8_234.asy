settings.outformat="svg";
import olympiad;

import three;real d=11/102;defaultpen(fontsize(8));defaultpen(linewidth(0.8));currentprojection=orthographic(1,8/15,7/15);draw(unitcube, white, thick(), nolight);void f(real x) {draw((0,1,x)--(1,1,x)--(1,0,x));}f(d);f(1/6);f(1/2);label("A", (1,0,3/4), W);label("B", (1,0,1/3), W);label("C", (1,0,1/6-d/4), W);label("D", (1,0,d/2), W);label("1/2", (1,1,3/4), E);label("1/3", (1,1,1/3), E);label("1/17", (0,1,1/6-d/4), E);