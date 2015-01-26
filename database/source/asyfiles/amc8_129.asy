settings.outformat="svg";
import olympiad;
unitsize(15);

size(450);defaultpen(linewidth(0.8));path[] p={origin--(8,8)--(14,8), (0,10)--(4,10)--(14,0), origin--(14,14), (0,14)--(14,14), origin--(7,7)--(14,0)};int i;for(i=0; i<5; i=i+1) {draw(shift(21i,0)*((0,16)--origin--(14,0)));draw(shift(21i,0)*(p[i]));label("Time", (7+21i,0), S);label(rotate(90)*"Volume", (21i,8), W);}label("$A$", (0*21 + 7,-5), S);label("$B$", (1*21 + 7,-5), S);label("$C$", (2*21 + 7,-5), S);label("$D$", (3*21 + 7,-5), S);label("$E$", (4*21 + 7,-5), S);