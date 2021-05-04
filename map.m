function map(app)
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
   


 
