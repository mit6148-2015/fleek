settings.outformat="svg";
import olympiad;

unitsize(10mm);defaultpen(fontsize(10pt));pen finedashed=linetype("4 4");filldraw((1,1)--(2,1)--(2,2)--(4,2)--(4,3)--(1,3)--cycle,grey,black+linewidth(.8pt));draw((0,1)--(0,3)--(1,3)--(1,4)--(4,4)--(4,3)--(5,3)--(5,2)--(4,2)--(4,1)--(2,1)--(2,0)--(1,0)--(1,1)--cycle,finedashed);draw((0,2)--(2,2)--(2,4),finedashed);draw((3,1)--(3,4),finedashed);label("$1$",(1.5,0.5));draw(circle((1.5,0.5),.17));label("$2$",(2.5,1.5));draw(circle((2.5,1.5),.17));label("$3$",(3.5,1.5));draw(circle((3.5,1.5),.17));label("$4$",(4.5,2.5));draw(circle((4.5,2.5),.17));label("$5$",(3.5,3.5));draw(circle((3.5,3.5),.17));label("$6$",(2.5,3.5));draw(circle((2.5,3.5),.17));label("$7$",(1.5,3.5));draw(circle((1.5,3.5),.17));label("$8$",(0.5,2.5));draw(circle((0.5,2.5),.17));label("$9$",(0.5,1.5));draw(circle((0.5,1.5),.17));