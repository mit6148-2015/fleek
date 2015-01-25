settings.outformat="svg";
import olympiad;
unitsize(15);

size(180);defaultpen(linewidth(0.8));real r=4/5;draw((-1,0)..(-6/7,r/3)..(0,r)..(6/7,r/3)..(1,0),linetype("4 4"));draw((-1,0)--(1,0)^^origin--(0,r));label("$A$",(-1,0),W);label("$B$",(1,0),E);label("$M$",origin,S);label("$C$",(0,r),N);