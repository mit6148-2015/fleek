settings.outformat="svg";
import olympiad;
unitsize(15);

//Choice Bsize(100);defaultpen(linewidth(0.7)+fontsize(8));real end=4.5;draw((-end,0)--(end,0), EndArrow(5));draw((0,-end)--(0,end), EndArrow(5));real ticks=0.2, four=3.7, r=0.1;draw((1,ticks)--(1,-ticks)^^(-1,ticks)--(-1,-ticks)^^(four,ticks)--(four,-ticks)^^(-four,ticks)--(-four,-ticks));label("$x$", (4,0), N);label("$y$", (0,4), W);label("$-4$", (-4,-ticks), S);label("$-1$", (-1,-ticks), S);label("$1$", (1,-ticks), S);label("$4$", (4,-ticks), S);real f(real x) {return 0.541667 x^4+0.458333 x^3-0.510417 x^2-0.927083 x-2;}real g(real x) {return  -0.791667 x^4-0.208333 x^3-0.177083 x^2-0.260417 x-1;}draw(graph(f,-four, four), heavygray);draw(graph(g,-four, four), black);clip((-end-r,-end-r)--(-end-r, end+r)--(end+r,end+r)--(end+r, -end-r)--cycle);label("$\textbf{(B)}$", (-5,4.5));