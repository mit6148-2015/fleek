settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1inch);defaultpen(linewidth(.8pt)+fontsize(8pt));draw((0,0)--((1/3) + 3*(1/2),0));fill(((1/6) + (1/2),0)--((1/6) + (1/2),(1/2))--((1/6) + 1,(1/2))--((1/6) + 1,0)--cycle, rgb(.7,.7,.7));draw(((1/6),0)--((1/6) + (1/2),0)--((1/6) + (1/2),(1/2))--((1/6),(1/2))--cycle);draw(((1/6) + (1/2),0)--((1/6) + (1/2),(1/2))--((1/6) + 1,(1/2))--((1/6) + 1,0)--cycle);draw(((1/6) + 1,0)--((1/6) + 1,(1/2))--((1/6) + (3/2),(1/2))--((1/6) + (3/2),0)--cycle);draw((2,0)--(2 + (1/3) + (3/2),0));draw(((2/3) + (3/2),0)--((2/3) + 2,0)--((2/3) + 2,(1/2))--((2/3) + (3/2),(1/2))--cycle);draw(((2/3) + (5/2),0)--((2/3) + (5/2),(1/2))--((2/3) + 3,(1/2))--((2/3) + 3,0)--cycle);label("$B$",((1/6) + (1/2),(1/2)),NW);label("$B$",((2/3) + 2 + (1/4),(29/30)),NNE);draw(((1/6) + (1/2),(1/2)+0.05)..(1,.8)..((2/3) + 2 + (1/4)-.05,(29/30)),EndArrow(HookHead,3));fill(((2/3) + 2 + (1/4),(1/4))--((2/3) + (5/2) + (1/10),(1/2) + (1/9))--((2/3) + 2 + (1/4),(29/30))--((2/3) + 2 - (1/10),(1/2) + (1/9))--cycle, rgb(.7,.7,.7));draw(((2/3) + 2 + (1/4),(1/4))--((2/3) + (5/2) + (1/10),(1/2) + (1/9))--((2/3) + 2 + (1/4),(29/30))--((2/3) + 2 - (1/10),(1/2) + (1/9))--cycle);