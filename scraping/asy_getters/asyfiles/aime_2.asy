settings.outformat="svg";
import olympiad;

import three;size(170);pathpen = black+linewidth(0.65);pointpen = black;currentprojection = perspective(30,-20,10);real s = 6 * 2^.5;triple A=(0,0,0),B=(s,0,0),C=(s,s,0),D=(0,s,0),E=(-s/2,s/2,6),F=(3*s/2,s/2,6);draw(F--B--C--F--E--A--B);draw(A--D--E, dashed); draw(D--C, dashed);label("$2s$", (s/2, s/2, 6), N);label("$s$", (s/2, 0, 0), SW);