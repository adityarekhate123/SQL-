
----diiference between where and having
select * from employes

select * from emp3 where salary>50000


----when you agrrigating columns you have to use group by clause 
-------------------------and when you use group by you have to use having caluse for condition 

select emp_id,
max(salary) as max_salary
from emp3 
group by emp_id
having max(salary) >50000

----use agg-- where --group by--having
-----in this we have to sort first where then we have to apply having
select emp_id,
(avg(salary),0) 
from emp3 
where salary >10000 
group by emp_id 
having avg(salary)>12000
------example 2

select emp_id, avg(salary) as avg_salary from emp3
where manager_id>'m3'
group by emp_id
having  avg(salary)>12000


