settings.outformat="svg";
import olympiad;
unitsize(15);

/* AMC8 2002 #20 Problem */draw((0,0)--(10,0)--(5,4)--cycle);draw((2.5,2)--(7.5,2));draw((5,4)--(5,0));fill((0,0)--(2.5,2)--(5,2)--(5,0)--cycle, mediumgrey);label(scale(0.8)*"$X$", (5,4), N);label(scale(0.8)*"$Y$", (0,0), W);label(scale(0.8)*"$Z$", (10,0), E);label(scale(0.8)*"$A$", (2.5,2.2), W);label(scale(0.8)*"$B$", (7.5,2.2), E);label(scale(0.8)*"$C$", (5,0), S);fill((0,-.8)--(1,-.8)--(1,-.95)--cycle, white);