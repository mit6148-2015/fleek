settings.outformat="svg";
import olympiad;

defaultpen(linewidth(.8pt));dotfactor=4;dot(origin);dot((12,0));dot((12,1));dot((9,1));dot((9,7));dot((7,7));dot((7,10));dot((3,10));dot((3,8));dot((0,8));draw(origin--(12,0)--(12,1)--(9,1)--(9,7)--(7,7)--(7,10)--(3,10)--(3,8)--(0,8)--cycle);label("$8$",midpoint(origin--(0,8)),W);label("$2$",midpoint((3,8)--(3,10)),W);label("$12$",midpoint(origin--(12,0)),S);