-- OPERATORS
-- 1. ARITHEMATIC OPERATORS -----> + , - , * , / , %
-- 2. LOGICAL OPERATORS ------>  AND OR NOT

-- AND -- ONLY GIVES THE O/P WHEN ALL CONDITIONS ARE TRUE
-- 0 0 = 0
-- 0 1 = 0
-- 1 0 = 0
-- 1 1 = 1
SELECT * FROM EMP WHERE DEPT ='DATA SCIENTIST' AND SALARY = 500000;  

-- OR  GIVES O/P ANY ONE CONDITION IS TRUE
-- 0 0 = 0
-- 0 1 = 1
-- 1 0 = 1
-- 1 1 = 1
SELECT * FROM EMP WHERE DEPT ='DATA MINING' OR SALARY = 100000; 

-- NOT -- EXCLUDING THE DATA
SELECT * FROM EMP WHERE NOT (DEPT ='DATA MINING' OR DEPT ='DATA SCIENTIST');
SELECT * FROM EMP WHERE NOT DEPT='DATA SCIENTIST' AND ID=1 OR ID = 2 AND SALARY =500000;


-- RELATIONAL OPERATORS  ---->   < , > , >= , <=
SELECT * FROM EMP WHERE SALARY > 400000;


-- COMPARISION OPERATORS  = , != OR <>
SELECT * FROM EMP WHERE SALARY = 400000;
SELECT * FROM EMP WHERE DEPT != 'DATA SCIENTIST';

-- CONCATINATION OPERATORS CONCATE MULTIPLE STRINGS
SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS FULL_NAME FROM EMP;

-- SPECIAL OPERATORS  -- IN, NOT IN, BETWEEN, 
SELECT * FROM EMP WHERE ID NOT IN (2);
SELECT * FROM EMP WHERE DEPT IN ('DATA SCIENTIST');

-- BETWEEN OPERATORS
SELECT * FROM EMP WHERE SALARY BETWEEN 100000 AND 600000; 

-- NOT BETWEEN
SELECT * FROM EMP WHERE SALARY NOT BETWEEN 100000 AND 600000; 


-- IS OPERATORS --->USED FOR NULL VALUES
SELECT * FROM EMP WHERE DEPT IS NULL;

-- NOT NULL 
SELECT EMAIL FROM EMP WHERE AGE IS NOT NULL;

-- LIKE OPERATOR ---> FLITERING BASED ON SPECIFIC PATTERN
--  ( % ) Use for more characters 
--  ( - )  use for exact no of character
SELECT * FROM EMP WHERE DEPT LIKE "D%";
SELECT * FROM EMP WHERE DEPT LIKE "__________";
SELECT * FROM EMP WHERE DEPT LIKE "%IST";


-- NOT LIKE
SELECT * FROM EMP WHERE EMAIL NOT LIKE "NA%";
SELECT * FROM EMP WHERE DEPT NOT LIKE ("DA%") AND DEPT NOT LIKE ("DE%");
                        
          