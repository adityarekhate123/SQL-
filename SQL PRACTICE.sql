select distinct e_gender from employee1;
select e_name, e_salary from employee1;
select * from employee1 where e_salary>5000;
select e_name from employee1 where e_salary>7000;
select e_name, e_dept from employee1 where e_age>50;
select * from employee1 where e_salary>3000 and e_age<30;
select * from employee1 where e_salary>3000 or e_age>50;
select * from employee1 where not e_age>30;
select * from employee1 where e_name like 'j%';
select * from branch where e_dept like 'engi%';
select * from employee1 where e_salary like '8%';
select * from emplyee1 where e_salary between 4000 and 9000;
select * from employee1 where e_salary between 5000 and 6000;
/*function*/
select min(e_age) from employee1 group by e_name; 
select max(e_salary) from employee1 ;
select avg(e_salary) from employee1;
select sum(e_salary) from emplyee1;
select count(*) from employee1 where e_gender='m';
select count(*) from employee1 where e_salary between 3000 and 4000;
---/* this is the syntax to pass comment in sql
/*strings functions*/

select ("      hello i myself shreyansh");
select ltrim("      hello i myself shreyansh");
select ("HELLO WORLD HOW YOU DOOING");
select lower("HELLO WORLD HOW YOU DOOING");
select ("hey! whatsup");
select upper("hey! whatsup");
select reverse('hey! whatsup');
select substring('hey! whatsup',6,12); /*123456
					   hey! whatsup
						1234567 */
select * from employee1 order by e_age asc;
select * from employee1 where e_salary between 3000 and 5000 order by e_age desc;
select e_id,e_name from employee1 where e_salary>6000 order by e_id desc;
select avg(e_salary),e_dept from employee1 where e_age>30 group by e_dept order by avg(e_salary) desc;
select avg(e_age),e_dept from employee1 group by e_dept;
select avg(e_salary) from branch;
select e_dept, avg(e_salary) as avg_salary from branch group by e_dept;
select e_dept, avg(e_salary) as avg_salary from branch group by e_dept having avg(e_salary)>60000 order by avg(e_salary);
---Update table
update branch set e_age ='26' where e_name='Aditya';

select * from branch;

delete from branch where e_name='bravo';   /*to delete records row-wise*/

select * from branch;
/*bye see u later*/
insert into branch values(6,'charlie','chennai',47,'male',74625,'engineer'); /*it will add new records(row) to table named as branch*/
select * from branch;
/*it will add new field(column) to table named as branch*/
alter table branch add e_father_name varchar(30);  

select * from branch;
/*it is used to delete fields(column) named as branch*/
alter table branch drop e_father_name; 
select * from branch;
select e_dept, avg(e_salary) as avg_salary from branch group by e_dept having avg(e_salary)>50000 order by avg(e_salary) desc;
select e_dept, e_salary from branch having e_salary between 30000 and 90000 ;
select * from branch having e_age between 20 AND 40 order by e_age asc;
update branch set e_name='rajiv' where e_age='47';
select * from branch;




