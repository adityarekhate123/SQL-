---create student table
create table students(
id int,
std_name varchar(25),
gender varchar(10),
enrollment_no int,
std_fee int,
stream varchar(10)
);
drop table students

----insert the values in the students table

insert into students values(1,'ravi','male',22,22567,'commerce');
insert into students values(2,'shreyansh','male',24,27290,'science');
insert into students values(3,'abhi','male',30,32567,'art');
insert into students values(4,'satya','male',27,52567,'commerce');
insert into students values(5,'shweta','female',32,92567,'science');
insert into students values(6,'dodo','female',19,82567,'commerce');
insert into students values(7,'ravika','female',49,77567,'art');

---show all record from students table
select * from students;

---feth the student name and there fees
select std_name,std_fee from students;

---fetch the different streams from table
select distinct stream from students;
---show the record of that student have fees greater than 20000
select * from students where std_fee>20000;

select std_name from students where std_fee>20000; 

---show the record of that students fees between 20000 and 30000
select * from students where std_fee> 20000 and std_fee< 30000;