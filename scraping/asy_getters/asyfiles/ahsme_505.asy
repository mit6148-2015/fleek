settings.outformat="svg"

for (int i=0; i<9; ++i) {draw(dir(10+40*i)--dir(50+40*i));}draw(dir(50) -- dir(90));label("$a$", dir(50) -- dir(90), N);draw(dir(10) -- dir(90));label("$b$", dir(10) -- dir(90), SW);draw(dir(-70) -- dir(90));label("$d$", dir(-70) -- dir(90), E);//Credit to MSTang for the diagram