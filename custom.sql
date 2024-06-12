create database custom;
use custom;

create table customers(
customerID int primary key,
customerName varchar(50) NOT NULL
);

/* constraints */

create table orders(
orderID  int primary key,
orderNumber int not null,
customerID int,
foreign key(customerID) references
customers(customerID)
);

insert into customers(customerID,customerName)values(1,'John'),(2,'Jane'),(3,'Bob');

insert into orders(orderID,orderNumber,customerID)values(1,101,1),(2,102,2),(3,103,3);

insert into orders(orderID,orderNumber,customerID)values(4,104,4);

delete from customers
where customerID=3;

select * from customers;

select * from orders;

-- set operations

create table emp1(
  empid int  primary key,
  firstname varchar(255),
  country varchar(255)
);
insert into emp1 values(1,'Shubham','India'),
(2,'Aman','Australia');

select country from emp1
union
select country from emp2
order by country;

select country from emp1
union all
select country from emp2
order by country;

select country from emp1
Except
select country from emp2;


select country from emp1
intersect;
select country from emp2;

create table emp2(
  empid int primary key,
  firstname varchar(255),
  country varchar(255)
);
insert into emp2 values(1,'Tommy','England'),
(2,'Allen','France');

insert into emp2 values(3,'Mahesh','India');

/* inner join gives common values from both the tables*/