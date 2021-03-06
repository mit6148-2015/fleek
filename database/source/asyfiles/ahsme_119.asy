settings.outformat="svg";
import olympiad;
unitsize(15);

real xscl = 1.2;int[] x = {0,1,2,4,5},y={0,1,3,4,5};for(int a:x){for(int b:y) {dot((a*xscl,b));}}for(int a:x) {pair prev = (a,y[0]);for(int i = 1;i<y.length;++i) {pair p = (a,y[i]);pen pen = linewidth(.7);if(y[i]-prev.y!=1){ pen+=dotted;}draw((xscl*prev.x,prev.y)--(xscl*p.x,p.y),pen);prev = p;}}for(int a:y) {pair prev = (x[0],a);for(int i = 1;i<x.length;++i) {pair p = (x[i],a);pen pen = linewidth(.7);if(x[i]-prev.x!=1){ pen+=dotted;}draw((xscl*prev.x,prev.y)--(p.x*xscl,p.y),pen);prev = p;}}path lblx = (0,-.7)--(5*xscl,-.7);draw(lblx);label("$10$",lblx);path lbly = (5*xscl+.7,0)--(5*xscl+.7,5);draw(lbly);label("$20$",lbly);