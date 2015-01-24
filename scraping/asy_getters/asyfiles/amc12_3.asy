settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(7));size(250);real f(real x) {real y=1/4;return 0.2125(x*y)^4-0.625(x*y)^3-1.6125(x*y)^2+0.325(x*y)+5.3;}draw(graph(f,-10.5,19.4));draw((-13,0)--(22,0)^^(0,-10.5)--(0,15));int i;filldraw((-13,10.5)--(22,10.5)--(22,20)--(-13,20)--cycle,white, white);for(i=-3; i<6; i=i+1) {if(i!=0) {draw((4*i,0)--(4*i,-0.2));label(string(i), (4*i,-0.2), S);}}for(i=-5; i<6; i=i+1){if(i!=0) {draw((0,2*i)--(-0.2,2*i));label(string(2*i), (-0.2,2*i), W);}}label("0", origin, SE);