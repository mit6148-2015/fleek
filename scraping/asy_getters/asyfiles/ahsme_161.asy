settings.outformat="svg";
import olympiad;
unitsize(15);

// note: diagram deliberately not to scale -- azjpsvoid htick(pair A, pair B, real r){ D(A--B); D(A-(r,0)--A+(r,0)); D(B-(r,0)--B+(r,0)); }size(120); pathpen = linewidth(0.7); pointpen = black+linewidth(3);real min = -0.6, step = 0.5;pair[] A, B; D(unitcircle);for(int i = 0; i < 3; ++i) {A.push(intersectionpoints((-9,min+i*step)--(9,min+i*step),unitcircle)[0]); B.push(intersectionpoints((-9,min+i*step)--(9,min+i*step),unitcircle)[1]);D(D(A[i])--D(B[i]));}MP("10",(A[0]+B[0])/2,N);MP("\sqrt{a}",(A[1]+B[1])/2,N);MP("14",(A[2]+B[2])/2,N);htick((B[1].x+0.1,B[0].y),(B[1].x+0.1,B[2].y),0.06); MP("6",(B[1].x+0.1,B[0].y/2+B[2].y/2),E);