use daku;
create table Customer_demo(
Cust_id varchar(2),
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone numeric(10),
DOB varchar(15),
Payment double (6,2));

insert into Customer_demo values
('A01','Ivan','Rose','SA','6125467','15-JAN-86','800.50'),
('A02','Vandana','Ray','MU','5560379','20-DEC-87','100075'),
('A03','Pramada','Jauguste','DA','4560389','25-JUL-67','500.00'),
('A04','Basu','Navindi','BA','6125401','30-FEB-56','860.00'),
('A05','Ravi','Shridhar','NA',null,'15-FEB-89','500.50'),
('A06','Rukmini','Aiyer','GH','5125274','23-JUL-87','1500.00');
SELECT * FROM Customer_demo;
select Cust_id,Fname,Lname,Area,Phone,DOB,Payment;
select * from Customer_demo;
update Customer_demo set Phone = '6846914' where Cust_id = 'A02';
update Customer_demo set Phone = '9846138' where Cust_id = 'A04';
update Customer_demo set DOB = '23-JUL-87' where Cust_id = 'A03';
update Customer_demo set DOB = '23-apr-83' where Cust_id = 'A05';
select * from customer_demo;
delete from Customer_demo where Cust_id = 'A01';
delete from Customer_demo where Cust_id = 'A02';
delete from Customer_demo;
select * from Customer_demo;
insert into Customer_demo values
('A01','Saikat','Mandi','SA','6125467','15-JAN-86','800.50'),
('A02','Aloke','Mandi','MU','5560379','20-DEC-87','100075'),
('A03','Kartick','Mondal','DA','4560389','25-JUL-67','500.00'),
('A04','Arindam','Mondal','BA','6125401','30-FEB-56','860.00'),
('A05','Koushik','Dey','NA',null,'15-FEB-89','500.50'),
('A06','Arghya','Ghosh','GH','5125274','23-JUL-87','1500.00');
update Customer_demo set Phone = '45611119' where Phone = null;
delete from Customer_demo where Phone = '5560379'; 
