-- CASE

 SELECT FIRST_NAME,DEPT,
 CASE
 WHEN SALARY < 200000 THEN "LOW SALARY"
 WHEN SALARY < 500000 THEN "MEDIUM SALARY"
 ELSE "HIGH SALARY"
 END AS SALARY_STATUS
 FROM EMP1;
 
 
 -- 
 SELECT *,
 CASE
 WHEN SALARY < 200000 THEN SALARY + 5000 
 WHEN SALARY < 500000 THEN SALARY + 10000
 ELSE SALARY+ 15000
 END AS BONUS
 FROM EMP1;
 
 
 -- ORDER BY CLAUSE
 SELECT * FROM EMP 
 ORDER BY SALARY DESC;
 
 SELECT * FROM EMP 
 ORDER BY SALARY DESC, DEPT;
 
 
 -- LIMIT --> Used to limit the no of records
 -- OFFSET ---> Skip the rows
 SELECT * FROM EMP 
 ORDER BY SALARY DESC 
 LIMIT 3;
 SELECT * FROM EMP ORDER BY SALARY DESC LIMIT 2 OFFSET 1;
 
 -- OR
  SELECT * FROM EMP 
  ORDER BY SALARY DESC 
  LIMIT 1,3; -- > SKIP ( 1 -- OFFSET) , (3 -- LIMIT)
  
  -- AGGREGATE FUNCTIONS  --> ITS is performed on groups
  -- SUM(), MIN(), MAX(), COUNT(), AUG()
SELECT COUNT(*) FROM EMP;   -- -> IT DOES NOT COUNT NULL
-- OR ---> IN CASE OF DUPLICATE VALUES
SELECT COUNT(DISTINCT(DEPT)) AS TOTAL_DEPT FROM EMP;



-- SUM()
SELECT SUM(SALARY) FROM EMP;

-- MIN()
SELECT MIN(SALARY) FROM EMP;

-- MAX()
SELECT MAX(SALARY) FROM EMP;

-- AVG()
SELECT AVG(SALARY) FROM EMP
SELECT COUNT(*),SUM(SALARY), MIN(SALARY), MAX(SALARY), AVG(SALARY)  FROM EMP;


-- GROUP BY --> GROUPING THE DATA BASED ON SOME AGGREGATE FUNCTIONS
-- TOTAL SALARY DEPT WISE
SELECT AGE,DEPT, SUM(SALARY) FROM EMP GROUP BY AGE,DEPT;
SELECT DEPT, MAX(SALARY) FROM EMP GROUP BY DEPT;


-- HAVING CLAUSE  -- > USED TO FILTER THE DATA BASED ON GROUPS
SELECT DEPT, COUNT(ID)FROM EMP 
GROUP BY DEPT
HAVING COUNT(ID)>1;

SELECT DEPT ,AVG(SALARY) FROM EMP 
GROUP BY DEPT
HAVING AVG(SALARY) > 200000;

SELECT DEPT ,AVG(SALARY) FROM EMP 
WHERE DEPT NOT IN ("DATA SCIENTIST")
GROUP BY DEPT
HAVING AVG(SALARY) > 200000;


SELECT DEPT ,AVG(SALARY) FROM EMP 
WHERE DEPT NOT IN ("DATA SCIENTIST")
GROUP BY DEPT
HAVING AVG(SALARY)> 200000
ORDER BY AVG(SALARY) DESC
LIMIT 1;