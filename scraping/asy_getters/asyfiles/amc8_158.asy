settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.8));size(350);path p=unitsquare;int i;for(i=0; i<5; i=i+1) {draw(shift(3i,0)*(p^^shift(1,0)*p^^shift(0,1)*p^^shift(1,1)*p));}path cat=Circle((0.5,0.5), 0.3);draw(shift(0,1)*cat^^shift(4,1)*cat^^shift(7,0)*cat^^shift(9,0)*cat^^shift(12,1)*cat);dot((1.5,0)^^(5,0.5)^^(8,1.5)^^(10.5,2)^^(12.5,2));label("1", (1,2), N);label("2", (4,2), N);label("3", (7,2), N);label("4", (10,2), N);label("5", (13,2), N);