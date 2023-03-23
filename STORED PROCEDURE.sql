

----CREATE SIMPLE STORED PROCEDURED FOR ONE QUERY

create procedure literacyhigh
as
begin
select * from data1 where Literacy >97
end

literacyhigh

------this query run in sql server
---------in this i have created a stored procedures for different 4 query
-----------first of all i have define all query (run all query one by one)



---display all the record from the table

select * from EMPLOYEE

----departmentwise max salary

select distinct empcode,EmpFName,deptcode,max(salary)over(partition by deptcode) as max_sal from EMPLOYEE

----department wise max salary with unique rank (dense rank)

select empcode,empfname,deptcode,salary,DENSE_RANK()over(partition by deptcode order by salary desc) as dnk from EMPLOYEE

----max salary with employee name

select empfname ,max(salary) from EMPLOYEE group by empfname order by max(salary) desc

----min salary with employee name
select top 1 empfname,min(salary) over()from EMPLOYEE
--



---CREATE A STORE PROCEDURE FOR MULTIPLE QUERY 
------IN THIS we has STORE WE PUT 4 QUERY


create procedure MULTIPLE_QUERY
as 
begin

----show all record from the table
select * from EMPLOYEE

----max salary by desending order
select empfname ,max(salary) as max_salary from EMPLOYEE group by empfname order by max(salary) desc---1

---name of that whos taking min salary
select empfname,min(salary) as min_salary from EMPLOYEE group by empfname order by min(salary)---2

----max salary by departmentwise i give them a rank 
select empcode,empfname,deptcode,salary,DENSE_RANK()
over(partition by deptcode order by salary desc) as dnk from EMPLOYEE---3

----count the employe by departmentwise----4
select deptcode,count(empcode) as count_emp from EMPLOYEE group by DEPTCODE

end


---YOU CAN SEE ALL THAT QUERY BY SIMPLY EXECUTEING ----> MULTIPLE_QUERY  <----keyword
 MULTIPLE_QUERY


 ----you can drop procedure 

 drop procedure nashikinfo

 drop procedure maharashtra

