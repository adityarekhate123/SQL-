create table department(
d_id int,
d_name varchar(50),
d_location varchar(50)
);
insert into department values(1,'analytics','mumbai');
insert into department values(2,'engineer','chennai');
insert into department values(3,'technology','delhi');
insert into department values(4,'sales','mumbai');
insert into department values (5,'operation','ghaziabad');
insert into department values (6,'custom','chennai');
insert into department values(7,'fashion design','mumbai');
insert into department values (8,'service','noida');

                   /*inner join*/---matching record from both table 

select * from emp3
select * from department3

select * from emp3 e inner join department3 d
on e.dept_id=d.dept_id;
                    /*left join */----all record come from left table and matching record from right table
select * from emp3 e left join department3 d
on e.dept_id=d.dept_id
order by emp_id;                   
                    /*Right join */---all record come form right tabl and matching record from left table
select * from emp3 e right join department3 d
on e.dept_id=d.dept_id
order by emp_id;
-------------------full outer join
select * from emp3 e full outer join department3 d
on e.dept_id=d.dept_id
order by emp_id;



      







