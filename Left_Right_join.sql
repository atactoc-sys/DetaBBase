use daku;
create table customer_04 (
Id int,
Name varchar(20),
Salary numeric(8,2),
Age int,
primary key (Id)
);
drop table customer_04;
insert into customer_04 values (101, 'Richie Rich', 50000, 24);
insert into customer_04 values (102, 'Sayan', 40000, 23);
insert into customer_04 values (103, 'Owasim', 40000, 22);
insert into customer_04 values (104, 'Sankhajit', 40000, 24);
insert into customer_04 values (105, 'Akash', 40000, 22);
select * from customer_04;

create table Order_Delivery (
OrderId int,
CustomerId int,
Date date,
Amount numeric(8,2),
foreign key(CustomerId)
references Customer_04(Id)
);
drop table Order_Delivery;

insert into Order_Delivery values (1241, 101, '2022-08-21', 2000);
insert into Order_Delivery values (1561, 102, '2022-08-24', 5000);
insert into Order_Delivery values (3241, 103, '2022-08-25', 6000);
insert into Order_Delivery values (7141, 105, '2022-08-24', 3000);
insert into Order_Delivery values (7141, 105, '2022-08-27', 4000);
select * from Order_Delivery;
select Id, Name, Amount, Date from Customer_04 left join Order_Delivery on Customer_04.Id = Order_Delivery.CustomerId;
select Id, Name, Amount, Date from Customer_04 right join Order_Delivery on Customer_04.Id = Order_Delivery.CustomerId;
