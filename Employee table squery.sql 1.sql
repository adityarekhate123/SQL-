select * from emp3

---write a quary to fetch 2nd highest salary
select * from emp3 order by salary desc limit 5----2nd 3rd 4th 5th

----2nd highsted salary
select max(salary) from emp3 where salary <(select max(salary) from emp3)

select * from (select *,rank()over(partition by dept_id order by salary desc) as rnk from emp3) e where rnk=2

----department wise highest salary

select emp_id,dept_id, max(salary) from emp3 group by dept_id,emp_id order by max(salary)desc

----get first 4 record without using where
select * from emp3 limit 4

----get dept where max employe are working

select dept_id,count(emp_id) as emp_id_count from emp3 group by dept_id

----find out the name aditya 

select * from emp3 where emp_name ilike '%aditya%'

---find the perticular data from column
select * from emp3 where dept_id in('D10')

