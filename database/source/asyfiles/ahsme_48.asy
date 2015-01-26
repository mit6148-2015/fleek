settings.outformat="svg";
import olympiad;
unitsize(15);

real h = 7;real t = asin(6/h)/2;real x = 6-h*tan(t);real y = x*tan(2*t);draw((0,0)--(0,h)--(6,h)--(x,0)--cycle);draw((x,0)--(0,y)--(6,h));draw((6,h)--(6,0)--(x,0),dotted);label("L",(3.75,h/2),W);label("$\theta$",(6,h-1.5),W);draw(arc((6,h),2,270,270-degrees(t)),Arrow(2mm));label("6''",(3,0),S);draw((2.5,-.5)--(0,-.5),Arrow(2mm));draw((3.5,-.5)--(6,-.5),Arrow(2mm));draw((0,-.25)--(0,-.75));draw((6,-.25)--(6,-.75));//Credit to Zimbalono for the diagram