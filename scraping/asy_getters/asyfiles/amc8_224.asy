settings.outformat="svg";
import olympiad;

import graph; /* this is a label */Label f; f.p=fontsize(0);xaxis(-0.9,20,Ticks(f, 5.0, 5.0)); yaxis(-0.9,20, Ticks(f, 22.0,5.0)); //real f(real x) { return x;} draw(graph(f,-1,22),black+linewidth(1));label("1", (-1,5), black); label("2", (-1, 10), black);label("3", (-1, 15), black);label("4", (-1, 20), black);dot((5,5), black+linewidth(5));dot((10,10), black+linewidth(5));dot((15, 15), black+linewidth(5));dot((20,20), black+linewidth(5));label("MINUTES", (11,-5), S);label(rotate(90)*"MILES", (-5,11), W);