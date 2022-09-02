use daku;
drop table staff;
drop table payment;

#creating staff table 
create table staff(
id int primary key,
staff_name varchar(25),
age integer,
address varchar(10),
package numeric(7,2)
);

#creating payment table
create table payment(
payment_id varchar(2) primary key,
staff_id int,
amount numeric(7,2),
foreign key payment(staff_id) references staff(id)
);

#inserting valuse
insert into staff values
(1, 'amit', 32, 'kolkata', 10000),
(2, 'amit', 35, 'kolkata', 12000),
(3, 'akash', 29, 'mumbai', 15000),
(4, 'salman', 26, 'kolkata', 10000),
(5, 'rohit', 24, 'hariyana', 11000);

#inserting values
insert into payment values
('p1', 1, 10000),
('p2', 2, 12000),
('p3', 3, 15000),
('p4', 4, 10000),
('p5' ,5, 11000);

#displaying both tables
select * from staff;
select * from payment;

select staff_id,staff_name, age, amount from staff s, payment p where s.id=p.staff_id;
