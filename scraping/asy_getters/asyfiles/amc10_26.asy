settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(6mm);defaultpen(linewidth(.8pt));for(int i=0; i<=5; ++i){draw((0,i)--(5,i));draw((i,0)--(i,5));}fill((2,2)--(2,3)--(3,3)--(3,2)--cycle);