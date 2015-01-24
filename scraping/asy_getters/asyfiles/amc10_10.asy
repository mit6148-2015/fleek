settings.outformat="svg";
import olympiad;

unitsize(10mm);defaultpen(linewidth(1pt));for(int i=0; i<=3; ++i){draw((0,i)--(3,i));draw((i,0)--(i,3));}label("$25$",(0.5,0.5));label("$z$",(1.5,0.5));label("$21$",(2.5,0.5));label("$18$",(0.5,1.5));label("$x$",(1.5,1.5));label("$y$",(2.5,1.5));label("$v$",(0.5,2.5));label("$24$",(1.5,2.5));label("$w$",(2.5,2.5));