settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));pair C=origin, N=dir(0), B=dir(20), A=dir(135), M=dir(180), P=(3/7)*dir(C--N);draw((0,0)--(1,sqrt(3))--(2,0)--(3,sqrt(3))--(4,0)--(5,sqrt(3))--(6,0));draw((1,0)--(2,sqrt(3))--(3,0)--(4,sqrt(3))--(5,0));draw((-1.5,0)--(7.5,0));