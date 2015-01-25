settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(0,3)--(3,3)--(3,0)--cycle);draw((0,2)--(2,2)--(2,0)); draw((0,1)--(1,1)--(1,0)); draw((0,0)--(3,3));fill((0,0)--(0,1)--(1,1)--cycle,grey);fill((1,0)--(1,1)--(2,2)--(2,0)--cycle,grey);fill((0,2)--(2,2)--(3,3)--(0,3)--cycle,grey);