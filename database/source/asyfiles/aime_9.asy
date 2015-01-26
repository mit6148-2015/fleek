settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);pair A=origin, B=(96,0), C=(96,22), D=(0,22), W=(16,22), X=(20,0), Y=(80,0), Z=(76,22), P=(24,11), Q=(72,11);draw(P--X--A--D--W--P--Q--Y--B--C--Z--Q^^W--Z^^X--Y);dot(A^^B^^C^^D^^P^^Q^^W^^X^^Y^^Z);pair point=(48,11);label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, NE);label("$D$", D, NW);label("$P$", P, dir(point--P));label("$Q$", Q, dir(point--Q));label("$W$", W, N);label("$X$", X, S);label("$Y$", Y, S);label("$Z$", Z, N);