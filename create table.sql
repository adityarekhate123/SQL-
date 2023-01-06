---create table student
create table student(
std_id int,
std_name varchar(30),
std_address varchar(40),
primary key (std_id));

---insert values in student table

insert into student values(1,'john','mumbai');
insert into student values(2,'jeff','chennai');
insert into student values (3,'anne','pune');
insert into student values(4,'shrey','ghaziabad');

select * from student;
---suppose we have to add another ids also in same table

insert into student values(5,'jeff','chennai');
insert into student values(6,'ajay','ghaziabad');
insert into student values(7,'shrey','banglore');

