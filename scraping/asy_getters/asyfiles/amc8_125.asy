settings.outformat="svg";
import olympiad;
unitsize(15);

for (int i = -4; i <= 4; ++i){for (int j = -4; j <= 4; ++j){dot((i,j));}}draw((0,-4)--(0,4),linewidth(1));draw((-4,0)--(4,0),linewidth(1));for (int i = -4; i <= 4; ++i){draw((i,-1/3)--(i,1/3),linewidth(0.5));draw((-1/3,i)--(1/3,i),linewidth(0.5));}