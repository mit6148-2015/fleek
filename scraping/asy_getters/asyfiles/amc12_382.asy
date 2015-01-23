settings.outformat="svg"

unitsize(2.5cm);defaultpen(fontsize(10pt)+linewidth(.8pt));filldraw(Circle((0,.866),.5),grey,black);label("1",(0,.866),S);filldraw(Circle((0,0),1),white,black);draw((-.5,.866)--(.5,.866),linetype("4 4"));clip((-1,0)--(1,0)--(1,2)--(-1,2)--cycle);draw((-1,0)--(1,0));label("2",(0,0),S);