settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);path p=rotate(45)*polygon(4);int i;for(i=0; i<5; i=i+1) {draw(shift(2-(1/2)^(i-1),0)*scale((1/2)^i)*p);}label("$S_1$", (0,-0.75));label("$S_2$", (1,-0.75));label("$S_3$", (3/2,-0.75));label("$\cdots$", (7/4, -3/4));label("$\cdots$", (2.25, 0));