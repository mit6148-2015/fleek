settings.outformat="svg"

unitsize(15mm);defaultpen(linewidth(.8pt));path P=(-sqrt(2)/2,1)--(0,1-sqrt(2)/2)--(sqrt(2)/2,1);path Pc=(-sqrt(2)/2,1)--(0,1-sqrt(2)/2)--(sqrt(2)/2,1)--cycle;path S=(-1,-1)--(-1,1)--(1,1)--(1,-1)--cycle;fill(S,gray);for(int i=0;i<4;++i){fill(rotate(90*i)*Pc,white);draw(rotate(90*i)*P);}draw(S);