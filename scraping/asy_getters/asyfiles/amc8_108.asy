settings.outformat="svg";
import olympiad;

unitsize(12);draw((0,0)--(20,0)--(1,-10)--(9,5)--(18,-8)--cycle);draw(arc((1,-10),(1+19/sqrt(461),-10+10/sqrt(461)),(25/17,-155/17),CCW));draw(arc((19/3,0),(19/3-8/17,-15/17),(22/3,0),CCW));draw(arc((900/83,-400/83),(900/83+19/sqrt(461),-400/83+10/sqrt(461)),(900/83 - 9/sqrt(97),-400/83 + 4/sqrt(97)),CCW));label(rotate(30)*"$40^\circ$",(2,-8.9),ENE);label("$100^\circ$",(21/3,-2/3),SE);label("$110^\circ$",(900/83,-317/83),NNW);label("$A$",(0,0),NW);