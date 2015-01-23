settings.outformat="svg"

defaultpen(linewidth(0.8));defaultpen(fontsize(8));draw(Circle(origin, 2));draw(Circle((-1,0), 1));draw(Circle((6/9, 8/9), 8/9));draw(Circle((6/9, -8/9), 8/9));label("$A$", (-1.2, -0.2), NE);label("$B$", (6/9, 7/9), N);label("$C$", (6/9, -7/9), S);label("$D$", 2*dir(110), dir(110));