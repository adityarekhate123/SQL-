select * from emp3

select * from emp3 where salary between 50000 and 70000;
select count(*) from emp3 where salary>50000;
select * from emp3 order by salary; 

select * from emp3 order by salary desc;
----aggrigate function
select max(salary )from emp3
select min(salary )from emp3
select avg(salary )from emp3
select max(salary )from emp3
select sum(salary )from emp3

---salary update
select max(salary+1000 )as new_salary from emp3
select max(salary-1000 )as new_salary from emp3


