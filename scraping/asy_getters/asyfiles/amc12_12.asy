settings.outformat="svg";
import olympiad;
unitsize(15);

//Choice Asize(100);defaultpen(linewidth(0.7)+fontsize(8));real end=4.5;draw((-end,0)--(end,0), EndArrow(5));draw((0,-end)--(0,end), EndArrow(5));real ticks=0.2, four=3.7, r=0.1;draw((1,ticks)--(1,-ticks)^^(-1,ticks)--(-1,-ticks)^^(four,ticks)--(four,-ticks)^^(-four,ticks)--(-four,-ticks));label("$x$", (4,0), N);label("$y$", (0,4), W);label("$-4$", (-4,-ticks), S);label("$-1$", (-1,-ticks), S);label("$1$", (1,-ticks), S);label("$4$", (4,-ticks), S);real f(real x) {return 0.101562 x^4+0.265625 x^3+0.0546875 x^2-0.109375 x+0.125;}real g(real x) {return 0.0625 x^4+0.0520833 x^3-0.21875 x^2-0.145833 x-2.5;}draw(graph(f,-four, four), heavygray);draw(graph(g,-four, four), black);clip((-end-r,-end-r)--(-end-r, end+r)--(end+r,end+r)--(end+r, -end-r)--cycle);label("$\textbf{(A)}$", (-5,4.5));