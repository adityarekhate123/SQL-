create table emps3(
emp_id varchar(10),
emp_name varchar(15),
salary int,
dept_id varchar,
manage_id varchar(15)
);
select * from emps3

insert into emps3(
emp_id,emp_name,salary,dept_id,manage_id)
values
('E1','Rahul',16000,'D2','M1'),
('E2','Manoj','15000','D1','M1'),
('E3','james','55000','D2','M2'),
('E4','michel','25000','D2','M2'),
('E5','ali','2000','D10','M3'),
('E6','robin','3500','D10','M3');


 create table departments3(
dept_id varchar(10),
dept_name varchar(15)
);

insert into departments3(
dept_id,dept_name)
values('D1','It'),
('D2','Hr'),
('D3','Finance'),
('D4','Admin');

create table manager3(
manager_id varchar(10),
manager_name varchar(15),
dept_id varchar(10)
);

insert into manager3(
manager_id,manager_name,dept_id)
values('M1','prem','D3'),
('M2','shripad','D4'),
('M3','nik','D1'),
('M4','cory','D1');

create table project3(
project_id varchar(10),
project_name varchar(15),
team_meber_id varchar(10)
);


insert into project3(
project_id,project_name,team_meber_id)
values('P1','Data migration','E1'),
('P1','Data migration','E2'),
('P1','Data migration','M3'),
('P2','Etl tool','E1'),
('P2','Etl tool','M4');


SELECT * FROM emps3
SELECT * FROM departments3
SELECT * FROM manager3
SELECT * FROM project3

-----fetch the employee name and depatment name they belong to

select e.emp_name,d.dept_name from emps3 e
inner join departments3 d
on e.dept_id=d.dept_id

---------fetch all the employee name and depatment name they belong to

select e.emp_name,d.dept_name from emps3 e
left join departments3 d
on e.dept_id=d.dept_id

--Basically what happen in left join

---Left join = inner join + any additional record from left table

---------fetch all the department name and employe name they working with

select e.emp_name,d.dept_name from emps3 e
right join departments3 d
on e.dept_id=d.dept_id

--Basically what happen in right join

---Right join = inner join + any additional record from right table

---fetch details of all employee there manager name,there department and the project they work on

select e.emp_name,d.dept_name,m.manager_name,p.project_name
from emps3 e 
left join departments3 d on e.dept_id=d.dept_id----because emps table is in my left side 
join manager3 m on e.manager_id=m.manager_id----it priority of all employee
left join project3 p on e.emp_id=p.team_meber_id---emps is primay table in left side






alter table emps3 rename manage_id to manager_id





 



















