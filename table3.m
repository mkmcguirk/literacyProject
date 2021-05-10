function table3(app)  

%% load data 

data=table2array(readtable('theData.xlsx')); 

%% set year 

year=app.yearEditField.Value ;

 

% edit year so all needed decades can be shown 

if year<1985 

    year=1985 

elseif year>2004 

    year=2004 

end 

 

%% country number

country=findCountry(app.countryDropDown.Value) ;

 

%% find column with desired data 

% array of data 

allyears=data(country,:) 

[leny,h]=size(allyears)

% some years do not have data, if this year does not have data from this

 

for icnt=1:h 

    if year == data(1,icnt)

        colyear=icnt 

    end 

end

 

%% send data to table 

% values 15 and 5 years before the selected year 

 

 

min15=year-15 ;

min5=year-5 ;

priorrange= min15:min5 ;

 

count=0

for icnt=min15:min5

    count=count+1

    tablecell{count,1}=icnt ; 

    

    tablecell{count,2}=data(country, colyear-16+count)

    

    tablecell{count,3}=icnt+10

    

    tablecell{count,4}=data(country, colyear-6+count)

    

    tablecell{count,5}=icnt+20

    

    tablecell{count,6}=data(country, colyear+4+count)

end 

 

[cellrow,cellcol]=size(tablecell) 

 

for icnt=1:cellrow

    for icnt2=1:cellcol

        if tablecell{icnt,icnt2}==0

            tablecell{icnt,icnt2}='  No data' 

        else 

            tablecell{icnt,icnt2}=num2str(tablecell{icnt,icnt2})

        end 

    end

end 

 

app.yearsTable.Data=tablecell 

