settings.outformat="svg"

size(80); defaultpen(linewidth(0.7)+fontsize(10)); draw(unitcircle);for(int i = 0; i < 5; ++i) { pair P = dir(90+i*72); dot(P); label("$"+string(i+1)+"$",P,1.4*P); }