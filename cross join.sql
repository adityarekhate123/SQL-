select * from employee-----24
select * from department---5 record


----department each record with all record of employee table  means 5*24=120
select e.*,d.* from employee e,department d
----OR
select e.*,d.* from employee e cross join department d
-------OR
select * from employee,department
----cross join =--@it take one record of department table and join with all record of employee table
--------------------@it take 2nd record of department table and join all record of employee table
-----------------------@it take 3rd record of department table and join all record of employe table 
---------------------------make combination like this to entire record of department table