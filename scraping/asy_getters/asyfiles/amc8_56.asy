settings.outformat="svg"

for (int a=0; a <= 3; ++a){    for (int b=0; b <= 3-a; ++b)    {        fill((a,b)--(a,b+1)--(a+1,b)--cycle,grey);    }}for (int c=0; c <= 3; ++c){    draw((c,0)--(c,4-c),linewidth(1));    draw((0,c)--(4-c,c),linewidth(1));    draw((c+1,0)--(0,c+1),linewidth(1));}label("$8$",(2,0),S); label("$8$",(0,2),W);