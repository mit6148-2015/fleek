settings.outformat="svg";
import olympiad;
unitsize(15);

/* AMC8 2002 #16 Problem */draw((0,0)--(4,0)--(4,3)--cycle);draw((4,3)--(-4,4)--(0,0));draw((-0.15,0.1)--(0,0.25)--(.15,0.1));draw((0,0)--(4,-4)--(4,0));draw((4,0.2)--(3.8,0.2)--(3.8,-0.2)--(4,-0.2));draw((4,0)--(7,3)--(4,3));draw((4,2.8)--(4.2,2.8)--(4.2,3));label(scale(0.8)*"$Z$", (0, 3), S);label(scale(0.8)*"$Y$", (3,-2));label(scale(0.8)*"$X$", (5.5, 2.5));label(scale(0.8)*"$W$", (2.6,1));label(scale(0.65)*"5", (2,2));label(scale(0.65)*"4", (2.3,-0.4));label(scale(0.65)*"3", (4.3,1.5));