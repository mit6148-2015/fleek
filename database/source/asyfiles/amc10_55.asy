settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(5mm);defaultpen(linewidth(.8pt)+fontsize(8pt));real h=3*sqrt(2)/2;pair O0=(0,0), O1=(h,h), O2=(-h,h), O3=(-h,-h), O4=(h,-h);pair X=O0+2*dir(30), Y=O2+dir(45);draw((-h-1,-h-1)--(-h-1,h+1)--(h+1,h+1)--(h+1,-h-1)--cycle);draw(Circle(O0,2));draw(Circle(O1,1));draw(Circle(O2,1));draw(Circle(O3,1));draw(Circle(O4,1));draw(O0--X);draw(O2--Y);label("$2$",midpoint(O0--X),NW);label("$1$",midpoint(O2--Y),SE);