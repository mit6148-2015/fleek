settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7));fill((2,2)--(2,3)--(3,3)--(3,2)--cycle, mediumgray);int[] array={5, 5, 5, 4, 2, 2, 2, 0};pair[] ex = {(2,3), (2,4), (3,2), (3,3)};draw((3,5)--(7,5)^^(4,4)--(7,4)^^(4,3)--(7,3), linetype("3 3"));draw((4,4)--(4,5)^^(5,2)--(5,5)^^(6,2)--(6,5)^^(7,2)--(7,5), linetype("3 3"));int i, j;for(i=0; i<7; i=i+1) {for(j=0; j<array[i]; j=j+1) {draw((i,j+1)--(i,j)--(i+1,j));}draw((i,array[i])--(i+1,array[i]));if(array[i]>array[i+1]) {draw((i+1,array[i])--(i+1,array[i+1]));}}for(i=0; i<4; i=i+1) {draw(ex[i]--(ex[i].x+1, ex[i].y+1), linewidth(1.2));draw((ex[i].x+1, ex[i].y)--(ex[i].x, ex[i].y+1), linewidth(1.2));}