settings.outformat="svg";
import olympiad;
unitsize(15);

size(8cm);draw((0,0)--(480,0),linetype("3 4"));filldraw(circle((8,0),8),black);draw((0,0)..(100,-100)..(200,0));draw((200,0)..(260,60)..(320,0));draw((320,0)..(400,-80)..(480,0));draw((100,0)--(150,-50sqrt(3)),Arrow(size=4));draw((260,0)--(290,30sqrt(3)),Arrow(size=4));draw((400,0)--(440,-40sqrt(3)),Arrow(size=4));label("$R_1$",(100,0)--(150,-50sqrt(3)), W, fontsize(10)); label("$R_2$",(260,0)--(290,30sqrt(3)), W, fontsize(10)); label("$R_3$",(400,0)--(440,-40sqrt(3)), W, fontsize(10)); filldraw(circle((8,0),8),black);label("$A$",(0,0),W,fontsize(10));