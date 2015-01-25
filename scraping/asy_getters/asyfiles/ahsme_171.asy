settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1cm);defaultpen(fontsize(10pt)+linewidth(.8pt));fill(Arc((1/3,0),2/3,0,180)--reverse(Arc((-2/3,0),1/3,180,360))--reverse(Arc((0,0),1,0,180))--cycle,mediumgray);draw(unitcircle);draw(Arc((-2/3,0),1/3,360,180));draw(Arc((1/3,0),2/3,0,180));label("$a$",(-2/3,0));label("$b$",(1/3,0));draw((-2/3+1/15,0)--(-1/3,0),EndArrow(4));draw((-2/3-1/15,0)--(-1,0),EndArrow(4));draw((1/3+1/15,0)--(1,0),EndArrow(4));draw((1/3-1/15,0)--(-1/3,0),EndArrow(4));