settings.outformat="svg"

size(175);defaultpen(linewidth(0.8));path octagon;string labels[]={"A","B","C","D","E","F","G","H","I"};for(int i=0;i<=7;i=i+1){pair vertex=dir(135-45/2-45*i);octagon=octagon--vertex;label("$"+labels[i]+"$",vertex,dir(origin--vertex));}draw(octagon--cycle);dot(origin);label("$J$",origin,dir(0));