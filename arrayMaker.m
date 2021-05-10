function [x,y]=arrayMaker(countryNum) 
% this function returns the year and rate array of all the data points 
% of an inputed country 
table = table2array(readtable('theData.xlsx')); % edited data 
[row,col]=size(table);
x=[];
y=[];
counter=1;
for iCnt=2:col
    if table(countryNum,iCnt)~= 0
        x(counter)= table(1,iCnt); % lines up with the year
        y(counter)= table(countryNum,iCnt); % lines up with the rate
        counter=counter+1;
    end
end
end