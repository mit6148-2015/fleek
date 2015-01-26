settings.outformat="svg";
import olympiad;
unitsize(15);

size(100); defaultpen(linewidth(.8pt)+fontsize(8pt));draw(arc((0,1), 1.2, 25, 214));draw(arc((.951,.309), 1.2, 0, 360));draw(arc((.588,-.809), 1.2, 132, 370));draw(arc((-.588,-.809), 1.2, 75, 300));draw(arc((-.951,.309), 1.2, 96, 228));label("$A$",(0,1),NW); label("$B$",(-1.1,.309),NW); label("$C$",(.951,.309),E); label("$D$",(-.588,-.809),W); label("$E$",(.588,-.809),S);