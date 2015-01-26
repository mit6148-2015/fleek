settings.outformat="svg";
import olympiad;
unitsize(15);

fill((0,0)--(20,0)--(20,5)--(0,5)--cycle,lightgray);fill((20,0)--(20+5*sqrt(2),5*sqrt(2))--(20+5*sqrt(2),5+5*sqrt(2))--(20,5)--cycle,lightgray);draw((0,0)--(20,0)--(20,5)--(0,5)--cycle);draw((0,5)--(5*sqrt(2),5+5*sqrt(2))--(20+5*sqrt(2),5+5*sqrt(2))--(20,5));draw((20+5*sqrt(2),5+5*sqrt(2))--(20+5*sqrt(2),5*sqrt(2))--(20,0));draw((5*sqrt(2),5+5*sqrt(2))--(5*sqrt(2),5*sqrt(2))--(5,5),dashed);draw((5*sqrt(2),5*sqrt(2))--(15+5*sqrt(2),5*sqrt(2)),dashed);