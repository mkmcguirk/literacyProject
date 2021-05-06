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
function table(app)
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
end
% 
% 
 
