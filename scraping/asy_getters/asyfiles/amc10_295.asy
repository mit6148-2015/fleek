settings.outformat="svg"

unitsize(0.8cm);defaultpen(linewidth(.8pt)+fontsize(8pt));real r = 1 + (2/3)*(sqrt(3));pair A = dir(47.5)*(r - 1);pair B = dir(167.5)*(r - 1);pair C = dir(-72.5)*(r - 1);draw(Circle(A,1));draw(Circle(B,1));draw(Circle(C,1));draw(Circle(origin,r));