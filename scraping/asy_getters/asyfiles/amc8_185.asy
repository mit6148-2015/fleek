settings.outformat="svg";
import olympiad;
unitsize(15);

for ( int i = 1; i <= 7; ++i ){    draw((i,0)--(i,6));}for ( int i = 1; i <= 5; ++i ){    draw((0,i)--(8,i));}draw((-0.5,0)--(8,0), linewidth(1));draw((0,-0.5)--(0,6), linewidth(1));label("$O$", (0,0), SW);label(scale(.85)*rotate(90)*"distance", (0, 3), W);label(scale(.85)*"time", (4, 0), S);dot((1.25, 4.5));label(scale(.85)*"Evelyn", (1.25, 4.8), N);dot((2.5, 2.2));label(scale(.85)*"Briana", (2.5, 2.2), S);dot((4.25,5.2));label(scale(.85)*"Carla", (4.25, 5.2), SE);dot((5.6, 2.8));label(scale(.85)*"Debra", (5.6, 2.8), N);dot((6.8, 1.4));label(scale(.85)*"Angela", (6.8, 1.4), E);