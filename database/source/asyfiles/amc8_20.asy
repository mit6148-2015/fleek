settings.outformat="svg";
import olympiad;
unitsize(15);

for(int a=0; a<12; ++a) {  draw((a,0)--(a,6)); }for(int b=0; b<7; ++b) {  draw((0,b)--(11,b)); }draw((0,6)--(2,6)--(1,4)--cycle,linewidth(1));draw((3,4)--(3,6)--(5,4)--cycle,linewidth(1));draw((0,1)--(3,2)--(6,1)--cycle,linewidth(1));draw((7,4)--(6,6)--(9,4)--cycle,linewidth(1));draw((8,1)--(9,3)--(10,0)--cycle,linewidth(1));