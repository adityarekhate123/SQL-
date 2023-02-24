
----COMMON TABLE EXPRESSION (CTE)---run with cte complex query and find from simple query 
CREATE TABLE sample_table (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50),
  salary INT
);

INSERT INTO sample_table VALUES
(1, 'Alice', 30, 'New York', 50000),
(2, 'Bob', 25, 'Los Angeles', 60000),
(3, 'Charlie', 35, 'Chicago', 70000),
(4, 'David', 40, 'Houston', 80000),
(5, 'Emily', 28, 'Phoenix', 90000),
(6, 'Frank', 33, 'Philadelphia', 100000),
(7, 'Grace', 29, 'San Antonio', 110000),
(8, 'Henry', 38, 'San Diego', 120000),
(9, 'Isabella', 27, 'Dallas', 130000),
(10, 'Jacob', 32, 'San Francisco', 140000);


select * from sample_table
---retrive all record from sample table

with cte_sample as ( select * from sample_table)
select * from cte_sample


---retrive record  where the age is gretter than or equwal to 30

with cte_data as ( select * from sample_table where age >=30)
select * from cte_data

----give those record whose salary =70000 WHICH AGE GRETTER THAN 30
with cte_data as ( select * from sample_table where age >=30)
select * from cte_data where salary =70000

----give those emp whose belong from 'dallas'

with cte_data as (select * from sample_table)
select * from cte_data where city ='dallas'

------find salary less than 70000 BY DEPARTMENT WISE 
with cte_data as(select age,max(salary) as max_sal from sample_table group by age )-----CTE QUERY 
select * from cte_data where max_sal<70000----WE FIND THIS FROM CTE 

select * from (select *, DENSE_RANK() over(order by salary desc) as dsnk from sample_table) x
where x.dsnk=5

----find 5th highest salary
with cte_data as(select *, DENSE_RANK() over(order by salary desc) as dsnk from sample_table)
select * from cte_data where dsnk=5


with new_cte as (select * from emp3 where emp_name='aditya')-----inneer query
select count(*) from new_cte ---outer query


select * from empl
----IN THIS CTE WE JUST FIND TOP 2 RECORD WITH NO CONDITION 
with raja as(select department, max(salary) as ma_sal from empl group by department )
select top 2 DEPARTMENT from raja


select *from sample_table
----find that employee name who taking max salary 

with cte_data as (select name, max(salary) as salary from sample_table group by name)
select name from cte_data where salary=140000

-----first off all we find max salary after that we gone find from min salary ---
----by cte we find max(salary)--from record we find min salary

--age wise 
with cte_data as (select age ,max(salary) as max_sal from sample_table group by age )
select min(max_sal) as min_sal from cte_data


select * from  sample_table

---
with cte_data as (select age,max(salary) as max_sal from sample_table group by age)
select age,max_sal from cte_data where age ='29'


with cte_data as (select * from sample_table where age between 35 and 50)
select * from cte_data where salary =80000

with cte as (select * from sample_table where salary between 50000 and 80000)
select name,salary from cte where name ='david'
