settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);pair A=(0,0),B=(1,0),C=(0,1),D=(-1,0),E=(0,.5),F=(sqrt(2)/2,.25);draw(circle(A,1)^^D--B);draw(circle(E,.5)^^circle( F ,.25));label("$A$", D, W);label("$K$", A, S);label("$B$", B, dir(0));label("$L$", E, N);label("$M$",shift(-.05,.05)*F);//Credit to Klaus-Anton for the diagram