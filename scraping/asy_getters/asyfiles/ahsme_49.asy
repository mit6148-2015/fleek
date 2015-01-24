settings.outformat="svg";
import olympiad;

real t=pi/12;real u=8*t;real cu=cos(u);real su=sin(u);draw(unitcircle);draw((cos(-t),sin(-t))--(cos(13*t),sin(13*t)));draw((cu,su)--(cu,-su));label("A",(cos(13*t),sin(13*t)),W);label("B",(cos(-t),sin(-t)),E);label("C",(cu,su),N);label("D",(cu,-su),S);label("E",(cu,sin(-t)),NE);label("2",((cu-1)/2,sin(-t)),N);label("6",((cu+1)/2,sin(-t)),N);label("3",(cu,(sin(-t)-su)/2),E);//Credit to Zimbalono for the diagram