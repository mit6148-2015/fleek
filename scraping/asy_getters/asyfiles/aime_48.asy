settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);defaultpen(linewidth(0.7));path laceL=(-20,-30)..tension 0.75 ..(-90,-135)..(-102,-147)..(-152,-150)..tension 2 ..(-155,-140)..(-135,-40)..(-50,-4)..tension 0.8 ..origin;path laceR=reflect((75,0),(75,-240))*laceL;draw(origin--(0,-240)--(150,-240)--(150,0)--cycle,gray);for(int i=0;i<=3;i=i+1){path circ1=circle((0,-80*i),5),circ2=circle((150,-80*i),5);unfill(circ1); draw(circ1);unfill(circ2); draw(circ2);}draw(laceL--(150,-80)--(0,-160)--(150,-240)--(0,-240)--(150,-160)--(0,-80)--(150,0)^^laceR,linewidth(1));