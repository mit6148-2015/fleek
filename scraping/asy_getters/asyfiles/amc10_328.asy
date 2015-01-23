settings.outformat="svg"

unitsize(6mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;filldraw(Arc((0,0),4,0,180)--cycle,gray,black);filldraw(Circle((0,2),2),white,black);dot((0,2));draw((0,2)--((0,2)+2*dir(60)));label("$2$",midpoint((0,2)--((0,2)+2*dir(60))),SE);