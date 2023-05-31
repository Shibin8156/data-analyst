create database SBN;
use sbn;
create table STUDENT(ID varchar(20),NAME varchar(10),MARK int(10));
select * from student;
insert into student values("1","Shibin",91)
describe student;
create table DEPARTMENT (DEPNAME varchar (20),DIVISIONS varchar(20),NO_OF_STUDENTS INT (20));
select * from department;
insert into department values ("commerce","c1",100);
alter table student
add percentage int;
alter table department add aveg int after DIVISIONS;
ALTER TABLE department modify aveg varchar(20);
desc department;