settings.outformat="svg";
import olympiad;

size(100);defaultpen(linewidth(0.7));int i;for(i=0; i<4; i=i+1) {draw((0,2*i)--(6,2*i)^^(2*i,0)--(2*i,6));}label("$x$", (1,5));label("$1$", (1,3));label("$19$", (3,5));label("$96$", (5,5));