settings.outformat="svg";
import olympiad;
unitsize(15);

import three;unitsize(6mm);defaultpen(linewidth(.8pt)+fontsize(10pt));currentprojection=oblique;path3 p1=(0,2,2)--(0,2,0)--(2,2,0)--(2,2,2)--(0,2,2)--(0,0,2)--(2,0,2)--(2,2,2);path3 p2=(2,2,0)--(2,0,0)--(2,0,2);path3 p3=(0,0,2)--(0,2,1)--(2,2,1)--(2,0,2);path3 p4=(2,2,1)--(2,0,0);pen finedashed=linetype("4 4");draw(p1^^p2^^p3^^p4);draw(shift((4,0,0))*p1);draw(shift((4,0,0))*p2);draw(shift((4,0,0))*p3);draw(shift((4,0,0))*p4);draw((4,0,2)--(5,2,2)--(6,0,2),finedashed);draw((5,2,2)--(5,2,0)--(6,0,0),finedashed);label("$W$",(3,0,2));draw((2.7,.3,2)--(2.1,1.9,2),linewidth(.6pt));draw((3.4,.3,2)--(5.9,1.9,2),linewidth(.6pt));label("Figure 1",(1,-0.5,2));label("Figure 2",(5,-0.5,2));