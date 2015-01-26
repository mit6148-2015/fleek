settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(0.3 cm);pair F, H, M, O;F = (0,0);H = (0,5);O = (11,5);M = (11,0);draw(H--O--M--F--cycle);label("$F$", F, SW);label("$H$", H, NW);label("$M$", M, SE);label("$O$", O, NE);