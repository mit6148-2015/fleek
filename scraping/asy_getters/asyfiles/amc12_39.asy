settings.outformat="svg";
import olympiad;

unitsize(3mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=3;pair O0=(9,9), O1=(1,1), O2=(3,1), O3=(1,3);pair P0=O0+9*dir(-45), P3=O3+dir(70);pair[] ps={O0,O1,O2,O3};dot(ps);draw(Circle(O0,9));draw(Circle(O1,1));draw(Circle(O2,1));draw(Circle(O3,1));draw(O0--P0,linetype("3 3"));draw(O3--P3,linetype("2 2"));draw((0,0)--(18,0));draw((0,0)--(0,18));label("$r$",midpoint(O0--P0),NE);label("$s$",(-1.5,4));draw((-1,4)--midpoint(O3--P3));