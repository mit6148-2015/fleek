settings.outformat="svg";
import olympiad;
unitsize(15);

for (int a = 0; a < 7; ++a){for (int b = 0; b < 8; ++b){dot((a,b));}}draw((3,0)--(0,5)--(3,7)--(6,5)--cycle);