settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.8));draw(ellipse(origin, 3, 1));fill((3,0)--(3,2)--(-3,2)--(-3,0)--cycle, white);draw((3,0)--(3,16)^^(-3,0)--(-3,16));draw((0, 15)--(3, 12)^^(0, 16)--(3, 13));filldraw(ellipse((0, 16), 3, 1), white, black);draw((-3,11)--(3, 5)^^(-3,10)--(3, 4));draw((-3,2)--(0,-1)^^(-3,1)--(-1,-0.89));draw((0,-1)--(0,15), dashed);draw((3,-2)--(3,-4)^^(-3,-2)--(-3,-4));draw((-7,0)--(-5,0)^^(-7,16)--(-5,16));draw((3,-3)--(-3,-3), Arrows(6));draw((-6,0)--(-6,16), Arrows(6));draw((-2,9)--(-1,9), Arrows(3));label("$3$", (-1.375,9.05), dir(260), fontsize(7));label("$A$", (0,15), N);label("$B$", (0,-1), NE);label("$30$", (0, -3), S);label("$80$", (-6, 8), W);