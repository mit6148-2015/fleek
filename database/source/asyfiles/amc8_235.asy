settings.outformat="svg";
import olympiad;
unitsize(15);

import three;real d=11/102;defaultpen(fontsize(8));defaultpen(linewidth(0.8));currentprojection=orthographic(2,8/15,7/15);int t=0;void f(real x) {path3 r=(t,1,x)--(t+1,1,x)--(t+1,1,0)--(t,1,0)--cycle;path3 f=(t+1,1,x)--(t+1,1,0)--(t+1,0,0)--(t+1,0,x)--cycle;path3 u=(t,1,x)--(t+1,1,x)--(t+1,0,x)--(t,0,x)--cycle;draw(surface(r), white, nolight);draw(surface(f), white, nolight);draw(surface(u), white, nolight);draw((t,1,x)--(t+1,1,x)--(t+1,1,0)--(t,1,0)--(t,1,x)--(t,0,x)--(t+1,0,x)--(t+1,1,x)--(t+1,1,0)--(t+1,0,0)--(t+1,0,x));t=t+1;}f(d);f(1/2);f(1/3);f(1/17);label("D", (1/2, 1, 0), SE);label("A", (1+1/2, 1, 0), SE);label("B", (2+1/2, 1, 0), SE);label("C", (3+1/2, 1, 0), SE);