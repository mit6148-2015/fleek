settings.outformat="svg";
import olympiad;
unitsize(15);

size(100); defaultpen(linewidth(0.7));draw(rotate(18)*polygon(5));real x=0.6180339887;draw(Circle((-x,0), 1));int i;for(i=0; i<5; i=i+1) {dot(origin+1*dir(36+72*i));}label("$B$", origin+1*dir(36+72*0), dir(origin--origin+1*dir(36+72*0)));label("$A$", origin+1*dir(36+72*1), dir(origin--origin+1*dir(36+72)));label("$E$", origin+1*dir(36+72*2), dir(origin--origin+1*dir(36+144)));label("$D$", origin+1*dir(36+72*3), dir(origin--origin+1*dir(36+72*3)));label("$C$", origin+1*dir(36+72*4), dir(origin--origin+1*dir(36+72*4)));