function barGraph(app)
myRow=findCountry(app.countryDropDown.Value);
[x,y]= arrayMaker(myRow);
bar(app.barAxes,x,y);
end


% %% bar graph 
% 
% % find averages for each demographic  
% 
% 
% % Europe and Central Asia row 235 
% 
% ECA=cell2mat(edudata(235,7:end))
% ECAtot=0
% for i=1:length(ECA) 
%     ECAtot=ECA(i)+ECAtot
% end 
% ECAav=ECAtot/length(ECA) 
% 
% 
% % sub Sahara Africa row 244 
% 
% SSA=cell2mat(edudata(244,7:end))
% SSAtot=0
% for i=1:length(SSA) 
%     SSAtot=SSA(i)+SSAtot
% end 
% SSAav=SSAtot/length(SSA) 
% 
% % Latin America and Carribean row 238 
% 
% LAC=cell2mat(edudata(238,7:end))
% LACtot=0
% for i=1:length(LAC) 
%     LACtot=SSA(i)+LACtot
% end 
% LACav=LACtot/length(LAC ) 
% 
% 
% labels=['Europe and Central Asia','Sub Sahara Africa','Latin America and Carribean'] 
% 
% counts=[ECAav,SSAav,LACav] 
% 
% bar(app.barAxes,counts) 
% set(gca,'xticklabel',labels) 


