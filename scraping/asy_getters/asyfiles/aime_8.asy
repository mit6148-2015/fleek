settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10));size(250);draw(shift(0, sqrt(3)+1)*scale(2)*rotate(45)*polygon(4));draw(shift(-sqrt(3)*(sqrt(3)+1)/2, -(sqrt(3)+1)/2)*scale(2)*rotate(165)*polygon(4));draw(shift(sqrt(3)*(sqrt(3)+1)/2, -(sqrt(3)+1)/2)*scale(2)*rotate(285)*polygon(4));filldraw(scale(2)*polygon(6), white, black);pair X=(2,0)+sqrt(2)*dir(75), Y=(-2,0)+sqrt(2)*dir(105), Z=(2*dir(300))+sqrt(2)*dir(225);pair[] roots={2*dir(0), 2*dir(60), 2*dir(120), 2*dir(180), 2*dir(240), 2*dir(300)};draw(roots[0]--X--roots[1]);label("$B$", centroid(roots[0],X,roots[1]));draw(roots[2]--Y--roots[3]);label("$B$", centroid(roots[2],Y,roots[3]));draw(roots[4]--Z--roots[5]);label("$B$", centroid(roots[4],Z,roots[5]));label("$A$", (1+sqrt(3))*dir(90));label("$A$", (1+sqrt(3))*dir(210));label("$A$", (1+sqrt(3))*dir(330));draw(shift(-10,0)*scale(2)*polygon(4));draw((sqrt(2)-10,0)--(-10,sqrt(2)));label("$A$", (-10,0));label("$B$", centroid((sqrt(2)-10,0),(-10,sqrt(2)),(sqrt(2)-10, sqrt(2))));