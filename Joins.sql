use daku;
drop table order_table;
drop table customer_table;
#table creation
create table customer_table(
customerid int primary key,
customername varchar(20),
orderdate date
);

create table order_table(
order_id int primary key,
oderdate date,
quantity int,
price numeric(5,2),
cid int, foreign key (cid) references customer_table(customerid)
);

#inner join 
select customer_table.customername, order_table.oderdate from customer_table inner join
order_table on customer_table.customerid = order_table.cid;
#or 
select customername, orderdate from customer_table inner join
order_table on customer_table.customerid = order_table.cid;
#or 
select customername, orderdate from customer_table inner join customer_table where
customer_table.customerid = order_table.cid;
#leftouterjoin
select customer_table.customername ,customerid, orderdate from customer_table right join
order_table on customer_table.customerid = order_table.cid;
#foreign key
alter table order_table add foreign key (cid) references customer_table(customerid);
#foreignkey while table creation

#cross join
select * from customer_table cross join order_table;
#self join
select S1.sname,S2.saddr and S1.id<>S2.id order by S1.id;

-- #subquery
-- select * from emp where emp_id in (select emp_id from emp where working_hour>10);
-- select * from emp where emp_id in (select emp_id from emp where salary>1200);
-- select * from emp where salary = (select max(salary) from emp);

#Any 
select customerid, customername from customer_table
where customerid > any (select cid from order_table);
#All
select customerid, customername from customer_table
where customerid > all (select cid from order_table);
#not exist
alter table customer_table add customerphone integer;
select customername, customerphone from customer_table where not exists
(select * from order_table where customer_table.customerid = order_table.cid);

