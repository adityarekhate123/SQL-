create database operator;
use operator;
---CREATE TABLE 
create table SHOP(
f_name varchar(40));
insert into SHOP values('mango');
insert into SHOP values('apple');
insert into SHOP values('banana');
insert into SHOP values('t-shirt');
----create table clothes
create table clothes(
f_name varchar(40));
insert into clothes values('jeans');
insert into clothes values('apple');
insert into clothes values('pant');
insert into clothes values('t-shirt');

---union operator it give all unique value from both table
select * from SHOP union select *  from clothes;

--/*union all operator*/ it igive all values from both table
select * from SHOP union all select * from clothes;
 
---/*except operator*/ it give that values not present in another table
select * from shop except select * from clothes;