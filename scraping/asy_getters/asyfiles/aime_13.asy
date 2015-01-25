settings.outformat="svg";
import olympiad;
unitsize(15);

int i;for(i=1; i<5; i=i+1) {draw((0,2*i)--(10,2*i));draw((2*i,0)--(2*i,10));}string[] no={"0", "74", "103", "*", "186"};pair[] yes={(1,1), (3,7), (5,3), (7,9), (9,5)};for(i=0; i<5; i=i+1) {label(no[i], yes[i]);}draw(origin--(10,0)--(10,10)--(0,10)--cycle, linewidth(2));