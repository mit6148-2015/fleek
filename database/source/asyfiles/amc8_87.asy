settings.outformat="svg";
import olympiad;
unitsize(15);

for (int a = 0; a < 5; ++a){    for (int b = 0; b < 4; ++b)    {        dot((a,b));    }}draw((0,0)--(3,2)--(4,3)--cycle);label("$A$",(0,0),SW);label("$B$",(3,2),SE);label("$C$",(4,3),NE);