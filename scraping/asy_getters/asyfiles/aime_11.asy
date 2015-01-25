settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);real a=15, b=5;real x=a*b/(a+b), y=a/((a^2+b^2)/(a*b)+1);pair A=(0,b), B=(a,0), C=origin, X=(y,0), Y=(0, y*b/a), Z=foot(Y, A, B), W=foot(X, A, B);draw(A--B--C--cycle);draw(W--X--Y--Z);draw(shift(-(a+b), 0)*(A--B--C--cycle^^(x,0)--(x,x)--(0,x)));pair point=incenter(A,B,C);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$A$", (A.x-a-b,A.y), dir(point--A));label("$B$", (B.x-a-b,B.y), dir(point--B));label("$C$", (C.x-a-b,C.y), dir(point--C));label("$S_1$", (x/2-a-b, x/2));label("$S_2$", intersectionpoint(W--Y, X--Z));dot(A^^B^^C^^(-a-b,0)^^(-b,0)^^(-a-b,b));