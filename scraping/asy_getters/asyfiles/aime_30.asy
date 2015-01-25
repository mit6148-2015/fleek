settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);int i,j;real r=sqrt(3);for(i=0; i<6; i=i+1) {for(j=0; j<4; j=j+1) {draw(shift(((j*r)*dir(60*i+150)).x, ((j*r)*dir(60*i+150)).y)*shift((4r*dir(60i+30)).x,(4r*dir(60i+30)).y)*polygon(6));}}