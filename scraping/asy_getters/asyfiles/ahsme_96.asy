settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, B=(12,7), C=(12,0), M=12*dir(A--B), N=B+B.y*dir(B--A);real r=degrees(B);draw(A--B--C--cycle^^Arc(A,12,0,r)^^Arc(B,B.y,180+r,270));pair point=incenter(A,B,C);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$M$", M, dir(point--M));label("$N$", N, dir(point--N));label("$12$", (6,0), S);label("$5$", (12,3.5), E);