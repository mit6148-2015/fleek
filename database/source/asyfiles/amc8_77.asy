settings.outformat="svg";
import olympiad;
unitsize(15);

for(int i = -2; i <= 2; ++i){draw((i,0)--(i,3),dashed);}draw((-3,1)--(3,1),dashed);draw((-3,2)--(3,2),dashed);draw((-3,0)--(-3,3)--(3,3)--(3,0)--cycle);dot((-3,0)); label("$A$",(-3,0),SW);dot((-3,3)); label("$B$",(-3,3),NW);dot((0,3)); label("$C$",(0,3),N);dot((3,3)); label("$D$",(3,3),NE);dot((3,0)); label("$E$",(3,0),SE);dot((0,0)); label("start",(0,0),S);label("$\longrightarrow$",(0,-0.75),E);label("$\longleftarrow$",(0,-0.75),W);label("$\textbf{Jane}$",(0,-1.25),W);label("$\textbf{Hector}$",(0,-1.25),E);