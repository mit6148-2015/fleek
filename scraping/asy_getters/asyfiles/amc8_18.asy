settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(12);for(int a=0; a<7; ++a) {  fill((2a,0)--(2a+1,0)--(2a+1,1)--(2a,1)--cycle,black);  draw((2a+1,0)--(2a+2,0)); }for(int b=7; b<15; ++b) {  fill((b,14-b)--(b+1,14-b)--(b+1,15-b)--(b,15-b)--cycle,black); }for(int c=1; c<7; ++c) {  fill((c,c)--(c+1,c)--(c+1,c+1)--(c,c+1)--cycle,black); }for(int d=1; d<6; ++d) {  draw((2d+1,1)--(2d+2,1)); }fill((6,4)--(7,4)--(7,5)--(6,5)--cycle,black); draw((5,4)--(6,4));fill((7,5)--(8,5)--(8,6)--(7,6)--cycle,black); draw((7,4)--(8,4));fill((8,4)--(9,4)--(9,5)--(8,5)--cycle,black); draw((9,4)--(10,4));label("same",(6.3,2.45),N);label("pattern here",(7.5,1.4),N);