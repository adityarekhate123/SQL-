select * from employee;

---find maximum salary
select max(salary) from employee; 
---find the employee name and there department name
select emp_name,dept_name from employee;
---find the deparment wise maximum salary salary
select dept_name,max(salary) from employee group by dept_name
---find 2nd highest salary
select emp_name,salary from employee order by salary desc limit 2
  ---OR
select max(salary) from employee where salary not in(select max(salary) from employee)