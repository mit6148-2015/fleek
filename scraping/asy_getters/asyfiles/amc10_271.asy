settings.outformat="svg"

unitsize(3mm);defaultpen(linewidth(0.8pt));path p1=(0,0)--(3,0)--(3,3)--(0,3)--(0,0);path p2=(0,1)--(1,1)--(1,0);path p3=(2,0)--(2,1)--(3,1);path p4=(3,2)--(2,2)--(2,3);path p5=(1,3)--(1,2)--(0,2);path p6=(1,1)--(2,2);path p7=(2,1)--(1,2);path[] p=p1^^p2^^p3^^p4^^p5^^p6^^p7;for(int i=0; i<3; ++i){for(int j=0; j<3; ++j){draw(shift(3*i,3*j)*p);}}