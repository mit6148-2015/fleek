settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));// -- change small square parameters here! -- azjpsreal theta = -100, r = 0.3; pair D2 = (0.3,0.76);// -- end parameters changed -- string[] lbl = {'A', 'B', 'C', 'D'}; draw(unitsquare); draw(shift(D2)*rotate(theta)*scale(r)*unitsquare);for(int i = 0; i < lbl.length; ++i) { pair Q = dir(135-90*i), P = (.5,.5)+Q/2^.5; label("$"+lbl[i]+"'$", P, Q); label("$"+lbl[i]+"$",D2+rotate(theta)*(r*P), rotate(theta)*Q);}