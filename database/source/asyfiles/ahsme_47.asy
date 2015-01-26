settings.outformat="svg";
import olympiad;
unitsize(15);

real t=pi/8;real u=7*pi/12;real v=13*pi/12;real ct=cos(t);real st=sin(t);real cu=cos(u);real su=sin(u);draw(unitcircle);draw((ct,st)--(-ct,st)--(cos(v),sin(v)));draw((cu,su)--(cu,st));label("A",(-ct,st),W);label("B",(ct,st),E);label("M",(cu,su),N);label("P",(cu,st),S);label("C",(cos(v),sin(v)),W);//Credit to Zimbalono for the diagram