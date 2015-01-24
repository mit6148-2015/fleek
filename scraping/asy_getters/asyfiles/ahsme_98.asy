settings.outformat="svg";
import olympiad;

int i,j;for(i=0; i<5; i=i+1) {for(j=0; j<4; j=j+1) {dot((i,j));}}draw((0,1)--(1,3)--(4,1)--(3,0)--cycle, linewidth(0.7));