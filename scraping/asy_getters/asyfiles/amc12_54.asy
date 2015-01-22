settings.outformat="svg";
import olympiad;

unitsize(4mm);defaultpen(linewidth(.8)+fontsize(8));draw(Circle((0,0),4));path mat=(-2.687,-1.5513)--(-2.687,1.5513)--(-3.687,1.5513)--(-3.687,-1.5513)--cycle;draw(mat);draw(rotate(60)*mat);draw(rotate(120)*mat);draw(rotate(180)*mat);draw(rotate(240)*mat);draw(rotate(300)*mat);label("$x$",(-2.687,0),E);label("$1$",(-3.187,1.5513),S);