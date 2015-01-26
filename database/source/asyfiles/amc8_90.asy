settings.outformat="svg";
import olympiad;
unitsize(15);

pair H,I,J,K,L;H = (0,0); I = 10*dir(70); J = I + 10*dir(290); K = J + 5*dir(110); L = J + 5*dir(0);draw(H--I--J--cycle);draw(K--L--J);draw(arc((0,0),dir(70),(1,0),CW)); label("$70^\circ$",dir(35),NE);draw(arc(I,I+dir(250),I+dir(290),CCW)); label("$40^\circ$",I+1.25*dir(270),S);label("$1$",J+0.25*dir(162.5),NW); label("$2$",J+0.25*dir(17.5),NE);label("$3$",L+dir(162.5),WNW); label("$4$",K+dir(-52.5),SE);