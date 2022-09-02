use daku;
create table employeedemo(
emp_id int,
ename varchar(20),
designation varchar(25),
dept varchar(20),
working_hour numeric,
salary numeric
);
insert into employeedemo values ( 01, 'riya','opt','IT',10,15000);
insert into employeedemo values ( 03, 'riya','opt','IT',10,15000);
insert into employeedemo values ( 05, 'priya','opt head','IT',12,15000);
insert into employeedemo values ( 07, 'rani','mgr','IT',10,15000);
insert into employeedemo values ( 02, 'sweta','lead','IT',15,15000);
insert into employeedemo values ( 06, 'disha','staff','IT',10,5000);
insert into employeedemo values ( 08, 'disha','staff','IT',10,15000);
insert into employeedemo values ( 10, 'sweta','lead','IT',15,25000);
insert into employeedemo values ( 04, 'rani','mgr','IT',10,13000);
insert into employeedemo values ( 09, 'riya','opt','IT',10,2000);
#aggregate function - count
select dept,count(dept) as 'total_emp_in_dept' from employeedemo group by dept;
select ename,count(ename) as 'total_emp' from employeedemo group by ename;
#sum
select dept,sum(working_hour) as 'total_hours' from employeedemo group by dept;
select dept,sum(working_hour) as 'total_hours' from employeedemo where dept = 'IT';
select dept,sum(salary) as 'total_dept_salary' from employeedemo group by dept;
#average
select dept,avg(salary) as 'avg_dept_salary' from employeedemo group by dept;
#min
select ename,dept,min(salary) as 'avg_dept_salary' from employeedemo group by dept;
select ename,dept,min(salary) from employeedemo;
#max
select dept,max(salary) as 'avg_dept_salary' from employeedemo group by dept;
#having
select dept,sum(working_hour) as 'total hours' from employeedemo group by dept having sum(working_hour)>15;
#orderby name
select * from employeedemo order by ename asc;
#orderby designation
select * from employeedemo order by designation;
# order by salary descending order
select * from employeedemo order by salary desc;
# order by salary
select * from employeedemo order by salary;
