settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(3mm);defaultpen(linewidth(1pt));fill((2,2)--(2,7)--(7,7)--(7,2)--cycle, mediumgray);fill((3,3)--(6,3)--(6,6)--(3,6)--cycle, gray);fill((4,4)--(5,4)--(5,5)--(4,5)--cycle, black);for(real i=0; i<=9; ++i){draw((i,0)--(i,9));draw((0,i)--(9,i));}