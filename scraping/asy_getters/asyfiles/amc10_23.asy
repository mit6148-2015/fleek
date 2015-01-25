settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(8mm); defaultpen(linewidth(.8pt)+fontsize(6pt)); pair C=dir(22.5), B=dir(67.5), A=dir(112.5), H=dir(157.5), G=dir(202.5), F=dir(247.5), E=dir(292.5), D=dir(337.5); draw(A--B--C--D--E--F--G--H--cycle); label("$A$",A,NNW); label("$B$",B,NNE); label("$C$",C,ENE); label("$D$",D,ESE); label("$E$",E,SSE); label("$F$",F,SSW); label("$G$",G,WSW); label("$H$",H,WNW);