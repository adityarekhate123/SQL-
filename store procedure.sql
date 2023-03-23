

use project


select * from dbo.data1
where District ='Nashik'



create procedure nashikinfo
as 
begin
select * from dbo.data1 where District ='Nashik'
end

nashikinfo


create procedure impdata
as
begin
select * from data1 where Sex_Ratio between 500 and 800
end

impdata

create procedure districtdata
as 
begin
select * from data1 where district in('Mumbai Suburban' , 'Nashik')
end

districtdata


