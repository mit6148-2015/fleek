settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(15mm);defaultpen(linewidth(.8pt)+fontsize(8pt));pair Ap=(0,0), Bp=(1,0), Cp=(2,0), Dp=(3,0), Gp=dir(60);pair Fp=shift(Gp)*Bp, Ep=shift(Gp)*Cp;pair Hp=shift(Gp)*Gp, Ip=shift(Gp)*Fp;pair Jp=shift(Gp)*Hp;pair[] points={Ap,Bp,Cp,Dp,Ep,Fp,Gp,Hp,Ip,Jp};draw(Ap--Dp--Jp--cycle);draw(Gp--Bp--Ip--Hp--Cp--Ep--cycle);for(pair p : points){fill(circle(p, 0.07),white);}pair[] Cn=new pair[5];Cn[0]=centroid(Ap,Bp,Gp);Cn[1]=centroid(Gp,Bp,Fp);Cn[2]=centroid(Bp,Fp,Cp);Cn[3]=centroid(Cp,Fp,Ep);Cn[4]=centroid(Cp,Ep,Dp);label("$1$",Cn[0]);label("$2$",Cn[1]);label("$3$",Cn[2]);label("$4$",Cn[3]);label("$5$",Cn[4]);for (pair p : Cn){draw(circle(p,0.1));}