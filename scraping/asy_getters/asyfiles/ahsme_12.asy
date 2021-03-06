settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2.5cm);real m = 0;real b = 0;pair O = origin;pair X = (-1,0);pair Y = (1,0);pair Q = midpoint(O--X);pair A = (Q.x, -1*sqrt(3)/2);pair B = (Q.x, -1*A.y);pair M = (Q.x + sqrt(3)/2,0);m = (B.y - M.y)/(B.x - M.x);b = (B.y - m*B.x);pair D = intersectionpoint(Circle(O,1),M--(1.5,1.5*m + b));m = (A.y - M.y)/(A.x - M.x);b = (A.y - m*A.x);pair C = intersectionpoint(Circle(O,1),M--(1.5,1.5*m + b));draw(Circle(O,1));draw(Arc(Q,sqrt(3)/2,-90,90));draw(A--B);draw(X--Y);draw(B--D);draw(A--C);draw(A--D);dot(O);dot(M);label("$B$",B,NW);label("$C$",C,NE);label("$Y$",Y,E);label("$D$",D,SE);label("$A$",A,SW);label("$X$",X,W);label("$Q$",Q,SW);label("$O$",O,SW);label("$M$",M,NE+2N);