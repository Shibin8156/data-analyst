use da;
create table student(id varchar(25),name varchar(10),mark int(5));
create table subject(sid int,subname varchar(20));

-- INSERT QUERY
insert into student values('A1','AMJAD',90);
insert into subject values(101,'Physics');

select * from students;
select * from subject;
show tables;
desc subject;

-- ALTER 
alter table subject add dep varchar(30);

-- after a column 
alter table subject add staffid int after sid;

-- first position  
alter table subject add depid int first;


-- modify
alter table subject modify depid varchar(100);

-- drop column
alter table subject drop depid;

-- change column name
alter table subject change subname subjname varchar(30); 

-- rename table
alter table student rename to  students; 

-- drop table
drop table students; 

 -- insert into table
 insert into students(id,mark,name) values('A2',96,'Ramu');
 
 insert into students(id,mark,name) values('A2',96,'Ramu'),('A6',76,'Raju'),('A9',56,'Aju');
 
 
 -- select query
 select * from students;
 select name,mark from students;
 select * from students where mark>50;
 select * from students where mark>90 or grade='A';
 select * from students where mark=90 and name='AMJAD';
 
-- Update query
update students set name='Fidha' where id='A2';

-- Delete query
delete from students where mark=76; 


-- Auto Increment 
create table officers(officerid int not null auto_increment primary key,officername varchar(30),address varchar(20));
insert into officers(officername,address) values('Amjad','CLT'),('Raju',"TVM");
select * from officers;
-- To set  Autoincrement starting values use 'auto_increment=5'
alter table officers auto_increment=101;
insert into officers(officername,address) values('Jaya','CLT'),('Rani',"TVM");

-- Where clause with AND and OR
select * from officers where(address='CLT' and officername='Amjad') OR (officerid<100);


-- DISTINCT to remove duplicates
select distinct name,id from students; 
select * from students;
select distinct name from students;

-- ORDER BY(asce and desc)
select * from students where mark>50 order by mark desc;
select * from students where mark>50 order by mark asc;

-- COUNT FUNC
select count(*) from students where mark>50; 
select count(name) from students where mark>50; 
select count(*) from students;

-- AVG
select avg(mark) from students; 

-- MIN
 select min(mark) from students; 
 
 -- MAX
 select max(mark) from students; 
 
 -- SUM

 select sum(mark) from students; 
 
 
 
 -- GROUP BY
 select name,sum(mark) from students group by name;

-- AS (to rename column in o/p)  
select name,sum(mark) as 'Total Mark' from students group by name;
 
 
 -- HAVING clause
 select name,sum(mark) from students group by name having sum(mark)>=90;
 
 
 -- LIMIT restrict no of rows
 select * from students limit 2;



 
-- LIKE operator
-- start with A
select * from students where name like 'A%';

-- end letter A
select * from students where name like '%A';

-- Letter in b/w 
select * from students where name like '%mj%';


-- second letter m 
select * from students where name like '_m%';


-- start with a and have 3 letters atleast
select * from students where name like 'A__%';

-- start with a and end with d
select * from students where name like 'A%d';

-- NOT LIKE
select * from students where name not like 'A%';
 
 


 -- CONSTRAINTS(rules)
 -- NOT NULL 
 create table college(id int not null,cname varchar(30));
 insert into college values(null,'JDT2');
 insert into college(cname) values('ST Marys');

-- UNIQUE
create table colleges(id int unique,coname varchar(30)); 
insert into colleges values(101,'JDT');
insert into colleges values(101,'Farook');
 
 USE SBN;
 
 -- PRIMARY KEY
 -- alter table students add primary key (id)
 create table newtable (name varchar (20) primary key, age int );
insert into newtable values("asus",19),("acer",22);
alter table newtable add primary key (age);   -- ERROORRRRR

create table persons2 (ID int NOT NULL,LastName varchar (255) NOT NULL,FirstName varchar (255),Age int, constraint pk_persons2 PRIMARY KEY(ID,LastName));
desc persons2;

create table persons3 (ID int NOT NULL,LastName varchar (255) NOT NULL,FirstName varchar (255),Age int, constraint PRIMARY KEY(ID,LastName));
drop table persons3;

create table persons3 (ID int NOT NULL,LastName varchar (255) NOT NULL,FirstName varchar (255),Age int, constraint PRIMARY KEY(ID,LastName));
desc persons3;

-- DROP PRIMARY KEY
--  ALTER TABLE table name DROP primary key;

alter table persons3 drop primary key;

-- FOREIGN KEY
create table table1(ID int primary key,NAME varchar(200));
create table table2(NAME varchar(20) primary key,AGE varchar(20),ID int,foreign key(ID) references table1(ID));
desc table2;

-- CHECK
-- TO LIMIT THE VALUE
create table table4 (name varchar(30),age int,check (age>=18));
insert into table4 values ("rashid",55),("amjad",18);
drop table table5;
insert into table4 values ("shibin",17);  -- erroorrrr
desc table4;

-- DEFAULT constraints
create table table5 (id int,name varchar(30),age int default 18);
insert into table5 (id,name) values (01,"shibin"),(02,"amjad");
select* from table5;

-- IN operator
-- to reduce the use of  multiple OR conditions
-- select * from students where age in(25,26,27,28)
use sbn;
select * from students where MARK in(100,99,96);

