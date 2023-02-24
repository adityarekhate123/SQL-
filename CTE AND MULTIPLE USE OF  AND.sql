select * from sample_table

select age ,max(salary) as max_sal from sample_table group by age having max(salary)>100000 and age>29

-----use of multiple and in having  caluse 3 AND
select age,name,max(salary) as max_sal from sample_table group by age ,name
having age between 30 and 40 and max(salary)>100000 and name='henry'


SELECT * FROM sample_table


-----WE CAN USED MULTIPLE OF AND IN OUR QUERY
SELECT AGE ,NAME,CITY ,MAX(SALARY) AS MAX_SAL FROM sample_table GROUP BY AGE ,NAME,CITY 
HAVING MAX(SALARY) >80000 AND AGE  BETWEEN 30 AND 40 AND NAME='HENRY' ORDER BY MAX(SALARY) DESC  

-----WITH CTE

WITH CTE_DATA AS (SELECT AGE ,NAME,CITY ,MAX(SALARY) AS MAX_SAL FROM sample_table GROUP BY AGE ,NAME,CITY 
HAVING MAX(SALARY) >80000 AND AGE  BETWEEN 30 AND 40 )
SELECT * FROM CTE_DATA WHERE NAME =('FRANK') 

SELECT * FROM sample_table

