function barGraph(app)
myRow=findCountry(app.countryDropDown.Value);
[a,b]= arrayMaker(myRow);
aLen=length(a);
bLen=length(b);
x=[1970,1980,1990,2000,2010];
y=zeros(1,5);
% for 1970's
average70=0;
counter70=0;
for iCnt=1:aLen
    if a(iCnt)>=1970 && a(iCnt)<1980 && b(iCnt) ~= 0
        disp(num2str(b(iCnt)));
        average70=average70+b(iCnt);
        counter70=counter70+1;
    end
end
y(1)= average70/counter70;
% for 1980's
average80=0;
counter80=0;
for iCnt=1:aLen
    if a(iCnt)>=1980 && a(iCnt)<1990 && b(iCnt) ~= 0
        average80=average80+b(iCnt);
        counter80=counter80+1;
    end
end
y(2)=average80/counter80;
% for 1990's
average90=0;
counter90=0;
for iCnt=1:aLen
    if a(iCnt)>=1990 && a(iCnt)<2000 && b(iCnt) ~= 0
        average90=average90+b(iCnt);
        counter90=counter90+1;
    end
end
y(3)= average90/counter90;
% for 2000's
average2000=0;
counter2000=0;
for iCnt=1:aLen
    if a(iCnt)>=2000 && a(iCnt)<2010 && b(iCnt) ~= 0
        average2000=average2000+b(iCnt);
        counter2000=counter2000+1;
    end
end
y(4)= average2000/counter2000;
% for 2010's
average2010=0;
counter2010=0;
for iCnt=1:aLen
    if a(iCnt)>=2010 && b(iCnt) ~= 0
        average2010=average2010+b(iCnt);
        counter2010=counter2010+1;
    end
end
y(5)= average2010/counter2010;
bar(app.barAxes,x,y);
xlabel(app.barAxes,'Decade');
ylabel(app.barAxes,'Literacy Rate %');
title(app.barAxes,['Decade Data for ',app.countryDropDown.Value]);
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


