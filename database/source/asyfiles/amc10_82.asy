settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(10mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair A=(0,1), B=(1,0), C=(1+sqrt(2),0), D=(2+sqrt(2),1), E=(2+sqrt(2),1+sqrt(2)), F=(1+sqrt(2),2+sqrt(2)), G=(1,2+sqrt(2)), H=(0,1+sqrt(2));draw(A--B--C--D--E--F--G--H--cycle);draw(A--D);draw(B--G);draw(C--F);draw(E--H);