-- IS NOT NULL
-- to check the not null value in the expression
-- to ignore null value and get values arent null
-- select * from students where name is not null;
select * from students where percentage is not null;

drop table table2;
select * from techolas1;
select * from students where percentage is not null;

-- IS NULL
-- to check if there is a null value in the expression
-- select *from students where name is null;
insert into students(id,mark,percentage) values (09,null,93.92);
select * from students where name is null;

-- BETWEEN
-- get expression within a range
select * from students where id between 02 and 08;

-- JOIN
-- INNER JOIN
used to connect 2 table, retrieve data from multiple tables. used with select
-- SELECT columns FROM table1 INNER JOIN table2 ON table1.column= table2.column;
create table table10 (id int,name varchar (30));
create table table20 (id int,age int,addr varchar (20));
insert into table10 values(01,"sbn"),(02,"ajd"),(03,"mnu"),(04,"gbn");
insert into table20 values (05,30,"wayanad"),(03,28,"clt"),(02,29,"mlprm"),(04,31,"ekm");
select table10.name,table10.id,table20.age,table20.addr from table10 inner join table20 on table10.id=table20.id;
select table10.id,table10.name,table20.age,table20.addr from table10 inner join table20 on table10.id=table20.id order by table10.name;

-- LEFT JOIN 
select table10.name,table10.id,table20.age,table20.addr from table10 left outer join table20 on table10.id=table20.id;

-- RIGHT JOIN
select table10.name,table10.id,table20.age,table20.addr from table10 right outer join table20 on table10.id=table20.id;

-- SUB QUERY
-- QUERY THAT IS NESTED INSIDE ANOTHER QUERY. 
USE SBN;
create table EMPLOYEES (id int,name varchar(30),salary int,dept_id int);
create table DEPARTMENTS (id int,name varchar (40));
insert into EMPLOYEES  values (1,"A",1000,100);
insert into EMPLOYEES  values (2,"B",5500,101);
insert into EMPLOYEES  values (4,"C",6000,102);
insert into EMPLOYEES  values (3,"C",4000,103);
SELECT * FROM EMPLOYEES;
insert into departments  values (100,"sales");
insert into departments  values (103,"accountant");
insert into departments  values (102,"sales");
insert into departments  values (101,"hr");
insert into departments  values (100,"manager");
SELECT * FROM DEPARTMENTS;
-- SUB QUERY
select name from employees where dept_id=(select id from departments where name="manager");

select name from employees where dept_id=(select id from departments where name="manager");

select name from employees where dept_id=(select id from departments where name="sales");  -- error due to duplication
--   so use in operator
select name from employees where dept_id in (select id from departments where name="sales");

-- merging tables..when tables numbers are match
insert into departments (select id,name from employees);
SELECT * FROM EMPLOYEES;
select salary from employees where id ; 

-- Q & A
create table department1(dept_id int,dept_name varchar (20), location varchar (40));
insert into department1 values (01,"commerce","1st_floor"),(02,"history","2nd_floor"),(03,"science","3rd_floor"),(04,"language","4th_floor");
insert into department1 values (05,"economics","5th_floor"),(06,"geography","6th_floor");
 select * from department1;
 
 create table employees1(emp_id int,first_name varchar (20),last_name varchar (40),email varchar (50),phn_num int,hire_date int,job_id int, department varchar (30));
alter table department1 add primary key (dept_id);
alter table employees1 add foreign key (emp_id)
alter table employees1 modify hire_date date;
 drop table employees1;
create table employees1(emp_id int,dept_id int ,foreign key(dept_id) references department1 (dept_id), first_name varchar (20),last_name varchar (40),email varchar (50),phn_num int,hire_date int,job_id int, department varchar (30));
desc employees1;
alter table employees1 add salary varchar(30);
 select* from employees1;
insert into employees1 values (1,01,"SBN","TK","SBNTK@GMAIL.COM",8156,'2023-02-01',001,"CM",1000);
insert into employees1 values (2,02,"GBN","TK","GBNTK@GMAIL.COM",2255,'2023-02-05',002,"HT",2000);
insert into employees1 values (3,03,"AMJ","P","AMJP@GMAIL.COM",8665,'2022-05-10',003,"LG",4000);
insert into employees1 values (4,04,"BZI","Y","BZIY@GMAIL.COM",9946,'2019-12-16',004,"SC",3000);
insert into employees1 values (5,05,"MNU","OV","MNU@GMAIL.COM",68769,'2020-10-22',005,"CM",8000);
insert into employees1 values (6,06,"SRND","EEP","SRNDEP@GMAIL.COM",9975,'2011-11-06',006,"KT",6000);
 delete FROM EMPLOYEES1;
-- 5
select distinct dept_id from employees1;
-- 6
select first_name,last_name,job_id,salary from employees1 where first_name like 'S%';
-- b
select * from employees1 where first_name like'%B%';
-- 7
use sbn;
select * from employees1 where salary=(select max(salary) from employees1);
-- 8
select * from employees1 order by salary desc limit 1,1;
select* from employees1;
select* from department1;
-- 9
select department,count(*) from employees1 group by department;
-- 10
select year(hire_date),count(*) from employees1 group by year(hire_date);




