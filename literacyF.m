function literacyF(app)
% for the graphs, use gausstool and coastertool apps for reference!
%% load data 
edudata=readtable('Editeddata.xlsx') ;
edudata=table2cell(edudata) ; 
[row,col]=size(edudata);

%% create map 
% load latitude and longitude data for countries
countries=5:231 ;
LAT=cell2mat(edudata(countries,2));
LON=cell2mat(edudata(countries,3)); 

% create geobubble 
geobubble(app.mapPanel,LAT,LON) 

% make colormap 
color_map=[66,238,26;
    235,220,29;
    234,69,30]./255 ;
% empty cell array


year=app.yearEditField.Value ;

yearnum=year-1963 ; 
% fix later to add colors to map: 
% 
% percent=cell2mat(edudata(countries,yearnum))
% 
% percent_color={} ;
% for i=1:226
%     if percent(i)<50 
%         percent_color{i}='0:30' 
%     elseif percent(i)<80 
%         percent_color{i}='30:60'
%     else 
%         percent_color{i}='60:100'
%     end
% end 
% 
% 
% geobubble(app.mapPanel,LAT,LON,'BubbleColorList',color_map,'ColorData',...
%     categorical(percent_color))  
%         

% find row number that correlates to country 
%  
%  for k=7:row 
%     title=(num2str(cell2mat(edudata(k,1)))) ;
%     countrypicked=num2str(app.countryDropDown.Value) ;
%     
%     if strcmp(countrypicked,title)
%         rownum=k
%         disp(k)
%     end 
%  end 
%     if num2str(app.countryDropDown.Value) == num2str(cell2mat(edudata(k,1))) 
%         rownum=k
%     end
   


 
%% create table %% fix this later too 

% fifteenless=yearnum-15 ;
% fifteennmore=yearnum+15 ;
% fiveless=yearnum-5 ;
% fivemore=yearnum+5  ;
%     
%     
% if yearnum<23 
%     tabledata(:,1)='Not Available' ;
%     for ik=fiveless:fivemore-1 
%         tabledata(ik,2)=cell2mat(edudata(rownum,ik)) ;
%     end
%     for ik=fivemore:fifteenmore 
%         tabledata(ik,3)=cell2mat(edudata(rownum,ik)) ;
%     end
% elseif yearnum<42 
%     
%     for ik=fifteenless:fiveless-1 
%         tabledata(ik,1)=cell2mat(edudata(rownum,ik)) ;
%     end 
%     for ik=fiveless:fivemore-1 
%         tabledata(ik,2)=cell2mat(edudata(rownum,ik)) ;
%     end
%     for ik=fivemore:fifteenmore 
%         tabledata(ik,3)=cell2mat(edudata(rownum,ik)) ;
%     end
% else  
%       for ik=fifteenless:fiveless-1 
%         tabledata(ik,1)=cell2mat(edudata(rownum,ik)) ;
%     end 
%     for ik=fiveless:fivemore-1 
%         tabledata(ik,2)=cell2mat(edudata(rownum,ik)) ;
%     end
%     for ik=fivemore:fifteenmore 
%         tabledata(ik,3)='Not available' ;
%     end
%         
% end 
%     
% use random numbers in table for now 
app.yearsTable.Data= [87,88,82;...
    85,89,84;...
    85,88,89;...
    87,89,90;...
    88,93,94;...
    96,92,93;...
    91,94,91;...
    92,95,96;...
    91,97,95;...
    96,96,96]
% 
% 
 
%% bar graph 

% find averages for each demographic  


% Europe and Central Asia row 235 

ECA=cell2mat(edudata(235,7:end))
ECAtot=0
for i=1:length(ECA) 
    ECAtot=ECA(i)+ECAtot
end 
ECAav=ECAtot/length(ECA) 


% sub Sahara Africa row 244 

SSA=cell2mat(edudata(244,7:end))
SSAtot=0
for i=1:length(SSA) 
    SSAtot=SSA(i)+SSAtot
end 
SSAav=SSAtot/length(SSA) 

% Latin America and Carribean row 238 

LAC=cell2mat(edudata(238,7:end))
LACtot=0
for i=1:length(LAC) 
    LACtot=SSA(i)+LACtot
end 
LACav=LACtot/length(LAC ) 


labels=['Europe and Central Asia','Sub Sahara Africa','Latin America and Carribean'] 

counts=[ECAav,SSAav,LACav] 

bar(app.barAxes,counts) 
set(gca,'xticklabel',labels) 


