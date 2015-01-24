settings.outformat="svg";
import olympiad;

unitsize(2.5mm);defaultpen(linewidth(.8pt)+fontsize(12pt));dotfactor=3;pair O1=(0,0), O2=(12,0);path C1=Circle(O1,8), C2=Circle(O2,6);pair P=intersectionpoints(C1,C2)[0];path C3=Circle(P,sqrt(130));pair Q=intersectionpoints(C3,C1)[0];pair R=intersectionpoints(C3,C2)[1];draw(C1);draw(C2);draw(O2--O1);dot(O1);dot(O2);draw(Q--R);label("$Q$",Q,N);label("$P$",P,dir(80));label("$R$",R,E);label("12",waypoint(O1--O2,0.4),S);