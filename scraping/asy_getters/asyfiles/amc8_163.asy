settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.8));size(60);path p=unitsquare;int i=0;draw(shift(3i,0)*(p^^shift(1,0)*p^^shift(0,1)*p^^shift(1,1)*p));path cat=Circle((0.5,0.5), 0.3);draw(shift(0,1)*cat);dot((1.5,0));