settings.outformat="svg";
import olympiad;

pointpen = black;pathpen = linewidth(0.7);pen f = fontsize(10);size(5cm);pair B = (0,sqrt(85+42*sqrt(2)));pair A = (B.y,0);pair C = (0,0);pair P = IP(arc(B,7,180,360),arc(C,6,0,90));D(A--B--C--cycle);D(P--A);D(P--B);D(P--C);MP("A",D(A),plain.E,f);MP("B",D(B),plain.N,f);MP("C",D(C),plain.SW,f);MP("P",D(P),plain.NE,f);