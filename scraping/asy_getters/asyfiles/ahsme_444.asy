settings.outformat="svg"

path anglemark2(pair A, pair B, pair C, real t=8, bool flip=false){    pair M,N;    path mark;    M=t*0.03*unit(A-B)+B;    N=t*0.03*unit(C-B)+B;    if(flip)        mark=Arc(B,t*0.03,degrees(C-B)-360,degrees(A-B));    else        mark=Arc(B,t*0.03,degrees(A-B),degrees(C-B));    return mark;}unitsize(1.5cm);defaultpen(linewidth(.8pt)+fontsize(8pt));pair P=(0,0), R=(3,2), Q=(4,0);pair S0=bisectorpoint(P,R,Q);pair Sp=extension(P,Q,S0,R);pair D0=bisectorpoint(R,Sp), Np=midpoint(R--Sp);pair D=extension(Np,D0,P,Q), M=extension(Np,D0,P,R);draw(P--R--Q);draw(R--Sp);draw(P--D--M);draw(anglemark2(Sp,P,R,17));label("$p$",P+(0.35,0.1));draw(anglemark2(R,Q,P,11));label("$q$",Q+(-0.17,0.1));draw(anglemark2(R,Np,D,8,true));label("$n$",Np+(+0.12,0.07));draw(anglemark2(R,M,D,13,true));label("$m$",M+(+0.25,0.03));draw(anglemark2(M,D,P,29));label("$d$",D+(-0.75,0.095));pen f=fontsize(10pt);label("$R$",R,N,f);label("$P$",P,S,f);label("$S$",Sp,S,f);label("$Q$",Q,S,f);label("$D$",D,S,f);