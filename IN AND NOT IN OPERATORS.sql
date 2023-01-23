----for finding perticular data from column which are available

select * from emp3 where emp_id in('E7')

select * from actor where last_name in ('Chase')

select * from actor where first_name in('Grace')

select * from actor where actor_id in(5)

----for finding perticular all data from column except mention data
select * from emp3
where emp_id not in('E7')


select * from actor where last_name not in ('Chase')


select * from actor where first_name not in('Grace')

select * from actor where actor_id not in(5)