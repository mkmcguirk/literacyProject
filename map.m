function map(app) 
% coded by mary feeney
% illustrates map and zooms in on selected country 
%% load data 
edudata=readtable('Editeddata.xlsx') ;
edudata=table2cell(edudata) ; 
[row,col]=size(edudata);

%% create map 
% load latitude and longitude data for countries
countries=5:231 ;
LAT=cell2mat(edudata(countries,2));
LON=cell2mat(edudata(countries,3)); 
selectedLat=0;
selectedLong=0;
for iCnt=1:row % zooms in on selected country 
    if strcmp(edudata(iCnt,1),app.countryDropDown.Value)
        selectedLat= cell2mat(edudata(iCnt,2));
        selectedLong=cell2mat(edudata(iCnt,3));
    end
end
% create geobubble 
if selectedLat==0
    geobubble(app.mapPanel,LAT,LON);
else
    geobubble(app.mapPanel,selectedLat,selectedLong); 
    % zooms in on selected one 
end



