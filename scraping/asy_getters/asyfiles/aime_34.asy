settings.outformat="svg";
import olympiad;

size(150);defaultpen(linewidth(0.7));draw((6.5,0)--origin--(0,6.5), Arrows(5));int[] array={3,3,2};int i,j;for(i=0; i<3; i=i+1) {for(j=0; j<array[i]; j=j+1) {draw(Circle((1+2*i,1+2*j),1));}}label("x", (7,0));label("y", (0,7));