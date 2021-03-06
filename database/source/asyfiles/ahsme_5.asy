settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(5cm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=3;pair A=(-3*sqrt(3)/32,9/32), B=(3*sqrt(3)/32, 9/32), C=(0,9/16);pair O=(0,3/8);draw((-2/3,9/16)--(2/3,9/16));draw((-2/3,1/2)--(-sqrt(3)/6,1/2)--(0,0)--(sqrt(3)/6,1/2)--(2/3,1/2));draw(Circle(O,3/16));draw((-2/3,0)--(2/3,0));label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$\frac{3}{8}$",O);draw(O+.07*dir(60)--O+3/16*dir(60),EndArrow(3));draw(O+.07*dir(240)--O+3/16*dir(240),EndArrow(3));label("$\frac{1}{2}$",(.5,.25));draw((.5,.33)--(.5,.5),EndArrow(3));draw((.5,.17)--(.5,0),EndArrow(3));label("$x$",midpoint((.5,.5)--(.5,9/16)));draw((.5,5/8)--(.5,9/16),EndArrow(3));label("$60^{\circ}$",(0.01,0.12));dot(A);dot(B);dot(C);