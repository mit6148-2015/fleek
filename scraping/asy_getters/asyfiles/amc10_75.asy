settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1cm);defaultpen(linewidth(.8pt)+fontsize(8pt));fill((2/3,0)--(3,3)--(3,1)--(2,1)--(2,0)--cycle,gray);xaxis("$x$",-0.5,4,EndArrow(HookHead,4));yaxis("$y$",-0.5,4,EndArrow(4));draw((0,1)--(3,1)--(3,3)--(2,3)--(2,0));draw((1,0)--(1,2)--(3,2));draw((2/3,0)--(3,3));label("$(a,0)$",(2/3,0),S);label("$(3,3)$",(3,3),NE);