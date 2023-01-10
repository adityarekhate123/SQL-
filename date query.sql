select * from emp3
create table employes
(
  emp_id varchar(3) primary key check(emp_id like 'E%') ,
  Ename varchar(25) not null ,
  DOB date not null,
  DOJ date not null, check(DOB<DOJ),
  salary int  not null check(salary>0)
);

select*from employes;
-- drop table employeees;
insert into employes values('E01','Elish belli','2001-05-03','2015-06-09',61050);
insert into employes values('E02','shreyansh','1999-09-02','2012-03-19',45781);
insert into employes values('E03','reyansh','1991-05-12','2015-06-20',60000);
insert into employes values('E04','reya','1975-02-11','1995-11-18',54371);
insert into employes values('E05','ansh','1978-04-12','1994-06-29',63456);
insert into employes values('E06','shrey','1980-05-03','1998-1-19',34562);
insert into employes values('E07','shreya','1997-11-13','2014-11-09',60050);
insert into employes values('E08','shinu','1998-12-23','2016-06-19',69801);

select*from employes where DOJ = '2012-03-19';
select emp_id,Ename from employes;
----extract year from DOJ
select* from employes where extract(year from (DOJ))>1997

select*from employes where(extract(year from DOJ))<1997;
----extract month from DOJ
select*from employes where(extract(month from DOJ))=1;

select*from employes where(extract(month from DOJ))>1;

select*from employes where(extract(year from DOJ))<2019; 
-----extract day from DOJ
select*from employes where(extract(day from DOJ))<20;

select*from employes where(extract(day from DOJ))=20;

select *from employes order by(DOJ) desc;
----find date range between

select * from employes where doj between '2014-01-18' and '2015-05-19'


----mod --divided --reminder
select*from employes where mod(salary,2)!=0;
select*from employes where (salary%2)!=0;

----extract birthay

select concat('HAPPY BIRTHDAY TO ',Ename) from employes where extract(DAY from DOB)= 1 and extract(month from DOB) = 2; 
select concat(concat('happy birthday ',Ename),' bhai koo') as 'wish' from employee where day(dob)=2 and month(dob)=9;


--revise year month day

select * from employes where extract (year from doj)='2015'
select * from employes where extract (month from doj)='3'
select * from employes where extract (day from doj)='20'


select * from employes where extract (year from doj)>'2015'
select * from employes where extract (month from doj)<'3'
select * from employes where extract (day from doj)='20'


select concat('happy birtday',ename) from employes where extract(day from doj)='20' and extract (month from doj)='3';