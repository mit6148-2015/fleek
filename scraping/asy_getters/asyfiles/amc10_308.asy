settings.outformat="svg"

defaultpen(black+linewidth(0.7));size(7cm);real t=2^0.5;D((0,0)--(4*t,0)--(2*t,8)--cycle, black);D(CR((2*t,2),2), black);D(CR((2*t,5),1), black);dot(origin^^(4t,0)^^(2t,8));label("B", (0,0), SW);label("C", (4*t,0), SE);label("A", (2*t,8), N);D((2*t,2)--(2*t,4), black); D((2*t,5)--(2*t,6), black);MP('2', (2*t,3), W); MP('1',(2*t, 5.5), W);