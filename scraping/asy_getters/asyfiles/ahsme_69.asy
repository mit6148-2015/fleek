settings.outformat="svg";
import olympiad;

size(100);import cse5;pathpen=black;pair A1=(0,0), A2=(1,0), A3=(0.5,sqrt(3)/2);D(MP("A_1",A1)--MP("A_2",A2)--MP("A_3",A3,N)--cycle);pair A4=(A1+A2)/2, A5 = (A3+A2)/2, A6 = (A4+A3)/2;D(MP("A_4",A4,S)--MP("A_6",A6,W)--A3);D(A6--MP("A_5",A5,NE)--A4);//Credit to chezbgone2 for the diagram