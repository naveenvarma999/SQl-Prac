-- we are creating smaller table and get reference based on similar column is known as referential integrity
-- FOREIGN KEY
-- Same column used in another table is know as foreign key

CREATE TABLE PERSONS(P_ID INT PRIMARY KEY , NAME VARCHAR(50),LAST_NAME VARCHAR(50), AGE INT);
CREATE TABLE ORDERS(O_ID INT PRIMARY KEY, O_NUM INT, P_ID INT,FOREIGN KEY(P_ID) REFERENCES PERSONS(P_ID) );

-- MULTIPLE FOREIGN KEY
CREATE TABLE PERSON(P_ID INT PRIMARY KEY , NAME VARCHAR(50),LAST_NAME VARCHAR(50), AGE INT);
CREATE TABLE ORDERS1(O_ID INT , O_NUM INT PRIMARY KEY, P_ID INT,FOREIGN KEY(P_ID) REFERENCES PERSONS(P_ID));
CREATE TABLE ORDERS2(O INT PRIMARY KEY, O_NUM INT,P_ID INT, CONSTRAINT FK1 FOREIGN KEY(O_NUM) REFERENCES ORDERS1(O_NUM),CONSTRAINT FK2 FOREIGN KEY(P_ID) REFERENCES PERSON(P_ID));


-- AUTO INCREMENT - ITS APLLIED TO ONLY PRIMARY KEY COLUMN
CREATE TABLE STUDENTS(S_NO INT PRIMARY KEY AUTO_INCREMENT , NAME VARCHAR(50), MOBILE_NO CHAR(10), EMAIL VARCHAR(50));
ALTER TABLE STUDENTS auto_increment = 101;
