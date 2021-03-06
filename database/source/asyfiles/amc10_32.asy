settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1.4cm);defaultpen(linewidth(.8pt));dotfactor=3;real r1=1.0, r2=1.8;pair O=(0,0), Z=r1*dir(90), Y=r2*dir(90);pair X=intersectionpoints(Z--(Z.x+100,Z.y), Circle(O,r2))[0];pair[] points={X,O,Y,Z};filldraw(Circle(O,r2),mediumgray,black);filldraw(Circle(O,r1),white,black);dot(points);draw(X--Y--O--cycle--Z);label("$O$",O,SSW,fontsize(10pt));label("$Z$",Z,SW,fontsize(10pt));label("$Y$",Y,N,fontsize(10pt));label("$X$",X,NE,fontsize(10pt));defaultpen(fontsize(8pt));label("$c$",midpoint(O--Z),W);label("$d$",midpoint(Z--Y),W);label("$e$",midpoint(X--Y),NE);label("$a$",midpoint(X--Z),N);label("$b$",midpoint(O--X),SE);