settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7));path p=origin--(1,0)--(1,1)--(0,1)--cycle;int i,j;for(i=0; i<12; i=i+1) {for(j=0; j<11-i; j=j+1) {draw(shift(i/2+j,i)*p);}}