settings.outformat="svg";
import olympiad;
unitsize(15);

size(300); pathpen = linewidth(2.5);void chessboard(int a, int b, pair P){  for(int i = 0; i < a; ++i) for(int j = 0; j < b; ++j)   if((i+j) % 2 == 1) fill(shift(P.x+i,P.y+j)*unitsquare,rgb(0.6,0.6,0.6));  D(P--P+(a,0)--P+(a,b)--P+(0,b)--cycle);}chessboard(2,2,(2.5,0));fill(unitsquare,rgb(0.6,0.6,0.6));fill(shift(1,1)*unitsquare,rgb(0.6,0.6,0.6)); chessboard(4,3,(6,0)); chessboard(4,3,(11,0)); MP("\mathrm{Distasteful\ tilings}",(2.25,3),fontsize(12)); /* draw lines */D((0,0)--(2,0)--(2,2)--(0,2)--cycle); D((1,0)--(1,2)); D((2.5,1)--(4.5,1)); D((7,0)--(7,2)--(6,2)--(10,2)--(9,2)--(9,0)--(9,1)--(7,1)); D((8,2)--(8,3)); D((12,0)--(12,2)--(11,2)--(13,2)); D((13,1)--(15,1)--(14,1)--(14,3)); D((13,0)--(13,3));