settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.7));real alpha=5.797939254, x=71.191836;int i;for(i=0; i<5; i=i+1) {real r=8*(sqrt(6)/2)^i;draw(Circle((x+r)*dir(alpha), r));x=x+2r;}real x=71.191836+40+20*sqrt(6), r=18;pair A=tangent(origin, (x+r)*dir(alpha), r, 1), B=tangent(origin, (x+r)*dir(alpha), r, 2);pair A1=300*dir(origin--A), B1=300*dir(origin--B);draw(B1--origin--A1);pair X=(69,-5), X1=reflect(origin, (x+r)*dir(alpha))*X,Y=(200,-5), Y1=reflect(origin, (x+r)*dir(alpha))*Y,Z=(130,0), Z1=reflect(origin, (x+r)*dir(alpha))*Z;clip(X--Y--Y1--X1--cycle);label("$L_2$", Z, S);label("$L_1$", Z1, dir(2*alpha)*dir(90));