settings.outformat="svg";
import olympiad;
unitsize(15);

size(150); defaultpen(linewidth(0.7)); pair slant = (2,1); for(int i = 0; i < 4; ++i) draw((0,i)--(3,i)^^(i,0)--(i,3)^^(3,i)--(3,i)+slant^^(i,3)--(i,3)+slant); for(int i = 1; i < 4; ++i)draw((0,3)+slant*i/3--(3,3)+slant*i/3^^(3,0)+slant*i/3--(3,3)+slant*i/3);