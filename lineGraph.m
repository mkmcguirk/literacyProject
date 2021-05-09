function lineGraph(app)
myRow=findCountry(app.countryDropDown.Value);
[x,y]= arrayMaker(myRow);
if size(x)==0
    plot(app.plotAxes,0,0);
else
    plot(app.plotAxes,x,y,'b-');
end
%xlabel(app.barAxes,'Year');
%ylabel(app.barAxes,'Literacy Rate %');
%title(app.barAxes,['Data for ',app.countryDropDown.Value]);
end