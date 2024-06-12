create database customers;
use customers;

create table customer(customerid int primary key,
firstname varchar(255),
lastname varchar(255),
address_id int);

create table payment(customerid int,
foreign key(customerid) references
customer(customerid),
amount varchar(255),
modes varchar(255),
dates date);

drop table customer;
drop table payment;

insert into customer values(1,'Mary','Jonas',5),
(3,'Linda','Smith',7),
(4,'Madan','Mohan',8),
(2,'Bary','Williams',6);


select * from customer;

insert into payment values(1,60,'Cash','2024-4-3'),
(2,30,'Credit card','2024-4-5');

select * from payment;

select * from customer as c
inner join payment as p
on c.customerid=p.customerid;

select * from customer as c
left join payment as p
on c.customerid=p.customerid;


select * from customer as c
right join payment as p
on c.customerid=p.customerid;


select * from customer as c
full outer join payment as p
on c.customerid=p.customerid;

create table cats(new_id int,
new_cat varchar(255)
);

insert into cats values(100,'Agni'),
(200,'Agni'),
(500,'Dharti'),
(700,'Dharti'),
(200,'Vayu'),
(300,'Vayu'),
(500,'Vayu');

select * from cats;
drop table cats;

select new_id,new_cat,
sum(new_id) over(partition by new_cat order by new_id) as "total",
avg(new_id) over(partition by new_cat order by new_id) as "average",
count(new_id) over(partition by new_cat order by new_id) as "count",
min(new_id) over(partition by new_cat order by new_id) as "min",
max(new_id) over(partition by new_cat order by new_id) as "max"
from cats;

select new_id,new_cat,
sum(new_id) over(partition by new_cat order by new_id) as "total",
avg(new_id) over(partition by new_cat order by new_id) as "average",
count(new_id) over(partition by new_cat order by new_id) as "count",
min(new_id) over(partition by new_cat order by new_id) as "min",
max(new_id) over(partition by new_cat order by new_id) as "max"
from cats;

select new_id,new_cat,
sum(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "total",
avg(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "average",
count(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "count",
min(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "min",
max(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "max"
from cats;

select new_id,
row_number() over(order by new_id) as "row_number",
rank() over(order by new_id) as "rank",
dense_rank() over(order by new_id) as "dense rank",
ROUND(percent_rank() over(order by new_id),4) as "percent rank"
from cats;

select new_id,
first_value(new_id) over(order by new_id) as "first_value",
last_value(new_id) over(order by new_id) as "last_value",
lead(new_id) over(order by new_id) as "lead",
lag(new_id) over(order by new_id) as "lag"
from cats;

select new_id,
lead(new_id,2) over(order by new_id) as "lead_by2",
lag(new_id,2) over(order by new_id) as "lag_by2"
from cats;