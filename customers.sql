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
modes varchar(255));

insert into customer values(1,'Mary','Jonas',5),
(2,'Linda','Smith',7),
(3,'Madan','Mohan',8),
(4,'Bary','Williams',6);

insert into payment values(1,60,'Cash'),
(2,30,'Credit card');

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

drop table cats;

insert into cats values(100,'Agni'),
(200,'Agni'),
(500,'Dharti'),
(700,'Dharti'),
(200,'Vayu'),
(300,'Vayu'),
(500,'Vayu');

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

/* */
