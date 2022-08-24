use daku;      #database

#creating employee table and adding columns
create table emp(
emp_id int,
emp_name varchar(10),
address varchar(20));

#creating department table and adding columns
create table dept(
emp_id int,
dept_name varchar(20),
salary int);

#inserting values into employee table
insert into emp values
(1,'Rakesh','Arambagh'),
(2,'Amal','Arambagh'),
(3,'Ritu','Arambagh'),
(4,'Tukai','Arambagh'),
(5,'HAlima','Arambagh');

#inserting values into department table
insert into dept values
(1,'Jr. engineer',14000),
(2,'Jr. engineer',11000),
(3,'Jr. engineer',12400),
(4,'Jr. engineer',10500),
(5,'Jr. engineer',14500);

#displaying employee table
select * from emp;

#displaying department table
select * from dept;

#altering 
alter table dept rename column salary to basic_salary;
alter table dept rename column dept_name to designation;

#updating 
update dept set designation='traniee' where basic_salary='100000';
update dept set designation='traniee' where designation='Jr. engineer';

#deleting using delete command
delete from emp where emp_name='akash';

#deleting using truncate command
truncate table emp;

#deleting using drop command
drop table emp;

#displaying employee table
select * from emp;

#displaying department table
select * from dept;

