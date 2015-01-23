settings.outformat="svg"

for(int i = 0; i < 6; ++i){ for(int j = 0; j < 6; ++j){  draw(sqrt(3)*dir(60*i+30)+dir(60*j)--sqrt(3)*dir(60*i+30)+dir(60*j+60)); }}draw(2*dir(60)--2*dir(180)--2*dir(300)--cycle);label("A",2*dir(180),dir(180));label("B",2*dir(60),dir(60));label("C",2*dir(300),dir(300));