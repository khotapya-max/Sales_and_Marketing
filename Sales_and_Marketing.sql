create database Sales_and_marketing
use Sales_and_marketing

select * from branches

create table branches (
branchID int primary key,
branchNAME varchar(100),
location varchar(100)
)

select * from employee
--2
create table employee (
employeeID int primary key,
name varchar (100),
position varchar (50),
branchID int, 
foreign key (branchid) references branches (branchId)
)

select * from customer
create table customer(
customerID int primary key ,
name varchar(100),
email varchar(100),
phone varchar(15)
)

select * from product
--4
create table product (
productID int primary key,
productNAME varchar(100),
category varchar(50),
price decimal(10,2)
)

select * from inventory
--5
create table inventory (
branchID int ,
productID int ,
quantity int ,
primary key(branchID , productID),
foreign key(branchID) references branches (branchID),
foreign key(productID) references product (productID))


select * from saless
--6
create table saless (
salesID int primary key ,
customerID int,
employeeID int,
branchID int,
saledate date ,
totalamount decimal(10,2),
foreign key (customerID) references customer (customerID),
foreign key (employeeID) references employee (employeeID),
foreign key (branchID) references branches (branchID))


select * from salesDetails
--7
create table salesDetails (
salesID int,
productID int,
quantity int ,
subtotal decimal(10,2),
primary key (salesID ,productID),
foreign key (salesID) references saless (salesID),
foreign key (productID)references product(productID))

insert into branches values 
(1,'mainBranch','cairo'),
(2,'mallBranch','giza'),
(3,'cityCenter','alexandria')


insert into employee values 
(101,'ali hassan','cashier',1),
(102,'sarah nabil','manger',1),
(103,'mostafa gamal','sales rep',2),
(104,'nour el din','cashier',2),
(105,'Hanan said','sales rep',3),
(106,'omar fathy','cashier',1)


insert into customer values
(201,'mohamed adel','mo.adel@mail.com','0101010101'),
(202,'laila samir','laila.s@mail.com','0102020202'),
(203,'karim hany','karim.h@mail.com','0103030303'),
(204,'dina mostafa','dina.m@mail.com','0104040404'),
(205,'khaled youssef','khaled.y@mail.com','0105050505'),
(206,'yara magdy','yara.m@mail.com','0106060606')


insert into product values 
(301,'laptop hp','electronics',15000.00),
(302,'iphone 13','electronics',22000.00),
(303,'desk chair','furniture',1800.00),
(304,'smart watch','electronics',3500.00),
(305,'backpack','accessories',450.00),
(306,'office desk','furniture',3500.00),
(307,'bluetooth headset','electronics',750.00) 

select * from inventory

insert into inventory values 
(1,301,10),(1,302,5),(1,303,7),(1,305,6),
(2,301,2),(2,304,10),(2,305,15),(2,306,3),
(3,302,3),(3,303,4),(3,305,8),(3,307,9)


select * from saless

insert into saless values
(401,201,101,1,'1/4/2024',18000.00),
(402,202,103,2,'3/4/2024',450.00),
(403,203,104,2,'5/4/2024',3500.00),
(404,204,105,3,'6/4/2024',4000.00),
(405,205,106,1,'7/4/2024',750.00),
(406,206,103,2,'8/4/2024',22500.00)

select * from salesDetails

insert salesDetails values
(401,301,1,15000.00),
(401,303,1,1800.00),
(401,305,2,1200.00),
(402,305,1,450.00),
(403,304,1,3500.00),
(404,303,2,3600.00),
(404,305,1,400.00),
(405,307,1,750.00),
(406,302,1,22000.00),
(406,305,1,500.00)