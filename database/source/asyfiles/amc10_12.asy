settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(3mm);fill((-4,-4)--(-4,4)--(4,4)--(4,-4)--cycle,blue);fill((-2,-2)--(-2,2)--(2,2)--(2,-2)--cycle,red);path onewhite=(-3,3)--(-2,4)--(-1,3)--(-2,2)--(-3,3)--(-1,3)--(0,4)--(1,3)--(0,2)--(-1,3)--(1,3)--(2,4)--(3,3)--(2,2)--(1,3)--cycle;path divider=(-2,2)--(-3,3)--cycle;fill(onewhite,white);fill(rotate(90)*onewhite,white);fill(rotate(180)*onewhite,white);fill(rotate(270)*onewhite,white);