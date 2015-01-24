settings.outformat="svg";
import olympiad;

size(250);real x=sqrt(3);int i;draw(origin--(14,0)--(14,2+2x)--(0,2+2x)--cycle);for(i=0; i<7; i=i+1) {draw(Circle((2*i+1,1), 1)^^Circle((2*i+1,1+2x), 1));}for(i=0; i<6; i=i+1) {draw(Circle((2*i+2,1+x), 1));}