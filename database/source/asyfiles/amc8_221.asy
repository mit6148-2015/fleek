settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.65));real d=90-63.43494882;draw(ellipse((origin), 2, 4));fill((0,4)--(0,-4)--(-8,-4)--(-8,4)--cycle, white);draw(ellipse((-4,0), 2, 4));draw((0,4)--(-4,4));draw((0,-4)--(-4,-4));draw(shift(-2,0)*rotate(-d-5)*ellipse(origin, 1.82, 4.56), linetype("10 10"));draw((-4,4)--(-8,4), dashed);draw((-4,-4)--(-8,-4), dashed);draw((-4,4.3)--(-4,5));draw((0,4.3)--(0,5));draw((-7,4)--(-7,-4), Arrows(5));draw((-4,4.7)--(0,4.7), Arrows(5));label("$8$ cm", (-7,0), W);label("$6$ cm", (-2,4.7), N);