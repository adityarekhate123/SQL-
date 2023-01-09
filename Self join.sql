----self join 
--in this we cover two important questions

select * from emp1

create table manager(
emp_id int,
emp_name varchar(15),
salary int,
manager_id int
);
 
 select * from manager
 select 
 from manager employee_name
 join manager manager_name
 on employee_name.emp_id= manager_name.manager_id
 
 alter table manager rename to emps
 
 select * from emps
---display the employee name and there manager useing self join

select e.emp_name as employee,m.emp_name as manager
from emps e
inner join emps m
on e.manager_id=m.emp_id


----display the the employee whos salary is gretter than there manager salary
select e.emp_name,m.emp_name as manager,e.salary as emp_salary ,m.salary as mgr_salary
from emps e
inner join emps m
on e.manager_id=m.emp_id
where e.salary >m.salary

----display the the employee whos salary is less than there manager salary

 select e.emp_name,m.emp_name as manager_name,e.salary as emp_salary,m.salary as mgr_salary
 from emps e
 inner join emps m
 on e.manager_id=m.emp_id  ----remember emp table manager id and manager table emp_id 
 where e.salary< m.salary
 