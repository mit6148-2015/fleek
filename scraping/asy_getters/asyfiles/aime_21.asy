settings.outformat="svg";
import olympiad;

int x=101, y=3*floor(x/4);draw(Arc(origin, 1, 360*(y-3)/x, 360*(y+4)/x));int i;for(i=y-2; i<y+4; i=i+1) {dot(dir(360*i/x));}label("3", dir(360*(y-2)/x), dir(360*(y-2)/x));label("2", dir(360*(y+1)/x), dir(360*(y+1)/x));label("1", dir(360*(y+3)/x), dir(360*(y+3)/x));