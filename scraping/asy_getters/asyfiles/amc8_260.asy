settings.outformat="svg";
import olympiad;

size(230);defaultpen(linewidth(0.65));pair O=origin;pair[] circum = new pair[12];string[] let = {"$A$","$B$","$C$","$D$","$E$","$F$","$G$","$H$","$I$","$J$","$K$","$L$"};draw(unitcircle);for(int i=0;i<=11;i=i+1){circum[i]=dir(120-30*i);dot(circum[i],linewidth(2.5));label(let[i],circum[i],2*dir(circum[i]));}draw(O--circum[4]--circum[0]--circum[6]--circum[8]--cycle);label("$x$",circum[0],2.75*(dir(circum[0]--circum[4])+dir(circum[0]--circum[6])));label("$y$",circum[6],1.75*(dir(circum[6]--circum[0])+dir(circum[6]--circum[8])));label("$O$",O,dir(60));