settings.outformat="svg";
import olympiad;

unitsize(.3cm);defaultpen(linewidth(.8pt));path c=Circle((0,2),1);filldraw(Circle((0,0),3),grey,black);filldraw(Circle((0,0),1),white,black);filldraw(c,white,black);filldraw(rotate(60)*c,white,black);filldraw(rotate(120)*c,white,black);filldraw(rotate(180)*c,white,black);filldraw(rotate(240)*c,white,black);filldraw(rotate(300)*c,white,black);