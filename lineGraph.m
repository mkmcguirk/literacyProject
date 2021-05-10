function lineGraph(app)
% coded by mk mcguirk
% plots the first line graph 
myRow=findCountry(app.countryDropDown.Value);
[x,y]= arrayMaker(myRow);
if size(x)==0
    plot(app.plotAxes,0,0);
else
    plot(app.plotAxes,x,y,'b-');
end
end