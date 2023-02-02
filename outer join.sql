select * from emp3
select * from department3


----left join =left outer join
select * from emp3 e
left outer join department3 d on e.dept_id=d.dept_id order by emp_id
----left join =inner join +any left out data from left table
select * from emp3 e
left join department3 d on e.dept_id=d.dept_id order by emp_id

----right join =right outer join 
select * from emp3 e right join department3 d
on e.dept_id=d.dept_id
----right join=inner join + any left out data from right table
select * from emp3 e right outer join department3 d
on e.dept_id=d.dept_id


-----full outer join 

select * from emp3 e full outer join department3 d
on e.dept_id=d.dept_id

---full outer join =table1 + table2 (all record from both table)