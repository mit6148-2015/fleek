settings.outformat="svg"

pair A=(-2,0), O=origin, C=(2,0);path X=Arc(O,2,0,180), Y=Arc((-1,0),1,180,0), Z=Arc((1,0),1,180,0), N=X..Y..Z..cycle;filldraw(N, black, black);draw(reflect(A,C)*N);draw(A--C, dashed);label("A",A,W);label("C",C,E);label("O",O,SE);dot((-1,0));dot(O);dot((1,0));label("1",(-1,0),NE);label("1",(1,0),NW);