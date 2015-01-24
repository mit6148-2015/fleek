settings.outformat="svg";
import olympiad;

unitsize(3mm);defaultpen(linewidth(0.7)+fontsize(8));filldraw(Circle((0,0),5),grey,black);filldraw(Circle((-2,0),3),white,black);filldraw(Circle((3,0),2),white,black);dot((-2,0));dot((3,0));draw((-2,0)--(1,0));draw((3,0)--(5,0));label("$3$",(-0.5,0),N);label("$2$",(4,0),N);