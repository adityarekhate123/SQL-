create table employee1(
e_id int, e_name varchar(50),e_gender varchar(10),
e_age int, e_salary int, e_dept varchar(50),
primary key(e_id)
);
drop table Employee1
select * from employee1;
select e_age from employee1;


insert into employee1 values(2,'ravi','m',22,3000,'react module');
insert into employee1 values(3,'rashika','f',23,4000,'data analyst');
insert into employee1 values(4,'sneha','f',21,5000,'engineer');
insert into employee1 values(5,'shanaya','f',21,5000,'engineer');
insert into employee1 values(6,'ram','m',22,3300,'module'); 
insert into employee1 values(7,'rashal','f',23,4400,'data admisitration');

select * from employee1;
---fetch minimum age from the table
select min(e_age) from employee1;

select min(e_name) from employee1;
select min(e_salary) from employee1;
select max(e_salary) from employee1;
select max(e_age) from employee1;
select count(*) from employee1 where e_gender='m';
select count(*) from employee1 where e_gender='f';
select count(*) from employee1 where e_salary>4000 and e_salary<5000;
select count(*) from employee1 where e_salary between 7000 and 9000;
select sum(e_salary) from employee1;
select sum(e_age) from employee1;
select avg(e_salary) from employee1;
select avg(e_age) from employee1;
---distinct
select distinct e_gender from employee1;
select distinct e_age from employee1;


