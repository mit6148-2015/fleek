settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(4);draw(ellipse((0,-5),20,6));fill((-20,-5)--(20,-5)--(20,5)--(-20,5)--cycle,white);draw(ellipse((0,0),20,6));draw((20,0)--(20,-5));draw((-20,0)--(-20,-5));draw((0,0)--(14,-3*sqrt(51)/5));label("20",(7,-3*sqrt(51)/10),NE);label("5",(-20,-4),E);label("(A)",(0,6),N);draw(ellipse((31,-7),10,3));fill((21,-7)--(41,-7)--(41,7)--(21,7)--cycle,white);draw(ellipse((31,3),10,3));draw((41,3)--(41,-7));draw((21,3)--(21,-7));draw((31,3)--(38,3-3*sqrt(51)/10));label("10",(34.5,3-3*sqrt(51)/20),NE);label("10",(21,-4),E);label("(B)",(31,6),N);draw(ellipse((47,-15.5),5,3/2));fill((42,-15.5)--(42,-15.5)--(42,15.5)--(42,15.5)--cycle,white);draw(ellipse((47,4.5),5,3/2));draw((42,4.5)--(42,-15.5));draw((52,4.5)--(52,-15.5));draw((47,4.5)--(50.5,4.5-3*sqrt(51)/20));label("5",(48.75,4.5-3*sqrt(51)/40),NE);label("10",(42,-6),E);label("(C)",(47,6),N);draw(ellipse((73,-10),20,6));fill((53,-10)--(93,-10)--(93,5)--(53,5)--cycle,white);draw(ellipse((73,0),20,6));draw((53,0)--(53,-10));draw((93,0)--(93,-10));draw((73,0)--(87,-3*sqrt(51)/5));label("20",(80,-3*sqrt(51)/10),NE);label("10",(53,-6),E);label("(D)",(73,6),N);