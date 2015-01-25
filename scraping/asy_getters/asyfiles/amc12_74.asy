settings.outformat="svg";
import olympiad;
unitsize(15);

fill((0,0)--(25,0)--(25,25)--(0,25)--cycle,grey);for(int i = 0; i < 4; ++i){  for(int j = 0; j < 2; ++j){    fill((6*i+2,11*j+3)--(6*i+5,11*j+3)--(6*i+5,11*j+11)--(6*i+2,11*j+11)--cycle,white);  }}