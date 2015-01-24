settings.outformat="svg";
import olympiad;

size(75);pair A= (1.5,9) ,B= (3,6) ,C= (4.5,6) ,D= (6,9) ,E= (7.5,15) ;draw((0,-1)--(0,16));draw((-1,0)--(16,0));dot(A^^B^^C^^D^^E);label("$A$", (0,8), W);label("$C$", (8,0), S);