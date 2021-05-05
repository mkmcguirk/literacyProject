function lineGraph(app)
myRow=findCountry(app.secondCountry.Value);
[x,y]= arrayMaker(myRow);
% myRow=findCountry(app.secondCountry.Value);
% x=[];
% y=[];
% counter=1;
% for iCnt=2:col
%     if table(myRow,iCnt)~= 0
%         x(counter)= table(1,iCnt);
%         y(counter)= table(myRow,iCnt);
%         counter=counter+1;
%     end
% end
if size(x)==0
    plot(app.plotAxes,0,0);
else
    plot(app.plotAxes,x,y,'b-');
end
end