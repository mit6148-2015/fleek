settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(6pt));dotfactor=4;label("$\circ$",(0,1));label("$\circ$",(0.865,0.5));label("$\circ$",(-0.865,0.5));label("$\circ$",(0.865,-0.5));label("$\circ$",(-0.865,-0.5));label("$\circ$",(0,-1));dot((0,1.5));dot((-0.4325,0.75));dot((0.4325,0.75));dot((-0.4325,-0.75));dot((0.4325,-0.75));dot((-0.865,0));dot((0.865,0));dot((-1.2975,-0.75));dot((1.2975,-0.75));draw(Arc((0,1),0.5,210,-30));draw(Arc((0.865,0.5),0.5,150,270));draw(Arc((0.865,-0.5),0.5,90,-150));draw(Arc((0.865,-0.5),0.5,90,-150));draw(Arc((0,-1),0.5,30,150));draw(Arc((-0.865,-0.5),0.5,330,90));draw(Arc((-0.865,0.5),0.5,-90,30));