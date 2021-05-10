function [x,y]=arrayMaker(countryNum)
table = table2array(readtable('theData.xlsx'));
[row,col]=size(table);
x=[];
y=[];
counter=1;
for iCnt=2:col
    if table(countryNum,iCnt)~= 0
        x(counter)= table(1,iCnt);
        y(counter)= table(countryNum,iCnt);
        counter=counter+1;
    end
end
end