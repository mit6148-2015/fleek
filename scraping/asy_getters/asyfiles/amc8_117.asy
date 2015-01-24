settings.outformat="svg";
import olympiad;

for (int a = 0; a < 5; ++a){for (int b = 0; b < 5; ++b){dot((a,b));}}draw((0,3)--(0,4)--(1,3)--(1,2)--cycle);draw((2,1)--(4,2)--(3,1)--(3,0)--cycle);label("I",(0.4,3),E);label("II",(2.9,1),W);