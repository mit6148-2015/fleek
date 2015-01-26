settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.9pt));real r = 1 + sqrt(2);pair A = dir(45)*(r + 1);pair B = dir(135)*(r + 1);pair C = dir(-135)*(r + 1);pair D = dir(-45)*(r + 1);draw(Circle(origin,1));draw(Circle(A,r));draw(Circle(B,r));draw(Circle(C,r));draw(Circle(D,r));draw(A--(dir(45)*r + A));draw(B--(dir(45)*r + B));draw(C--(dir(45)*r + C));draw(D--(dir(45)*r + D));draw(origin--(dir(25)));label("$r$",midpoint(A--(dir(45)*r + A)), SE);label("$r$",midpoint(B--(dir(45)*r + B)), SE);label("$r$",midpoint(C--(dir(45)*r + C)), SE);label("$r$",midpoint(D--(dir(45)*r + D)), SE);label("$1$",origin,W);