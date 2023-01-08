---fetch employee details from branch table
select e_id, e_name, e_salary from branch;

---fetch unique employee name from branch table
select distinct e_name from branch;

select * from EMPLOYEES where job='PRESIDENT'
select * from EMPLOYEES;
---concatenation
select  empfname || emplname as full_name from EMPLOYEES;
---AND 
select * from EMPLOYEES where empcode >9000 and salary <7000;
--OR
select * from EMPLOYEES where empcode >9400 OR salary <7000;
--NOT
select * from EMPLOYEES where NOT salary >7000;
---BETWEEN
select * from EMPLOYEES where salary between 5000 and 7000
---LIKE
select * from EMPLOYEES where empfname like 'M%';
---ILIKE MATCH FOR CASEINSENSITIVE
select * from EMPLOYEES where empfname like 'M%';
---last name serch for d
select * from EMPLOYEES where empfname ilike '%d';
----Mid name search for A
select * from EMPLOYEES where empfname ilike '%A%';
---2ND character serch for e
select * from EMPLOYEES where empfname ilike '_e%';
---5th character serch for e
select * from EMPLOYEES where empfname ilike '____e%';


