function secondLineGraph(app)
firstCountry=findCountry(app.countryDropDown.Value);
[a,b]= arrayMaker(firstCountry);
secondCountry=findCountry(app.secondCountry.Value);
[c,d]= arrayMaker(secondCountry);
% if size(a)==0 
%     plot(app.plotAxes,0,0);
% else
%     plot(app.plotAxes,a,b,'*-');
% end
% if size(c)==0
%     plot(app.plotAxes,0,0);
% else
%     plot(app.plotAxes,c,d,'o-');
% end
if size(a)==0 & size(c)==0
     plot(app.plotAxes,0,0);
elseif size (a)==0 & size(c)~=0
     plot(app.plotAxes,c,d,'o-');  
elseif size (a)~=0 & size(c)==0
     plot(app.plotAxes,a,b,'*-');
elseif size (a)~=0 & size(c)~=0
        plot(app.plotAxes,a,b,'*-',...
            c,d,'o-');
end  
        
xlabel(app.plotAxes,'Year');
ylabel(app.plotAxes,'Literacy Rate %');
title(app.plotAxes,['Data for ',app.countryDropDown.Value, ' and ', app.secondCountry.Value]);

end