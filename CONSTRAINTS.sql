-- Contraints

create database naveen_varma;

-- DEFAULT
CREATE TABLE EMPL(ID INT , NAME VARCHAR(50), AGE INT, DEPT VARCHAR(50) DEFAULT 'NA');
DESC EMPL;

-- UNIQUE
CREATE TABLE EMPLO(ID INT UNIQUE, NAME VARCHAR(50), AGE INT, DEPT VARCHAR(50) DEFAULT 'NA');
DESC EMPLO;

CREATE TABLE EMPLOY(ID INT, NAME VARCHAR(50), AGE INT, DEPT VARCHAR(50) DEFAULT 'NA', MOBILE_NO CHAR(10), CONSTRAINT U UNIQUE(ID, MOBILE_NO));
DESC EMPLOY;

-- NOT NULL
CREATE TABLE STUDENTS(ID INT NOT NULL, NAME VARCHAR(50), AGE INT, EMAIL VARCHAR(50), MOBILE_NO CHAR(50) UNIQUE);
DESC STUDENTS;

-- CHECK FOR SINGLE CONDITION
CREATE TABLE HAHAA(ID INT NOT NULL, AGE INT CHECK(AGE>18), DEPT VARCHAR(50), SALARY DECIMAL(10,2));
DESC HAHAA;

-- CHECK FOR MULTIPLE CONDITION
CREATE TABLE HELLO(ID INT NOT NULL, AGE INT, DEPT VARCHAR(50), SALARY DECIMAL(10,2), CONSTRAINT CHK CHECK(AGE>18 AND SALARY= 1000000));
DESC HELLO;

-- PRIMARY KEY--It does not contains null vaules and also it as unquie values
CREATE TABLE NAVEEN(ID INT PRIMARY KEY, AGE INT, DEPT VARCHAR(50), SALARY DECIMAL(10,2), CONSTRAINT CH CHECK(AGE>18 AND SALARY= 1000000));
desc naveen

-- FOR MULTIPLE COLUMNS
CREATE TABLE COURSES(ID INT, NAME VARCHAR(50), COURSE VARCHAR(50), EMAIL VARCHAR(50), MOBILE_NO CHAR(10), CONSTRAINT PK PRIMARY KEY(ID, COURSE));
DESC COURSES;