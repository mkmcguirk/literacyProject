function secondLineGraph(app)
% this one is an extension of lineGraph.m,
% it allows the user to plot a second graph so that they can compare
firstCountry=findCountry(app.countryDropDown.Value);
[a,b]= arrayMaker(firstCountry);
secondCountry=findCountry(app.secondCountry.Value);
[c,d]= arrayMaker(secondCountry);
% plots the two different lines, if applicable 
if size(a)==0 & size(c)==0
     plot(app.plotAxes,0,0);
elseif size (a)==0 & size(c)~=0
     plot(app.plotAxes,c,d,'m-');  
elseif size (a)~=0 & size(c)==0
     plot(app.plotAxes,a,b,'b-');
elseif size (a)~=0 & size(c)~=0
        plot(app.plotAxes,a,b,'b-',...
            c,d,'m-');
end  
        
xlabel(app.plotAxes,'Year');
ylabel(app.plotAxes,'Literacy Rate %');
title(app.plotAxes,['Data for ',app.countryDropDown.Value, ' and ', app.secondCountry.Value]);
legend(app.plotAxes,app.countryDropDown.Value, app.secondCountry.Value, 'Location', 'Northwest')
end