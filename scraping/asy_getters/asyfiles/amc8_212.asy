settings.outformat="svg";
import olympiad;
unitsize(15);

filldraw((2.5,2.5)--(0,1)--(1,1)--(1,0)--(2.5,2.5)--(4,0)--(4,1)--(5,1)--(2.5,2.5)--(5,4)--(4,4)--(4,5)--(2.5,2.5)--(1,5)--(1,4)--(0,4)--cycle, gray, black);int i;for(i=0; i<6; i=i+1) {draw((i,0)--(i,5));draw((0,i)--(5,i));}